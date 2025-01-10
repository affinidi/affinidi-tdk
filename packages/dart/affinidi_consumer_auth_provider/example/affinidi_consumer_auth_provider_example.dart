import 'package:affinidi_consumer_auth_provider/affinidi_consumer_auth_provider.dart';

Future<void> main() async {
  final authProvider = ConsumerAuthProvider();
  final token = await authProvider.fetchConsumerToken(
    walletSeed: 'walletSeed',
    walletPassword: 'walletPassword',
  );
  print('Consumer token: $token');
}
