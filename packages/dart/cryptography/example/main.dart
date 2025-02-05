import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';

Future<void> main() async {
  final vaultEncryptedSeed = ''; // Replace with your Vault's encrypted seed
  final vaultPassword = ''; // Replace with your Vault's password

  final cryptographyService = CryptographyService();

  final String decryptedSeed = cryptographyService.decryptSeed(
    encryptedSeedHex: vaultEncryptedSeed,
    encryptionKeyHex: vaultPassword,
  );

  print('Decrypted Seed: $decryptedSeed');
}
