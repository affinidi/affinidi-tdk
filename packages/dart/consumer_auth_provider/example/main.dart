import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

Future<void> main() async {
  final vaultEncryptedSeed = [1, 2, 3]; // Replace with your Vault's seed bytes

  final consumerAuthProvider = ConsumerAuthProvider(
    seedBytes: Uint8List.fromList(vaultEncryptedSeed),
  );

  print('Fetching consumer token...');
  final consumerToken = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $consumerToken');

  print('Generating credential issuance token...');
  final cisToken = await consumerAuthProvider.fetchCisToken();
  print('CIS token: $cisToken');
}
