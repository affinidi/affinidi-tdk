import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Decrypt seed', () {
      final mockEncryptedSeed = '';
      final mockEncryptionKey = '';
      final mockDecryptedSeed = '';

      final cryptographyService = CryptographyService();

      final String decryptedSeed = cryptographyService.decryptSeed(
        encryptedSeedHex: mockEncryptedSeed,
        encryptionKeyHex: mockEncryptionKey,
      );
      expect(decryptedSeed, mockDecryptedSeed);
    });
  });
}
