import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  group('Consumer Auth Provider Tests', () {
    late MockConsumerAuthProvider authProvider;

    setUp(() {
      authProvider = MockConsumerAuthProvider();
    });

    test('Fetch Consumer Token returns a token', () async {
      final testToken = 'testToken';

      when(
        () => authProvider.fetchConsumerToken(),
      ).thenAnswer((_) async => testToken);

      final token = await authProvider.fetchConsumerToken();

      expect(token, isNotNull);
      expect(token, isA<String>());
      expect(token, testToken);
    });

    test('Fetch Consumer Token throws error with invalid credentials',
        () async {
      when(
        () => authProvider.fetchConsumerToken(),
      ).thenThrow(Exception('Failed to decrypt seed'));

      expect(
        () async => await authProvider.fetchConsumerToken(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
