// ignore_for_file: non_constant_identifier_names

import 'dart:typed_data';

import 'models/verify_jwt_result.dart';

/// CryptographyServiceInterface defines the methods that cryptography service
/// should implement.
abstract interface class CryptographyServiceInterface {
  /// Creates a hex-encoded SHA-256 hash from the given string.
  String getSha256HexFromString(String input);

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  String getSha256HexFromBytes(List<int> bytes);

  /// Generates a list of random bytes of the given length.
  List<int> getRandomBytes(int length);

  /// Derives a key using PBKDF2 algorithm.
  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  });

  /// Encrypts the given data using AES-256 algorithm.
  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  });

  /// Decrypts the given encrypted data using AES-256 algorithm.
  Future<List<int>?> Aes256Decrypt({
    required List<int> key,
    required List<int> encryptedData,
  });

  /// Encrypts the given string to a hex string using AES-256 algorithm.
  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  });

  /// Decrypts the given encrypted hex string using AES-256 algorithm.
  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  });

  /// Encrypts the given data using an RSA public key from a JWK.
  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  });

  /// Decodes the given JWT token.
  Map<String, dynamic> decodeJwtToken({required String token});

  /// Verifies the given JWT token using the provided DID key.
  VerifyJwtResult verifyJwt({
    required String jwtToken,
    required String didKey,
  });

  /// Creates a hash from the given source string.
  String createHash({required String hashSource});

  /// Creates a hex-encoded SHA-256 hash from the given bytes.
  String createSha256Hex({required List<int> bytes});

  /// Creates a base64-encoded MD5 hash from the given bytes.
  String createMd5Base64({required List<int> bytes});

  /// Encrypts the given data to a hexadecimal string using the provided key.
  String encryptToHex(Uint8List key, Uint8List data);

  /// Encrypts the given data to bytes using the provided key.
  Uint8List encryptToBytes(Uint8List key, Uint8List data);

  /// Decrypts the given hexadecimal string using the provided key.
  Uint8List? decryptFromHex(Uint8List key, String hexStr);

  /// Decrypts the given bytes using the provided key.
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes);

  /// Decrypts the given encrypted seed using the provided encryption key.
  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  });
}
