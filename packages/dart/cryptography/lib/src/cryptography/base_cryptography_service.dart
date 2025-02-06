// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:affinidi_tdk_cryptography/src/models/verify_jwt_result.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:cryptography/cryptography.dart' as cryptography;
import 'package:convert/convert.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:bs58/bs58.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:pointycastle/ecc/ecc_fp.dart' as ecc_fp;
import 'package:pointycastle/pointycastle.dart' as pc;
import "package:pointycastle/export.dart" as pce;
import 'package:secp256k1/secp256k1.dart' as secp256k1;

import 'cryptography_abstract.dart';

/// Base class for cryptographic operations. Implements the `CryptographyServiceAbstract` interface.
class BaseCryptographyService implements CryptographyServiceAbstract {
  final _aes256NonceLength = 16;
  final _aes256MacLength = 32;

  final _aes256Algorithm = cryptography.AesCbc.with256bits(
    macAlgorithm: cryptography.Hmac.sha256(),
  );

  final _pbkdf2Algorithm = cryptography.Pbkdf2(
    macAlgorithm: cryptography.Hmac.sha256(),
    iterations: 600000,
    bits: 256, // 256 bits = 32 bytes output
  );

  final _ivLength = 16;
  final _blockSizeBytes = 16;
  final _secureRandom = pce.FortunaRandom();
  final _didMethodSeparator = '++';

  /// Constructor to initialize cryptography service with a secure random seed.
  BaseCryptographyService() {
    _initializeSecureRandomSeed();
  }

  @override
  String getSha256HexFromString(String input) {
    print('Started creating SHA256 HEX from string');
    final hex = getSha256HexFromBytes(utf8.encode(input));

    print('Completed creating SHA256 HEX from string');
    return hex;
  }

  @override
  String getSha256HexFromBytes(List<int> bytes) {
    print('Started creating SHA256 HEX from bytes');
    final hex = crypto.sha256.convert(bytes).toString();

    print('Completed creating SHA256 HEX from bytes');
    return hex;
  }

  @override
  List<int> getRandomBytes(int length) {
    print('Started generating random bytes');

    final random = Random.secure();
    final bytes = List<int>.generate(length, (_) => random.nextInt(256));

    print('Completed generating random bytes');
    return bytes;
  }

