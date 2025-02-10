import 'dart:io';

import 'package:affinidi_tdk_auth_provider/src/iam_client.dart';
import 'package:affinidi_tdk_auth_provider/src/jwt_helper.dart';
import 'package:test/test.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:path/path.dart' as path;
import 'package:mocktail/mocktail.dart';

class MockIamClient extends Mock implements IamClient {}

void validateJWTClaims(String token, String audience, String tokenId) {
  final jwt = JWT.decode(token);

  expect(jwt.payload['aud'], equals(audience));
  expect(jwt.payload['iss'], equals(tokenId));
  expect(jwt.payload['sub'], equals(tokenId));
  expect(jwt.payload['jti'], isNotEmpty);
  expect(jwt.payload['iat'], isA<int>());
  expect(jwt.payload['exp'], isA<int>());
  expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));

  expect(jwt.header!['alg'], equals('RS256'));
}

void main() {
  group('JWTHelper Tests', () {
    final mockAudience = "test-audience";
    final mockTokenId = "test-token";
    group('signPayload with unencrypted private keys', () {
      late String keyOpensslRsa2048;
      late String keyOpensslRsa4096;
      late String keySshRsa2048;
      late String keySshRsa4096;

      setUp(() {
        final testDir = Directory.current.path;
        keyOpensslRsa2048 =
            File(path.join(testDir, 'test', 'pem', 'openssl-rsa2048.pem'))
                .readAsStringSync();
        keyOpensslRsa4096 =
            File(path.join(testDir, 'test', 'pem', 'openssl-rsa4096.pem'))
                .readAsStringSync();
        keySshRsa2048 =
            File(path.join(testDir, 'test', 'pem', 'ssh-rsa2048.pem'))
                .readAsStringSync();
        keySshRsa4096 =
            File(path.join(testDir, 'test', 'pem', 'ssh-rsa4096.pem'))
                .readAsStringSync();
      });
      test('creates JWT from OpenSSL RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      });

      test('creates JWT from OpenSSL RSA 4096 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa4096,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      });

      test('creates JWT from ssh-keygen RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keySshRsa2048,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      }, skip: 'ssh-keygen key tags are not yet supported');

      test('creates JWT from ssh-keygen RSA 4096 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keySshRsa4096,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      }, skip: 'ssh-keygen key tags are not yet supported');

      test('includes keyId in header when provided', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048,
          keyId: 'test-key-id',
        );
        final jwt = JWT.decode(token);
        expect(jwt.header!['kid'], equals('test-key-id'));
      });

      test('includes additional payload when provided', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048,
          additionalPayload: {
            'custom_claim': 'custom_value',
            'nested_claim': {'key': 'value'}
          },
        );

        final jwt = JWT.decode(token);
        expect(jwt.payload['custom_claim'], equals('custom_value'));
        expect(jwt.payload['nested_claim'], equals({'key': 'value'}));
      });

      test('throws error with invalid private key', () {
        expect(
            () => JWTHelper.signPayload(
                  audience: mockAudience,
                  tokenId: mockTokenId,
                  privateKey: 'invalid-key',
                ),
            throwsA(isA<Error>()));
      });
    });

    group('signPayload with encrypted private keys', () {
      final String passphrase = 'hello';
      late String keyOpensslRsa2048Aes128;
      late String keyOpensslRsa2048Aes192;
      late String keyOpensslRsa2048Aes256;
      late String keySshRsa4096Encrypted;

      setUp(() {
        final testDir = Directory.current.path;
        keyOpensslRsa2048Aes128 = File(
                path.join(testDir, 'test', 'pem', 'openssl-rsa2048-aes128.pem'))
            .readAsStringSync();
        keyOpensslRsa2048Aes192 = File(
                path.join(testDir, 'test', 'pem', 'openssl-rsa2048-aes192.pem'))
            .readAsStringSync();
        keyOpensslRsa2048Aes256 = File(
                path.join(testDir, 'test', 'pem', 'openssl-rsa2048-aes256.pem'))
            .readAsStringSync();
        keySshRsa4096Encrypted =
            File(path.join(testDir, 'test', 'pem', 'ssh-rsa4096-encrypted.pem'))
                .readAsStringSync();
      });

      test('creates JWT from OpenSSL AES-128 encrypted RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048Aes128,
          passphrase: passphrase,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      });

      test('creates JWT from OpenSSL AES-192 encrypted RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048Aes192,
          passphrase: passphrase,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      });

      test('creates JWT from OpenSSL AES-256 encrypted RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: mockAudience,
          tokenId: mockTokenId,
          privateKey: keyOpensslRsa2048Aes256,
          passphrase: passphrase,
        );
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      });

      test('creates JWT from ssh-keygen encrypted RSA 4096 key', () {
        final token = JWTHelper.signPayload(
            audience: mockAudience,
            tokenId: mockTokenId,
            privateKey: keySshRsa4096Encrypted,
            passphrase: passphrase);
        expect(token, isNotEmpty);
        validateJWTClaims(token, mockAudience, mockTokenId);
      }, skip: 'ssh-keygen key tags are not yet supported');
    });

    group('Affinidi Elements Public Key', () {
      late IamClient iamClient;

      setUp(() {
        iamClient = MockIamClient();
      });

      test('successfully parses JWKS', () async {
        final mockPublicKeyJWKS = {
          'kid': 'a622a999-9846-48cf-a470-22759e1f435a',
          'alg': 'ES256',
          'use': 'sig',
          'kty': 'EC',
          'crv': 'P-256',
          'x': 'b3kdYEBrlWjQwY55F8MhXC97pwkjTpcQZZ09oDDBK4c',
          'y': 'wlopQwIPWuT55M3ZfCDZdoBs1nh2kwEvzPjnkakf96U'
        };

        when(() => iamClient.getPublicKeyJWKS()).thenAnswer(
          (_) async => mockPublicKeyJWKS,
        );

        final publicKey = await JWTHelper.fetchPublicKey(iamClient);
        expect(publicKey, isA<ECPublicKey>());
      });
    });
  });
}
