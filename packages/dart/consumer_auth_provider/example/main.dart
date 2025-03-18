import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

Future<void> main() async {
  final vaultSeed =
      List<int>.generate(32, (index) => index); // Mocked seed bytes

  final consumerAuthProvider = ConsumerAuthProvider(
    seed: Uint8List.fromList(vaultSeed),
  );

  print('Fetching consumer token...');
  final consumerToken = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $consumerToken');

  print('Generating credential issuance token...');
  final cisToken = await consumerAuthProvider.fetchCisToken();
  print('CIS token: $cisToken');
}
