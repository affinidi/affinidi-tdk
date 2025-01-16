import 'package:affinidi_cryptography_service/affinidi_cryptography_service.dart';
import 'package:convert/convert.dart';

Future<void> main() async {
  final walletSeed = '';
  final walletPassword = '';

  final cryptographyService = CryptographyService();
  final decryptedSeedString =
      await cryptographyService.Aes256DecryptStringFromHex(
    key: hex.decode(walletPassword),
    encryptedData: walletSeed,
  );

  if (decryptedSeedString == null) {
    throw Exception('Failed to decrypt seed');
  }

  print('Decrypted seed: $decryptedSeedString');
}
