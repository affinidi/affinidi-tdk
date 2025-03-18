import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';

import 'environment.dart';

void main() {
  final VaultEnvironment env = getVaultEnvironment();
  final Map<String, ConsumerAuthProvider> variants = {
    'with a Dio Client': ConsumerAuthProvider(seed: env.seed, client: Dio()),
    'without a Dio client': ConsumerAuthProvider(seed: env.seed)
  };

  for (var variant in variants.entries) {
    final consumerAuthProvider = variant.value;
    group('When initializing a ConsumerAuthProvider ${variant.key}', () {
      group('and it fetches a consumer token', () {
        test('it obtains a consumer scoped token and caches it', () async {
          final consumerAuthToken1 = await consumerAuthProvider.fetchConsumerToken();
          expect(consumerAuthToken1, isNotEmpty);

          final consumerAuthToken2 = await consumerAuthProvider.fetchConsumerToken();
          expect(consumerAuthToken2, equals(consumerAuthToken1));
        });
      });

      group('and it fetches a cis token', () {
        test('it obtains a cis scoped token', () async {
          final cisAuthToken = await consumerAuthProvider.fetchCisToken();
          expect(cisAuthToken, isNotEmpty);
        });
      });
    });
  }
}
