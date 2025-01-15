import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';

void main() {
  group('Auth Provider Tests', () {
    final mockProjectId = 'test-project-id';
    final mockTokenId = 'test-token-id';
    late AuthProvider authProvider;

    setUp(() {
      final testDir = Directory.current.path;
      final keyOpensslRSA2048 =
          File(path.join(testDir, 'test', 'pem', 'openssl-rsa2048.pem'))
              .readAsStringSync();
      authProvider = AuthProvider(
          projectId: mockProjectId,
          tokenId: mockTokenId,
          privateKey: keyOpensslRSA2048);
    });

    test('createIotaToken returns valid token and session', () {
      final iotaConfigId = 'test-iota-config';
      final did = 'did:test:123';
      final sessionId = 'test-session';

      final result = authProvider.createIotaToken(
          iotaConfigId: iotaConfigId, did: did, iotaSessionId: sessionId);

      expect(result.iotaSessionId, equals(sessionId));
      expect(result.iotaJwt, isNotEmpty);

      final jwt = JWT.decode(result.iotaJwt);
      expect(jwt.payload['aud'], equals(did));
      expect(jwt.payload['iss'], equals('token/$mockTokenId'));
      expect(jwt.payload['sub'], equals('token/$mockTokenId'));
      expect(jwt.payload['jti'], isNotEmpty);
      expect(jwt.payload['iat'], isA<int>());
      expect(jwt.payload['exp'], isA<int>());
      expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      expect(jwt.payload['project_id'], equals(mockProjectId));
      expect(jwt.payload['iota_configuration_id'], equals(iotaConfigId));
      expect(jwt.payload['iota_session_id'], equals(sessionId));
      expect(jwt.payload['scope'], equals('iota_channel'));
    });

    test('createIotaToken generates session ID if not provided', () {
      final iotaConfigId = 'test-iota-config';
      final did = 'did:test:123';

      final result =
          authProvider.createIotaToken(iotaConfigId: iotaConfigId, did: did);

      expect(result.iotaSessionId, isNotEmpty);
      expect(result.iotaJwt, isNotEmpty);

      final jwt = JWT.decode(result.iotaJwt);
      expect(jwt.payload['aud'], equals(did));
      expect(jwt.payload['iss'], equals('token/$mockTokenId'));
      expect(jwt.payload['sub'], equals('token/$mockTokenId'));
      expect(jwt.payload['jti'], isNotEmpty);
      expect(jwt.payload['iat'], isA<int>());
      expect(jwt.payload['exp'], isA<int>());
      expect(jwt.payload['exp'] - jwt.payload['iat'], equals(5 * 60));
      expect(jwt.payload['project_id'], equals(mockProjectId));
      expect(jwt.payload['iota_configuration_id'], equals(iotaConfigId));
      expect(jwt.payload['iota_session_id'], equals(result.iotaSessionId));
      expect(jwt.payload['scope'], equals('iota_channel'));
    });
  });
}
