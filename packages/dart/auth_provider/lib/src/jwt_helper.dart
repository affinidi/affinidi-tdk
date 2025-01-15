import 'package:affinidi_tdk_auth_provider/src/iam_client.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:uuid/uuid.dart';
import 'dart:convert';
import 'package:pointycastle/export.dart' as pce;
import 'dart:typed_data';

class JWTHelper {
  static String signPayload({
    required String audience,
    required String tokenId,
    required String privateKey,
    String? keyId,
    String? passphrase, // TODO: Implement passphrase
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

    final token = jwt.sign(
      RSAPrivateKey(privateKey),
      algorithm: algorithm,
    );

    return token;
  }

  static Future<ECPublicKey> fetchPublicKey(IamClient iamClient) async {
    final data = await iamClient.getPublicKeyJWKS();

    if (data['keys'] == null || data['keys'].isEmpty) {
      throw Exception('No keys found in JWKS');
    }

    final jwk = data['keys'][0];

    return ECPublicKey.raw(_jwkToPublicKey(jwk));
  }

  static pce.ECPublicKey _jwkToPublicKey(Map<String, dynamic> jwk) {
    if (jwk['alg'] != 'ES256' || jwk['kty'] != 'EC' || jwk['crv'] != 'P-256') {
      throw UnimplementedError('Unsupported algorithm or key type');
    }

    // Decode base64url-encoded x and y coordinates
    final Uint8List x = base64Url.decode(_addPadding(jwk['x']));
    final Uint8List y = base64Url.decode(_addPadding(jwk['y']));

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
}
