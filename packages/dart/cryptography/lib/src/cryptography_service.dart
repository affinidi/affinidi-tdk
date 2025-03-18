// ignore_for_file: non_constant_identifier_names

import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/src/models/verify_jwt_result.dart';

import 'cryptography/base_cryptography_service.dart';
import 'cryptography_service_interface.dart';

/// A service class that provides cryptographic operations.
class CryptographyService implements CryptographyServiceInterface {
  final CryptographyServiceInterface _implementation;

  /// Private constructor for the [CryptographyService] class and can only be instantiated via the [CryptographyService] factory constructor.
  const CryptographyService._(this._implementation);

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
  factory CryptographyService() {
    return CryptographyService._(BaseCryptographyService());
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
  }) =>
      _implementation.Aes256Decrypt(
        key: key,
        encryptedData: encryptedData,
      );

  /// Decrypts the given encrypted hex string using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [encryptedData] - The hex string to be decrypted.
  @override
  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  }) =>
      _implementation.Aes256DecryptStringFromHex(
        key: key,
        encryptedData: encryptedData,
      );

  /// Encrypts the given data using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [data] - The data to be encrypted.
  @override
  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  }) =>
      _implementation.Aes256Encrypt(
        key: key,
        data: data,
      );

  /// Encrypts the given string to a hex string using AES-256 algorithm.
  ///
  /// [key] - The encryption key.
  ///
  /// [data] - The string to be encrypted.
  @override
  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  }) =>
      _implementation.Aes256EncryptStringToHex(
        key: key,
        data: data,
      );

  /// Derives a key using PBKDF2 algorithm.
  ///
  /// [password] - The password to derive the key from.
  ///
  /// [nonce] - The nonce to use in the derivation.
  @override
  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  }) =>
      _implementation.Pbkdf2(
        password: password,
        nonce: nonce,
      );

  /// Creates a hash from the given source string.
  ///
  /// [hashSource] - The source string to hash.
  @override
  String createHash({required String hashSource}) =>
      _implementation.createHash(hashSource: hashSource);

  /// Creates a base64-encoded MD5 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String createMd5Base64({required List<int> bytes}) =>
      _implementation.createMd5Base64(bytes: bytes);

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String createSha256Hex({required List<int> bytes}) =>
      _implementation.createSha256Hex(bytes: bytes);

  /// Decodes the given JWT token.
  ///
  /// [token] - The JWT token to decode.
  @override
  Map<String, dynamic> decodeJwtToken({required String token}) =>
      _implementation.decodeJwtToken(token: token);

  /// Encrypts the given data using an RSA public key from a JWK.
  ///
  /// [jwk] - The JWK containing the RSA public key.
  ///
  /// [data] - The data to be encrypted.
  @override
  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  }) =>
      _implementation.encryptWithRsaPublicKeyFromJwk(
        jwk: jwk,
        data: data,
      );

  /// Generates a list of random bytes of the given length.
  ///
  /// [length] - The length of the random byte list.
  @override
  List<int> getRandomBytes(int length) =>
      _implementation.getRandomBytes(length);

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  ///
  /// [bytes] - The bytes to hash.
  @override
  String getSha256HexFromBytes(List<int> bytes) =>
      _implementation.getSha256HexFromBytes(bytes);

  /// Creates a hex-encoded SHA-256 hash from the given string.
  ///
  /// [input] - The string to hash.
  @override
  String getSha256HexFromString(String input) =>
      _implementation.getSha256HexFromString(input);

  /// Verifies the given JWT token using the provided DID key.
  ///
  /// [jwtToken] - The JWT token to verify.
  ///
  /// [didKey] - The DID key to use for verification.
  @override
  VerifyJwtResult verifyJwt({
    required String jwtToken,
    required String didKey,
  }) =>
      _implementation.verifyJwt(
        jwtToken: jwtToken,
        didKey: didKey,
      );

  /// Decrypts the given bytes using the provided key.
  ///
  /// [key] - The key to use for decryption.
  ///
  /// [ivAndBytes] - The initialization vector and bytes to decrypt.
  @override
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes) =>
      _implementation.decryptFromBytes(
        key,
        ivAndBytes,
      );

  /// Decrypts the given hexadecimal string using the provided key.
  ///
  /// [key] - The key to use for decryption.
  ///
  /// [hexStr] - The hexadecimal string to decrypt.
  @override
  Uint8List? decryptFromHex(Uint8List key, String hexStr) =>
      _implementation.decryptFromHex(
        key,
        hexStr,
      );

  /// Encrypts the given data to bytes using the provided key.
  ///
  /// [key] - The key to use for encryption.
  ///
  /// [data] - The data to encrypt.
  @override
  Uint8List encryptToBytes(Uint8List key, Uint8List data) =>
      _implementation.encryptToBytes(
        key,
        data,
      );

  /// Encrypts the given data to a hexadecimal string using the provided key.
  ///
  /// [key] - The key to use for encryption.
  ///
  /// [data] - The data to encrypt.
  @override
  String encryptToHex(Uint8List key, Uint8List data) =>
      _implementation.encryptToHex(
        key,
        data,
      );

  /// Decrypts the given ciphertext using the provided key and initialization vector (IV) with AES in CBC mode.
  ///
  /// Parameters:
  /// - `key` (required): The encryption key as a `Uint8List`. Must be 256 bits (32 bytes) long.
  /// - `iv` (required): The initialization vector as a `Uint8List`. Must be 128 bits (16 bytes) long.
  /// - `cipherText` (required): The ciphertext to decrypt as a `Uint8List`. Its length must be a multiple of 128 bits (16 bytes).
  /// - `enforceAssertions` (optional): A boolean flag to enforce assertions on the key, IV, and ciphertext lengths. Defaults to `false`.
  ///
  /// Returns:
  /// - A `Uint8List` containing the decrypted plaintext.
  ///
  /// Example:
  /// ```dart
  /// final key = Uint8List.fromList([...]); // 32 bytes
  /// final iv = Uint8List.fromList([...]); // 16 bytes
  /// final cipherText = Uint8List.fromList([...]); // multiple of 16 bytes
  /// final plainText = aesCbcDecrypt(
  ///   key: key,
  ///   iv: iv,
  ///   cipherText: cipherText,
  /// );
  /// ```
  ///
  /// Throws:
  /// - `AssertionError` if `enforceAssertions` is `true` and the key, IV, or ciphertext lengths are incorrect.
  @override
  Uint8List aesCbcDecrypt({
    required Uint8List key,
    required Uint8List iv,
    required Uint8List cipherText,
    bool enforceAssertions = false,
  }) =>
      _implementation.aesCbcDecrypt(
        key: key,
        iv: iv,
        cipherText: cipherText,
        enforceAssertions: enforceAssertions,
      );
}
