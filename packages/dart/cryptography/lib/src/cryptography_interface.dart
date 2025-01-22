// ignore_for_file: non_constant_identifier_names

import 'dart:typed_data';

import 'models/verify_jwt_result.dart';

abstract interface class CryptographyServiceInterface {
  String getSha256HexFromString(String input);

  String getSha256HexFromBytes(List<int> bytes);

  List<int> getRandomBytes(int length);

  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  });

  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  });

  Future<List<int>?> Aes256Decrypt({
    required List<int> key,
    required List<int> encryptedData,
  });

  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  });

  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  });

  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  });

  Map<String, dynamic> decodeJwtToken({required String token});
  VerifyJwtResult verifyJwt({
    required String jwtToken,
    required String didKey,
  });
  String createHash({required String hashSource});
  String createSha256Hex({required List<int> bytes});
  String createMd5Base64({required List<int> bytes});

  /* New */
  String encryptToHex(Uint8List key, Uint8List data);
  Uint8List encryptToBytes(Uint8List key, Uint8List data);

  Uint8List? decryptFromHex(Uint8List key, String hexStr);
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes);

  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  });
}
