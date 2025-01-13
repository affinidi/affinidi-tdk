import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  group('A group of tests', () {
    late MockCryptographyService cryptographyService;
    late MockConsumerAuthProvider authProvider;

    setUp(() {
      authProvider = MockConsumerAuthProvider();
      cryptographyService = MockCryptographyService();
    });

    test('Fetch Consumer Token returns a token', () async {
      final seed = '12345678';
      final nonce = 'fixed_nonce_per_client';
      final nonceBytes = utf8.encode(nonce);

      final seedEncryptionKey = utf8.encode('mockEncryptedSeed');
      final encryptionKey = utf8.encode('mockEncryptionKey');
      final encryptedSeed = utf8.encode('mockEncryptedSeed');

      final testToken = 'testToken';

      when(
        () => cryptographyService.Pbkdf2(password: seed, nonce: nonceBytes),
      ).thenAnswer((_) async => seedEncryptionKey);

      when(
        () => cryptographyService.Aes256Encrypt(
          key: encryptionKey,
          data: seedEncryptionKey,
        ),
      ).thenAnswer((_) async => encryptedSeed);

      when(
        () => authProvider.fetchConsumerToken(
          encryptedSeed: encryptedSeed,
          encryptionKey: encryptionKey,
        ),
      ).thenAnswer((_) async => testToken);

      final token = await authProvider.fetchConsumerToken(
        encryptedSeed: encryptedSeed,
        encryptionKey: encryptionKey,
      );

      expect(token, isNotNull);
      expect(token, isA<String>());
      expect(token, testToken);
    });

    test('Fetch Consumer Token throws error with invalid credentials',
        () async {
      final encryptedSeed = utf8.encode('testEncryptedSeed');
      final encryptionKey = utf8.encode('testEncryptionKey');

      when(
        () => cryptographyService.Aes256Decrypt(
          key: encryptionKey,
          encryptedData: encryptedSeed,
        ),
      ).thenAnswer((_) async => null);

      when(
        () => authProvider.fetchConsumerToken(
          encryptedSeed: encryptedSeed,
          encryptionKey: encryptionKey,
        ),
      ).thenThrow(Exception('Failed to decrypt seed'));

      expect(
        () async => await authProvider.fetchConsumerToken(
          encryptedSeed: encryptedSeed,
          encryptionKey: encryptionKey,
        ),
        throwsA(isA<Exception>()),
      );
    });
  });
}
