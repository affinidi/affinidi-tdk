import 'dart:typed_data';

import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

Future<void> main() async {
  final vaultSeed = [
    127,
    207,
    117,
    151,
    251,
    83,
    173,
    138,
    126,
    164,
    8,
    230,
    146,
    6,
    194,
    84,
    244,
    160,
    132,
    252,
    138,
    118,
    178,
    144,
    207,
    241,
    7,
    61,
    120,
    124,
    22,
    82,
  ]; // Replace with your Vault's seed bytes

  final consumerAuthProvider = ConsumerAuthProvider(
    seedBytes: Uint8List.fromList(vaultSeed),
  );

  print('Fetching consumer token...');
  final consumerToken = await consumerAuthProvider.fetchConsumerToken();
  print('Consumer token: $consumerToken');

  print('Generating credential issuance token...');
  final cisToken = await consumerAuthProvider.fetchCisToken();
  print('CIS token: $cisToken');
}
