import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

Future<void> main() async {
  final vaultEncryptedSeed = ''; // Replace with your Vault's encrypted seed
  final vaultPassword = ''; // Replace with your Vault's password

  final consumerAuthProvider = ConsumerAuthProvider(
    encryptedSeed: vaultEncryptedSeed,
    encryptionKey: vaultPassword,
  );

  print('Fetching consumer token...');
  final consumerToken = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $consumerToken');

  print('Generating credential issuance token...');
  final cisToken = await consumerAuthProvider.fetchCisToken();
  print('CIS token: $cisToken');
}
