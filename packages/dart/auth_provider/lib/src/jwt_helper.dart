import 'dart:convert';
import 'dart:typed_data';

import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:uuid/uuid.dart';
import 'package:pointycastle/export.dart' as pce;
import 'package:asn1lib/asn1lib.dart';

import 'iam_client.dart';

/// Helper class for creating and signing JWT tokens.
class JWTHelper {
  /// Signs a payload with the given private key and returns the JWT token.
  static String signPayload({
    required String audience,
    required String tokenId,
    required String privateKey,
    String? keyId,
    String? passphrase,
    dynamic additionalPayload,
  }) {
    final issueTimeInSeconds = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final algorithm = JWTAlgorithm.RS256;

    final jwt = JWT(
      {
        'iss': tokenId,
        'sub': tokenId,
        'aud': audience,
        'jti': Uuid().v4(),
        'exp': issueTimeInSeconds + 5 * 60,
        'iat': issueTimeInSeconds,
        if (additionalPayload != null) ...additionalPayload,
      },
      header: {
        'alg': algorithm.name,
        if (keyId != null) 'kid': keyId,
      },
    );

    String privateKeyString = privateKey;

    if (passphrase != null && passphrase.isNotEmpty) {
      final decryptedPrivateKey = _decryptPrivateKey(privateKeyString, passphrase);
      privateKeyString = _privateKeyToPem(decryptedPrivateKey);
    }

    final token = jwt.sign(
      RSAPrivateKey(privateKeyString),
      algorithm: algorithm,
    );

    return token;
  }

  /// Fetches the public key from the IAM client and returns it as an ECPublicKey.
  static Future<ECPublicKey> fetchPublicKey(IamClient iamClient) async {
    final jwk = await iamClient.getPublicKeyJWKS();
    return ECPublicKey.raw(_jwkToPublicKey(jwk));
  }

  static pce.ECPublicKey _jwkToPublicKey(Map<String, dynamic> jwk) {
    if (jwk['alg'] != 'ES256' || jwk['kty'] != 'EC' || jwk['crv'] != 'P-256') {
      throw UnimplementedError('Unsupported algorithm or key type');
    }

    if (jwk['x'] == null || jwk['y'] == null) {
      throw Exception('Invalid public key');
    }

    // Decode base64url-encoded x and y coordinates
    final Uint8List x = base64Url.decode(_addPadding(jwk['x']!));
    final Uint8List y = base64Url.decode(_addPadding(jwk['y']!));

    // Create the EC domain parameters for P-256 (secp256r1)
    final curve = pce.ECCurve_secp256r1();

    // Convert Uint8List to BigInt
    final xBigInt = _decodeBigInt(x);
    final yBigInt = _decodeBigInt(y);

    // Create EC point from x,y coordinates
    final q = curve.curve.createPoint(xBigInt, yBigInt);

    // Create and return the public key
    return pce.ECPublicKey(q, curve);
  }

  static String _addPadding(String value) {
    final padding = (4 - (value.length % 4)) % 4;
    return value + ('=' * padding);
  }

  static BigInt _decodeBigInt(Uint8List bytes) {
    BigInt result = BigInt.zero;
    for (var i = 0; i < bytes.length; i++) {
      result += BigInt.from(bytes[i]) << (8 * (bytes.length - i - 1));
    }
    return result;
  }

  /// Converts the decrypted private key to PEM format.
  static String _privateKeyToPem(Uint8List privateKey) {
    final base64Key = base64.encode(privateKey);
    return '-----BEGIN PRIVATE KEY-----\n$base64Key\n-----END PRIVATE KEY-----';
  }

  /// Derives the encryption key using PBKDF2 from the passphrase.
  static Uint8List _deriveKey(String passphrase, Uint8List salt, int iterations, int keyLength) {
    final keyDerivator = pce.PBKDF2KeyDerivator(pce.HMac(pce.SHA256Digest(), 64))
      ..init(pce.Pbkdf2Parameters(salt, iterations, keyLength));
    return keyDerivator.process(Uint8List.fromList(utf8.encode(passphrase)));
  }

  /// Decrypts an AES-256-CBC encrypted private key.
  static Uint8List _decryptAES256CBC(Uint8List key, Uint8List iv, Uint8List ciphertext) {
    final cipher = pce.PaddedBlockCipher('AES/CBC/PKCS7')
      ..init(false, pce.PaddedBlockCipherParameters(pce.ParametersWithIV(pce.KeyParameter(key), iv), null));

    return cipher.process(ciphertext);
  }

  /// Decrypts an RSA private key that is encrypted with AES-256-CBC using a passphrase.
  static Uint8List _decryptPrivateKey(String encryptedKeyPem, String passphrase) {
    // Decode the PEM-encoded private key
    final base64Key = encryptedKeyPem
        .replaceAll('-----BEGIN ENCRYPTED PRIVATE KEY-----', '')
        .replaceAll('-----END ENCRYPTED PRIVATE KEY-----', '')
        .replaceAll('\n', '');

    final encryptedPrivateKey = base64.decode(base64Key);

    final asn1Parser = ASN1Parser(encryptedPrivateKey);
    final asn1Sequence = asn1Parser.nextObject() as ASN1Sequence;

    // Extract PBES2 parameters
    final pbes2Params = (asn1Sequence.elements[0] as ASN1Sequence).elements[1] as ASN1Sequence;
    final pbkdf2Params = (pbes2Params.elements[0] as ASN1Sequence).elements[1] as ASN1Sequence;

    final salt = (pbkdf2Params.elements[0] as ASN1OctetString).valueBytes!();
    final iterations = (pbkdf2Params.elements[1] as ASN1Integer).intValue!;
    final hmacAlgo = (pbkdf2Params.elements[2] as ASN1Sequence).elements[0] as ASN1ObjectIdentifier;

    // Ensure HMAC algorithm is SHA-256
    if (hmacAlgo.identifier != '1.2.840.113549.2.9') {
      throw ArgumentError('Unsupported HMAC algorithm: ${hmacAlgo.identifier}');
    }

    // Extract AES-CBC IV
    final encryptionParams = (pbes2Params.elements[1] as ASN1Sequence);
    final iv = (encryptionParams.elements[1] as ASN1OctetString).valueBytes!();

    // Extract encrypted private key data
    final encryptedData = (asn1Sequence.elements[1] as ASN1OctetString).valueBytes!();

    // Derive the decryption key from the passphrase
    final key = _deriveKey(passphrase, salt, iterations, 32);

    // Decrypt the private key using AES-256-CBC
    return _decryptAES256CBC(key, iv, encryptedData);
  }
}
