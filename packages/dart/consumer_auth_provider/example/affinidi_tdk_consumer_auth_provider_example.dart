import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

Future<void> main() async {
  // Paste here your Wallet seed and password
  final walletSeed = '';
  final walletPassword = '';

  final consumerAuthProvider = ConsumerAuthProvider(
    encryptedSeed: walletSeed,
    encryptionKey: walletPassword,
  );
  print('Fetching consumer token...');
  final token = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $token');
}