  @override
  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  }) async {
    print('Started creating PDKDF2');

    final keyDerivedFromPassword = await _pbkdf2Algorithm.deriveKeyFromPassword(
      password: password,
      nonce: nonce,
    );

    final bytes = await keyDerivedFromPassword.extractBytes();
    print('Completed creating PDKDF2');

    return bytes;
  }

  @override
  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  }) async {
    print('Started encrypting with AES256');

    final nonce = getRandomBytes(_aes256NonceLength);
    final secretKey = await _aes256Algorithm.newSecretKeyFromBytes(key);

    final secretBox = await _aes256Algorithm.encrypt(
      data,
      secretKey: secretKey,
      nonce: nonce,
    );

    final encryptedData = secretBox.concatenation();

    print('Completed encrypting with AES256');
    return encryptedData;
  }

  @override
  Future<List<int>?> Aes256Decrypt({
    required List<int> key,
    required List<int> encryptedData,
  }) async {
    print('Started decrypting with AES256');

    final secretBox = cryptography.SecretBox.fromConcatenation(
      encryptedData,
      nonceLength: _aes256NonceLength,
      macLength: _aes256MacLength,
      copy: true,
    );

    try {
      final decrypted = await _aes256Algorithm.decrypt(
        secretBox,
        secretKey: cryptography.SecretKey(key),
      );

      print('Completed decrypting with AES256');
      return decrypted;
    } on cryptography.SecretBoxAuthenticationError catch (_) {
      print('Failed decrypting with AES256');
      return null;
    }
  }

  @override
  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  }) async {
    final encryptedBytes = await Aes256Encrypt(
      key: key,
      data: utf8.encode(data),
    );
    return hex.encode(encryptedBytes);
  }

  @override
  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  }) async {
    final decryptedBytes = await Aes256Decrypt(
      key: key,
      encryptedData: hex.decode(encryptedData),
    );

    if (decryptedBytes == null) {
      return null;
    }

    return utf8.decode(decryptedBytes);
  }

  @override
  Map<String, dynamic> decodeJwtToken({required String token}) {
    final decodedToken = JwtDecoder.decode(token);
    return decodedToken;
  }

  @override
  String createHash({required String hashSource}) {
    List<int> bytes = utf8.encode(hashSource);
    crypto.Digest digest = crypto.sha1.convert(bytes);

    return digest.toString();
  }

  @override
  String createSha256Hex({required List<int> bytes}) {
    crypto.Digest digest = crypto.sha256.convert(bytes);
    return digest.toString();
  }

  @override
  String createMd5Base64({required List<int> bytes}) {
    crypto.Digest digest = crypto.md5.convert(bytes);
    return base64.encode(digest.bytes);
  }

  @override
  VerifyJwtResult verifyJwt({
    required String jwtToken,
    required String didKey,
  }) {
    try {
      final key = _ecPublicKeyFromDid(didKey);

      final jwt = JWT.verify(
        jwtToken,
        key,
        checkHeaderType: false,
        checkExpiresIn: true,
      );

      return VerifyJwtResult(
        isValid: true,
        isExpired: false,
        errorMessage: '',
        jwtPayload: jwt.payload,
      );
    } on JWTExpiredException {
      return VerifyJwtResult(
        isValid: false,
        isExpired: true,
        errorMessage: 'Jwt is expired',
        jwtPayload: null,
      );
    } on JWTException catch (ex) {
      return VerifyJwtResult(
        isValid: false,
        isExpired: false,
        errorMessage: ex.message,
        jwtPayload: null,
      );
    }
  }

  @override
  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  }) {
    final publicKey = _getRsaPublicKeyFromJwk(jwk);
    final encryptor = pce.OAEPEncoding.withSHA256(pce.RSAEngine());

    encryptor.init(
      true,
      pce.PublicKeyParameter<pce.RSAPublicKey>(publicKey),
    ); // true=encrypt

    return _processInBlocks(encryptor, Uint8List.fromList(data));
  }

  @override
  String encryptToHex(Uint8List key, Uint8List data) {
    final bytes = encryptToBytes(key, data);

    return hex.encode(bytes);
  }

  @override
  Uint8List? decryptFromHex(Uint8List key, String hexStr) {
    final ivAndBytes = hex.decode(hexStr);

    final result = decryptFromBytes(key, Uint8List.fromList(ivAndBytes));

    return result;
  }

  @override
  Uint8List encryptToBytes(Uint8List key, Uint8List data) {
    final iv = _secureRandom.nextBytes(_ivLength);
    final bytes = _aesCbcEncrypt(
      key: key,
      iv: iv,
      paddedPlaintext: _pad(data, _blockSizeBytes),
      enforce256KeyLength: true,
      enforce128BitAlignment: true,
    );

    return Uint8List.fromList([...iv, ...bytes]);
  }

  @override
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes) {
    try {
      final iv = Uint8List.fromList(ivAndBytes.take(_ivLength).toList());
      final bytes = Uint8List.fromList(ivAndBytes.skip(_ivLength).toList());

      final decryptedAndPadding = _aesCbcDecrypt(
        key: key,
        iv: iv,
        cipherText: bytes,
        enforceAssertions: true,
      );

      return _unpad(decryptedAndPadding);
    } catch (error) {
      return null;
    }
  }

  @override
  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  }) {
    final List<int> walletSeedBuff = hex.decode(encryptedSeedHex);
    final nonce = walletSeedBuff.sublist(0, _ivLength);
    final ciphertextAndMac = walletSeedBuff.sublist(_ivLength);
    final key = hex.decode(encryptionKeyHex);

    final decryptedSeed = _aesCbcDecrypt(
      key: Uint8List.fromList(key),
      iv: Uint8List.fromList(nonce),
      cipherText: Uint8List.fromList(ciphertextAndMac),
    );

    final decryptedSeedEncoded = utf8.decode(decryptedSeed);
    final [seed, ...didMethod] = decryptedSeedEncoded.split(
      _didMethodSeparator,
    );

    return seed;
  }

  void _initializeSecureRandomSeed() {
    final seed = Uint8List.fromList(
      List.generate(32, (n) => Random.secure().nextInt(255)),
    );

    _secureRandom.seed(pc.KeyParameter(seed));
  }

  (BigInt x, BigInt y) _ecPointFromDid(String did) {
    if (!did.startsWith("did:key:")) {
      throw "only did:key supported";
    }

    final keyStr = did.split(':')[2];

    if (!keyStr.startsWith('z')) {
      throw "unsupported encoding";
    }

    final compressedWithHeader = base58.decode(keyStr.substring(1));

    if (compressedWithHeader.isEmpty || compressedWithHeader[0] != 0xe7) {
      throw "expected secp256k1 curve";
    }

    final compressed = Uint8List.sublistView(compressedWithHeader, 2);

    if (compressed.length != 33) {
      throw "invalid key length";
    }

    final bigCompressed = _uint8ListToBigInt(compressed);
    final hex = bigCompressed.toRadixString(16).padLeft(66, '0');

    final publicKey = secp256k1.PublicKey.fromCompressedHex(hex);

    return (publicKey.X, publicKey.Y);
  }

  final _b256 = BigInt.from(256);

  BigInt _uint8ListToBigInt(Uint8List compressed) =>
      compressed.fold(BigInt.zero, (a, b) => a * _b256 + BigInt.from(b));

  ECPublicKey _ecPublicKeyFromDid(String did) {
    final (x, y) = _ecPointFromDid(did);

    final params = pc.ECDomainParameters('secp256k1');
    final pcKey = pc.ECPublicKey(
      ecc_fp.ECPoint(
        params.curve as ecc_fp.ECCurve,
        params.curve.fromBigInteger(x) as ecc_fp.ECFieldElement?,
        params.curve.fromBigInteger(y) as ecc_fp.ECFieldElement?,
        false,
      ),
      params,
    );

    return ECPublicKey.raw(pcKey);
  }

  pc.RSAPublicKey _getRsaPublicKeyFromJwk(Map<String, dynamic> jwk) {
    print('Started getting RSA public key from JWK');

    const alg = 'RSAES_OAEP_SHA_256';

    if (jwk['alg'] != alg) {
      throw UnimplementedError('Only alg=$alg is supported');
    }

    final n = BigInt.parse(hex.encode(_base64UrlDecode(jwk['n']!)), radix: 16);
    final e = BigInt.parse(hex.encode(_base64UrlDecode(jwk['e']!)), radix: 16);

    print('Completed getting RSA public key from JWK');

    // print(bu.CryptoUtils.encodeRSAPublicKeyToPem(pc.RSAPublicKey(n, e)));
    return pc.RSAPublicKey(n, e);
  }

  Uint8List _processInBlocks(
    pce.AsymmetricBlockCipher engine,
    Uint8List input,
  ) {
    final numBlocks = input.length ~/ engine.inputBlockSize +
        ((input.length % engine.inputBlockSize != 0) ? 1 : 0);

    final output = Uint8List(numBlocks * engine.outputBlockSize);

    var inputOffset = 0;
    var outputOffset = 0;
    while (inputOffset < input.length) {
      final chunkSize = (inputOffset + engine.inputBlockSize <= input.length)
          ? engine.inputBlockSize
          : input.length - inputOffset;

      outputOffset += engine.processBlock(
        input,
        inputOffset,
        chunkSize,
        output,
        outputOffset,
      );

      inputOffset += chunkSize;
    }

    return (output.length == outputOffset)
        ? output
        : output.sublist(0, outputOffset);
  }

  Uint8List _base64UrlDecode(String input) {
    // Pad the string to a multiple of 4 for correct decoding
    String padded = input.padRight((input.length + 3) ~/ 4 * 4, '=');
    return base64Url.decode(padded);
  }

  Uint8List _aesCbcEncrypt({
    required Uint8List key,
    required Uint8List iv,
    required Uint8List paddedPlaintext,
    bool enforce256KeyLength = false,
    bool enforce128BitAlignment = false,
  }) {
    if (enforce256KeyLength) {
      // enforce 256-bit key length
      assert(256 == key.length * 8);
    } else {
      // allow 128, 192, or 256-bit key lengths
      assert([128, 192, 256].contains(key.length * 8));
    }

    assert(128 == iv.length * 8); // IV must be 128 bits

    if (enforce128BitAlignment) {
      // padded plaintext is a multiple of 128 bits
      assert(paddedPlaintext.length * 8 % 128 == 0);
    } else {
      // padded plaintext is exactly 128 bits
      assert(128 == paddedPlaintext.length * 8);
    }

    // Create a CBC block cipher with AES, and initialize with key and IV

    final cbc = pce.CBCBlockCipher(pce.AESEngine())
      ..init(
        true,
        pc.ParametersWithIV(pc.KeyParameter(key), iv),
      ); // true=encrypt

    final cipherText = Uint8List(paddedPlaintext.length); // allocate space

    var offset = 0;

    while (offset < paddedPlaintext.length) {
      offset += cbc.processBlock(paddedPlaintext, offset, cipherText, offset);
    }

    assert(offset == paddedPlaintext.length);

    return cipherText;
  }

  Uint8List _aesCbcDecrypt({
    required Uint8List key,
    required Uint8List iv,
    required Uint8List cipherText,
    bool enforceAssertions = false,
  }) {
    if (enforceAssertions) {
      assert(256 == key.length * 8);
      assert(128 == iv.length * 8);
      assert(cipherText.length * 8 % 128 == 0);
    }

    // Create a CBC block cipher with AES, and initialize with key and IV

    final cbc = pce.CBCBlockCipher(pce.AESEngine())
      ..init(
        false,
        pc.ParametersWithIV(pc.KeyParameter(key), iv),
      ); // false=decrypt

    final paddedPlainText = Uint8List(cipherText.length); // allocate space

    var offset = 0;

    while (offset < cipherText.length) {
      offset += cbc.processBlock(cipherText, offset, paddedPlainText, offset);
    }

    assert(offset == cipherText.length);

    return paddedPlainText;
  }

  Uint8List _pad(List<int> bytes, int blockSizeBytes) {
    // The PKCS #7 padding just fills the extra bytes with the same value.
    // That value is the number of bytes of padding there is.
    //
    // For example, something that requires 3 bytes of padding with append
    // [0x03, 0x03, 0x03] to the bytes. If the bytes is already a multiple of the
    // block size, a full block of padding is added.

    final padLength = blockSizeBytes - (bytes.length % blockSizeBytes);
    final padded = Uint8List(bytes.length + padLength)..setAll(0, bytes);

    pce.PKCS7Padding().addPadding(padded, bytes.length);
    return padded;
  }

  Uint8List _unpad(Uint8List padded) {
    final unpadded =
        padded.sublist(0, padded.length - pce.PKCS7Padding().padCount(padded));
    return unpadded;
  }
}
