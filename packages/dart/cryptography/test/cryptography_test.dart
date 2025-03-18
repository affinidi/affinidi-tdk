import 'dart:convert';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Encrypt and Decrypt data', () async {
      final cryptographyService = CryptographyService();

      const password = 'password';
      const salt = 'fixed_salt';
      const dataToEncrypt = 'Hello, Affinidi!';

      // Derive encryption key using PBKDF2
      final encryptionKey = await cryptographyService.Pbkdf2(
        password: password,
        nonce: utf8.encode(salt),
      );

      // Encrypt the data
      final encryptedData = await cryptographyService.Aes256EncryptStringToHex(
        key: encryptionKey,
        data: dataToEncrypt,
      );

      // Decrypt the data
      final decryptedData =
          await cryptographyService.Aes256DecryptStringFromHex(
        key: encryptionKey,
        encryptedData: encryptedData,
      );

      expect(decryptedData, dataToEncrypt);
    });
  });
}
