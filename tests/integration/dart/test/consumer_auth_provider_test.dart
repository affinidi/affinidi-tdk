import 'package:test/test.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'environment.dart';

void main() {
  group('Consumer Auth Provider Integration Tests', () {
    late VaultEnvironment env;

    setUp(() {
      env = getVaultEnvironment();
    });

    test('obtain consumer scoped token and cache it', () async {
      final consumerAuthProvider = ConsumerAuthProvider(seed: env.seed);
      final consumerAuthToken1 =
          await consumerAuthProvider.fetchConsumerToken();
      expect(consumerAuthToken1, isNotEmpty);

      final consumerAuthToken2 =
          await consumerAuthProvider.fetchConsumerToken();
      expect(consumerAuthToken2, equals(consumerAuthToken1));
    });

    test('obtain cis scoped token', () async {
      final consumerAuthProvider = ConsumerAuthProvider(seed: env.seed);
      final cisAuthToken = await consumerAuthProvider.fetchCisToken();
      expect(cisAuthToken, isNotEmpty);
    });

    // test('identify expired consumer scoped token and request a new one',
    //     () async {
    //   final expiredToken = "";

    //   final consumerAuthProvider = ConsumerAuthProvider(
    //     encryptedSeed: env.encryptedSeed,
    //     encryptionKey: env.encryptionKey,
    //   );

    //   expect(consumerAuthProvider.consumerToken, isNull);
    //   consumerAuthProvider.consumerToken = expiredToken;
    //   expect(consumerAuthProvider.consumerToken, isNotEmpty);

    //   final consumerAuthToken = await consumerAuthProvider.fetchConsumerToken();

    //   expect(consumerAuthToken, equals(consumerAuthProvider.consumerToken));
    //   expect(consumerAuthToken, isNotEmpty);
    //   expect(consumerAuthToken, isNot(equals(expiredToken)));
    // });
  });
}
