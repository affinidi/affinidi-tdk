import 'dart:typed_data';
import 'package:test/test.dart';
import 'package:affinidi_tdk_seed_cryptography/affinidi_tdk_seed_cryptography.dart';

void main() {
  group('SeedCryptographyService', () {
    test('encrypt then decrypt seed', () async {
      final seed = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
      final passphrase = 'passphrase';

      final walletMaterials = await SeedCryptographyService.encryptSeed(
        seed: seed,
        passphrase: passphrase,
      );

      final decryptedSeed = await SeedCryptographyService.decryptSeed(
        encryptedSeedHex: walletMaterials.encryptedSeed,
        encryptionKeyHex: walletMaterials.encryptionKey,
      );

      expect(decryptedSeed, seed);
    });

    test(
        'decrypt legacy seed from JS SDK via Affinidi Vault, then encrypt seed',
        () async {
      final walletEncryptedSeed =
          "b90c475ad00b935012095ebbd896e4fea14eb5f1e40f75cafa710ab5894a0dd695d8ec3b041259ac70460d8a3bf1dd3eb06513f4fcfca491a9a2a9ffe2bba7f7019348f623c3edd5eb2a71c96e28d6a975bf49b2710a45aad264697ee54ea54b";
      final walletEncryptionKey =
          "685bec30c54bffcf54bf57f34876b4e103c6c93641f80a08a479e0e10eed6b18";
      final passphrase = 'passphrase';

      final decryptedSeed = await SeedCryptographyService.decryptSeed(
        encryptedSeedHex: walletEncryptedSeed,
        encryptionKeyHex: walletEncryptionKey,
      );
      final walletMaterials = await SeedCryptographyService.encryptSeed(
        seed: decryptedSeed,
        passphrase: passphrase,
      );
      final decryptedSeed2 = await SeedCryptographyService.decryptSeed(
        encryptedSeedHex: walletMaterials.encryptedSeed,
        encryptionKeyHex: walletMaterials.encryptionKey,
      );

      expect(decryptedSeed2, decryptedSeed);
    });

    test('decrypt seed created from Vault package', () async {
      final vaultEncryptedSeed =
          'de89f59515126a7450a7fa207cf28aeafc6b6500d4c05467550509ea49b3fa75d1cc0275031e5051ce48dce3f6031292cd0266681a9cd871fa820c08585e7c4c06f260ebf0a08bf37922e3cff914157ad2388095283c6809fc62958e59c63871';
      final vaultPassword =
          '6fbde8894959226724cefd4d7afd8d26c0de971afddb4f021f69a3e4badfc0ac';
      final passphrase = 'passphrase';

      final decryptedSeed = await SeedCryptographyService.decryptSeed(
        encryptedSeedHex: vaultEncryptedSeed,
        encryptionKeyHex: vaultPassword,
      );
      final walletMaterials = await SeedCryptographyService.encryptSeed(
        seed: decryptedSeed,
        passphrase: passphrase,
      );
      final decryptedSeed2 = await SeedCryptographyService.decryptSeed(
        encryptedSeedHex: walletMaterials.encryptedSeed,
        encryptionKeyHex: walletMaterials.encryptionKey,
      );

      expect(decryptedSeed2, decryptedSeed);
    });

    test('decrypt seed with wrong key', () async {
      final seed = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8]);
      final passphrase = 'passphrase';

      final walletMaterials = await SeedCryptographyService.encryptSeed(
        seed: seed,
        passphrase: passphrase,
      );

      expect(
        () async => await SeedCryptographyService.decryptSeed(
          encryptedSeedHex: walletMaterials.encryptedSeed,
          encryptionKeyHex: 'wrong_key',
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
