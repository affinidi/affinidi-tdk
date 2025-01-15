import 'package:affinidi_tdk_auth_provider/src/iam_client.dart';
import 'package:affinidi_tdk_auth_provider/src/jwt_helper.dart';
import 'package:test/test.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:mocktail/mocktail.dart';

class MockIamClient extends Mock implements IamClient {}

void main() {
  group('JWTHelper Tests', () {
    late IamClient iamClient;
    late String keyOpensslRSA2048;
    late String keyOpensslRSA4096;
    late String keySshRSA2048;
    late String keySshRSA4096;

    setUp(() {
      final testDir = Directory.current.path;
      keyOpensslRSA2048 =
          File(path.join(testDir, 'test', 'pem', 'openssl-rsa2048.pem'))
              .readAsStringSync();
      keyOpensslRSA4096 =
          File(path.join(testDir, 'test', 'pem', 'openssl-rsa4096.pem'))
              .readAsStringSync();
      keySshRSA2048 = File(path.join(testDir, 'test', 'pem', 'ssh-rsa2048.pem'))
          .readAsStringSync();
      keySshRSA4096 = File(path.join(testDir, 'test', 'pem', 'ssh-rsa4096.pem'))
          .readAsStringSync();
    });

    group('signPayload with unencrypted key', () {
      test('creates and signs valid JWT from OpenSSL RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keyOpensslRSA2048,
        );

        expect(token, isNotEmpty);

        final jwt = JWT.decode(token);

        expect(jwt.payload['aud'], equals('test-audience'));
        expect(jwt.payload['iss'], equals('test-token'));
        expect(jwt.payload['sub'], equals('test-token'));
        expect(jwt.payload['jti'], isNotEmpty);
        expect(jwt.payload['iat'], isA<int>());
        expect(jwt.payload['exp'], isA<int>());
        expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      });

      test('creates and signs valid JWT from OpenSSL RSA 4096 key', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keyOpensslRSA4096,
        );

        expect(token, isNotEmpty);

        final jwt = JWT.decode(token);

        expect(jwt.payload['aud'], equals('test-audience'));
        expect(jwt.payload['iss'], equals('test-token'));
        expect(jwt.payload['sub'], equals('test-token'));
        expect(jwt.payload['jti'], isNotEmpty);
        expect(jwt.payload['iat'], isA<int>());
        expect(jwt.payload['exp'], isA<int>());
        expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      });

      test('creates and signs valid JWT from ssh-keygen RSA 2048 key', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keySshRSA2048,
        );

        expect(token, isNotEmpty);

        final jwt = JWT.decode(token);

        expect(jwt.payload['aud'], equals('test-audience'));
        expect(jwt.payload['iss'], equals('test-token'));
        expect(jwt.payload['sub'], equals('test-token'));
        expect(jwt.payload['jti'], isNotEmpty);
        expect(jwt.payload['iat'], isA<int>());
        expect(jwt.payload['exp'], isA<int>());
        expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      });

      test('creates and signs valid JWT from ssh-keygen RSA 4096 key', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keySshRSA4096,
        );

        expect(token, isNotEmpty);

        final jwt = JWT.decode(token);

        expect(jwt.payload['aud'], equals('test-audience'));
        expect(jwt.payload['iss'], equals('test-token'));
        expect(jwt.payload['sub'], equals('test-token'));
        expect(jwt.payload['jti'], isNotEmpty);
        expect(jwt.payload['iat'], isA<int>());
        expect(jwt.payload['exp'], isA<int>());
        expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      });

      test('includes keyId in header when provided', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keyOpensslRSA2048,
          keyId: 'test-key-id',
        );

        final jwt = JWT.decode(token);
        expect(jwt.header!['kid'], equals('test-key-id'));
      });

      test('includes additional payload when provided', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keyOpensslRSA2048,
          additionalPayload: {
            'custom_claim': 'custom_value',
            'nested_claim': {'key': 'value'}
          },
        );

        final jwt = JWT.decode(token);
        expect(jwt.payload['custom_claim'], equals('custom_value'));
        expect(jwt.payload['nested_claim'], equals({'key': 'value'}));
      });

      test('uses RS256 algorithm', () {
        final token = JWTHelper.signPayload(
          audience: 'test-audience',
          tokenId: 'test-token',
          privateKey: keyOpensslRSA2048,
        );

        final jwt = JWT.decode(token);
        expect(jwt.header!['alg'], equals('RS256'));
      });

      test('throws error with invalid private key', () {
        expect(
            () => JWTHelper.signPayload(
                  audience: 'test-audience',
                  tokenId: 'test-token',
                  privateKey: 'invalid-key',
                ),
            throwsA(isA<Error>()));
      });
    });

    group('fetchPublicKey', () {
      setUp(() {
        iamClient = MockIamClient();
      });

      test('successfully parses JWKS', () async {
        final mockPublicKeyJWKS = {
          'keys': [
            {
              'kid': 'a622a999-9846-48cf-a470-22759e1f435a',
              'alg': 'ES256',
              'use': 'sig',
              'kty': 'EC',
              'crv': 'P-256',
              'x': 'b3kdYEBrlWjQwY55F8MhXC97pwkjTpcQZZ09oDDBK4c',
              'y': 'wlopQwIPWuT55M3ZfCDZdoBs1nh2kwEvzPjnkakf96U'
            }
          ]
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
