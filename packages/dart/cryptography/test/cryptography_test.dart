import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:test/test.dart';

void main() {
  group('Cryptography Unit Tests', () {
    test('Decrypt seed', () {
      final mockEncryptedSeed =
          '79efaac991d5814392b7184493066bb96e6ca8dc04f19d5d9eb3ce13dd886ee10531dc05af6d2705be32e601d241bc66f6bb8af91540718b79a12a79c93e73bf3206adca84a1b0e37abd85604cfe2483729468210298d991f540928ec8b2ccc2';
      final mockEncryptionKey =
          '236c9c6ad782504a7472b1b1d701b946b5be6cec965282d451eae1ef9ddb0a1f';
      final mockDecryptedSeed =
          'f3772f654d5d7db68b9694389f600ee8dd1494b2afa4ae3753cf259dfd63a0f9';

      final cryptographyService = CryptographyService();

      final String decryptedSeed = cryptographyService.decryptSeed(
        encryptedSeedHex: mockEncryptedSeed,
        encryptionKeyHex: mockEncryptionKey,
      );
      expect(decryptedSeed, mockDecryptedSeed);
    });
  });
}
