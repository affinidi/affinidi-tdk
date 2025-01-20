import 'dart:typed_data';

abstract interface class AesCbcEncryptionServiceInterface {
  String encryptToHex(Uint8List key, Uint8List data);
  Uint8List encryptToBytes(Uint8List key, Uint8List data);

  Uint8List? decryptFromHex(Uint8List key, String hexStr);
  Uint8List? decryptFromBytes(Uint8List key, Uint8List ivAndBytes);

  String decryptSeed({
    required String encryptedSeedHex,
    required String encryptionKeyHex,
  });
}
