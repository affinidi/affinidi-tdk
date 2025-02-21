import 'package:affinidi_tdk_seed_cryptography/affinidi_tdk_seed_cryptography.dart';
import 'package:convert/convert.dart';

Future<void> main() async {
  final stopwatch = Stopwatch()..start();

  final passphrase = '12345678';

  // Throwable encrypted seed and encryption key, for testing purposes
  final vaultEncryptedSeed =
      'de89f59515126a7450a7fa207cf28aeafc6b6500d4c05467550509ea49b3fa75d1cc0275031e5051ce48dce3f6031292cd0266681a9cd871fa820c08585e7c4c06f260ebf0a08bf37922e3cff914157ad2388095283c6809fc62958e59c63871';
  final vaultPassword =
      '6fbde8894959226724cefd4d7afd8d26c0de971afddb4f021f69a3e4badfc0ac';
  final walletMaterials = WalletMaterials(
    encryptedSeed: vaultEncryptedSeed,
    encryptionKey: vaultPassword,
  );

  final decryptedSeed = await SeedCryptographyService.decryptSeed(
    encryptedSeedHex: walletMaterials.encryptedSeed,
    encryptionKeyHex: walletMaterials.encryptionKey,
  );
  print('Decrypted Seed: ${hex.encode(decryptedSeed)}');

  final walletMaterials2 = await SeedCryptographyService.encryptSeed(
    seed: decryptedSeed,
    passphrase: passphrase,
  );
  print('Wallet materials vary everytime: ${walletMaterials2.toJson()}');

  final decryptedSeed2 = await SeedCryptographyService.decryptSeed(
    encryptedSeedHex: walletMaterials.encryptedSeed,
    encryptionKeyHex: walletMaterials.encryptionKey,
  );

  // This is the equivalent raw seed
  final seed =
      '6349dea91b2e1ea6475fdd37f791b38ef6a8ab120e3ba777a81c1d708da1a99925c4991e9ce1a933c9286e24a0be264e2a776480b2a3be74e5bc8f691500f8a0';
  print(
    'Decrypted seed matches original raw seed: ${hex.encode(decryptedSeed2) == seed}',
  );

  stopwatch.stop();
  print(
    'Seed encryption/decryption took: ${stopwatch.elapsedMilliseconds / 1000} seconds',
  );
}
