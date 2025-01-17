import 'package:test/test.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'environment.dart';

void main() {
  group('Consumer Auth Provider Integration Tests', () {
    final expiredToken =
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJFUzI1NiIsImtpZCI6ImQyMjdiMDI4LTlkNjQtNGNlOS05N2UwLWEyODcyM2UyN2IxOCJ9.eyJzdWIiOiJkaWQ6a2V5OnpRM3NoY2VoQnFONnFlSlFMSlhGYXVYMVhFdWg4OVF2b0xIZkhjRUc2ckd1WldmdDEiLCJhdWQiOiJodHRwczovL2Fwc2UxLmFwaS5hZmZpbmlkaS5pbyIsImlzcyI6Imh0dHBzOi8vYXBzZTEuYXBpLmFmZmluaWRpLmlvL2lhbSIsImlhdCI6MTczNzA3MjMxMiwiZXhwIjoxNzM3MDc1OTEyLCJqdGkiOiIxMmFhMWVhOS05YmRhLTQ4ZjEtYjdmYy1lYTY5ODljMWU0NTcifQ.7l2LPR8ljJllR36LxwQp7nV5S8j0Z0Mk4jdcI9d6dZ-dppOn3p_v-C4gml5BC6q6eZjeyVmz2ChZIDeh6vj99A';

    late VaultEnvironment env;

    setUp(() {
      env = getVaultEnvironment();
    });

    test('obtain consumer scoped token and cache it', () async {
      final consumerAuthProvider = ConsumerAuthProvider(
        encryptedSeed: env.encryptedSeed,
        encryptionKey: env.encryptionKey,
      );
      final consumerAuthToken1 =
          await consumerAuthProvider.fetchConsumerToken();
      expect(consumerAuthToken1, isNotEmpty);

      final consumerAuthToken2 =
          await consumerAuthProvider.fetchConsumerToken();
      expect(consumerAuthToken2, equals(consumerAuthToken1));
    });

    test('identify expired consumer scoped token and request a new one',
        () async {
      final consumerAuthProvider = ConsumerAuthProvider(
        encryptedSeed: env.encryptedSeed,
        encryptionKey: env.encryptionKey,
      );

      expect(consumerAuthProvider.consumerToken, isNull);
      consumerAuthProvider.consumerToken = expiredToken;
      expect(consumerAuthProvider.consumerToken, isNotEmpty);

      final consumerAuthToken = await consumerAuthProvider.fetchConsumerToken();

      expect(consumerAuthToken, equals(consumerAuthProvider.consumerToken));
      expect(consumerAuthToken, isNotEmpty);
      expect(consumerAuthToken, isNot(equals(expiredToken)));
    }, skip: 'consumerToken var in provider is private');
  });
}
