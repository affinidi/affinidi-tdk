// ignore_for_file: non_constant_identifier_names

import 'dart:typed_data';

import 'package:affinidi_cryptography_service/src/models/verify_jwt_result.dart';

abstract interface class CryptographyServiceInterface {
  String getSha256HexFromString(String input);

  String getSha256HexFromBytes(List<int> bytes);

  List<int> getRandomBytes(int length);

  // TODO: rename
  Future<List<int>> Pbkdf2({
    required String password,
    required List<int> nonce,
  });

  // TODO: rename
  Future<List<int>> Aes256Encrypt({
    required List<int> key,
    required List<int> data,
  });

  // TODO: rename
  Future<List<int>?> Aes256Decrypt({
    required List<int> key,
    required List<int> encryptedData,
  });

  // TODO: rename
  Future<String> Aes256EncryptStringToHex({
    required List<int> key,
    required String data,
  });

  // TODO: rename
  Future<String?> Aes256DecryptStringFromHex({
    required List<int> key,
    required String encryptedData,
  });

  List<int> encryptWithRsaPublicKeyFromJwk({
    required Map<String, dynamic> jwk,
    required List<int> data,
  });

  Map<String, dynamic> decodeJwtToken({required String token});
  VerifyJwtResult verifyJwt({required String jwtToken, required String didKey});
  String createHash({required String hashSource});
  String createSha256Hex({required List<int> bytes});
  String createMd5Base64({required List<int> bytes});

  Uint8List aesCbcEncrypt(
    Uint8List key,
    Uint8List iv,
    Uint8List paddedPlaintext,
  );

  Uint8List aesCbcDecrypt(
    Uint8List key,
    Uint8List iv,
    Uint8List cipherText,
  );
}
