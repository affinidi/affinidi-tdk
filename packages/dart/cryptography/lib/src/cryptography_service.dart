// ignore_for_file: non_constant_identifier_names

import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/src/models/verify_jwt_result.dart';

import 'cryptography/base_cryptography_service.dart';
import 'cryptography/cryptography_abstract.dart';
import 'cryptography_interface.dart';

/// A service class that provides cryptographic operations.
class CryptographyService implements CryptographyServiceInterface {
  /// A service class that provides cryptographic operations.
  ///
  /// Example usage:
  /// ```dart
  /// final cryptographyService = CryptographyService();
  /// final encryptionKey = cryptographyService.getRandomBytes(32);
  /// final nonce = utf8.encode('nonce');
  /// final passphrase = 'your-passphrase';
  ///
  /// final passphraseEncryptionKey = await cryptographyService.Pbkdf2(
  ///   password: passphrase,
  ///   nonce: nonce,
  /// );
  ///
  /// final encryptedKey = await cryptographyService.Aes256Encrypt(
  ///   key: passphraseEncryptionKey,
  ///   data: encryptionKey,
  /// );
  /// ```
  CryptographyService() {
    CryptographyServiceAbstract.instance = BaseCryptographyService();
  }

  /// Decrypts the given encrypted data using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [encryptedData] - The data to be decrypted.
  @override
  Future<List<int>?> Aes256Decrypt({
    required List<int> key,
    required List<int> encryptedData,
  }) async {
    return await CryptographyServiceAbstract.instance.Aes256Decrypt(
      key: key,
      encryptedData: encryptedData,
    );
  }

  /// Decrypts the given encrypted hex string using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [encryptedData] - The hex string to be decrypted.
  @override
  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  }) {
    return CryptographyServiceAbstract.instance.Aes256DecryptStringFromHex(
      key: key,
      encryptedData: encryptedData,
    );
  }

  /// Encrypts the given data using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [data] - The data to be encrypted.
  @override
  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  }) {
    return CryptographyServiceAbstract.instance.Aes256Encrypt(
      key: key,
      data: data,
    );
  }

  /// Encrypts the given string to a hex string using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [data] - The string to be encrypted.
  @override
  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  }) {
    return CryptographyServiceAbstract.instance.Aes256EncryptStringToHex(
      key: key,
      data: data,
    );
  }

  /// Derives a key using PBKDF2 algorithm.
  ///
  /// [password] - The password to derive the key from.
  ///
  /// [nonce] - The nonce to use in the derivation.
  @override
  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  }) {
    return CryptographyServiceAbstract.instance.Pbkdf2(
      password: password,
      nonce: nonce,
    );
  }

  /// Creates a hash from the given source string.
  ///
  /// [hashSource] - The source string to hash.
  @override
  String createHash({required String hashSource}) {
    return CryptographyServiceAbstract.instance.createHash(
      hashSource: hashSource,
    );
  }

  /// Creates a base64-encoded MD5 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String createMd5Base64({required List<int> bytes}) {
    return CryptographyServiceAbstract.instance.createMd5Base64(
      bytes: bytes,
    );
  }

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String createSha256Hex({required List<int> bytes}) {
    return CryptographyServiceAbstract.instance.createSha256Hex(
      bytes: bytes,
    );
  }

  /// Decodes the given JWT token.
  ///
  /// [token] - The JWT token to decode.
  @override
  Map<String, dynamic> decodeJwtToken({required String token}) {
    return CryptographyServiceAbstract.instance.decodeJwtToken(
      token: token,
    );
  }

  /// Encrypts the given data using an RSA public key from a JWK.
  ///
  /// [jwk] - The JWK containing the RSA public key.
  ///
  /// [data] - The data to be encrypted.
  @override
  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  }) {
    return CryptographyServiceAbstract.instance.encryptWithRsaPublicKeyFromJwk(
      jwk: jwk,
      data: data,
    );
  }

  /// Generates a list of random bytes of the given length.
  ///
  /// [length] - The length of the random byte list.
  @override
  List<int> getRandomBytes(int length) {
    return CryptographyServiceAbstract.instance.getRandomBytes(
      length,
    );
  }

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String getSha256HexFromBytes(List<int> bytes) {
    return CryptographyServiceAbstract.instance.getSha256HexFromBytes(
      bytes,
    );
  }

  /// Creates a hex-encoded SHA-256 hash from the given string.
  ///
  /// [input] - The string to hash.
  @override
  String getSha256HexFromString(String input) {
    return CryptographyServiceAbstract.instance.getSha256HexFromString(
      input,
    );
  }

  /// Verifies the given JWT token using the provided DID key.
  ///
  /// [jwtToken] - The JWT token to verify.
  ///
  /// [didKey] - The DID key to use for verification.
  @override
  VerifyJwtResult verifyJwt({
    required String jwtToken,
    required String didKey,
  }) {
    return CryptographyServiceAbstract.instance.verifyJwt(
      jwtToken: jwtToken,
      didKey: didKey,
    );
  }

  /// Decrypts the given bytes using the provided key.
  ///
  /// [key] - The key to use for decryption.
  ///
  /// [ivAndBytes] - The initialization vector and bytes to decrypt.
  @override
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes) {
    return CryptographyServiceAbstract.instance.decryptFromBytes(
      key,
      ivAndBytes,
    );
  }

  /// Decrypts the given hexadecimal string using the provided key.
  ///
  /// [key] - The key to use for decryption.
  ///
  /// [hexStr] - The hexadecimal string to decrypt.
  @override
  Uint8List? decryptFromHex(Uint8List key, String hexStr) {
    return CryptographyServiceAbstract.instance.decryptFromHex(
      key,
      hexStr,
    );
  }

  /// Decrypts the given encrypted seed using the provided encryption key.
  ///
  /// [encryptedSeedHex] - The encrypted seed in hexadecimal format.
  ///
  /// [encryptionKeyHex] - The encryption key in hexadecimal format.
  @override
  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  }) {
    return CryptographyServiceAbstract.instance.decryptSeed(
      encryptedSeedHex: encryptedSeedHex,
      encryptionKeyHex: encryptionKeyHex,
    );
  }

  /// Encrypts the given data to bytes using the provided key.
  ///
  /// [key] - The key to use for encryption.
  ///
  /// [data] - The data to encrypt.
  @override
  Uint8List encryptToBytes(Uint8List key, Uint8List data) {
    return CryptographyServiceAbstract.instance.encryptToBytes(
      key,
      data,
    );
  }

  /// Encrypts the given data to a hexadecimal string using the provided key.
  ///
  /// [key] - The key to use for encryption.
  ///
  /// [data] - The data to encrypt.
  @override
  String encryptToHex(Uint8List key, Uint8List data) {
    return CryptographyServiceAbstract.instance.encryptToHex(
      key,
      data,
    );
  }
}
