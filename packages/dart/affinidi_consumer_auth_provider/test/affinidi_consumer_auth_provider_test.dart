import 'package:affinidi_consumer_auth_provider/affinidi_consumer_auth_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  group('A group of tests', () {
    setUp(() {
      // Additional setup goes here.
    });

    test('Fetch Consumer Token returns a token', () async {
      final walletSeed = 'testWalletSeed';
      final walletPassword = 'testWalletPassword';

      final authProvider = ConsumerAuthProvider();
      final token = await authProvider.fetchConsumerToken(
        walletSeed: walletSeed,
        walletPassword: walletPassword,
      );

      expect(token, isNotNull);
      expect(token, isA<String>());
    });

    test('Fetch Consumer Token throws error with invalid credentials',
        () async {
      final walletSeed = 'invalidWalletSeed';
      final walletPassword = 'invalidWalletPassword';

      final mockTokenProvider = MockConsumerTokenProvider();

      when(() => mockTokenProvider.getToken()).thenThrow(
        Exception('Invalid credentials'),
      );

      final authProvider = ConsumerAuthProvider();
      authProvider.tokenProvider = mockTokenProvider;

      expect(
        () async => await authProvider.fetchConsumerToken(
          walletSeed: walletSeed,
          walletPassword: walletPassword,
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
