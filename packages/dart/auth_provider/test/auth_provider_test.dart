import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'package:affinidi_tdk_auth_provider/affinidi_tdk_auth_provider.dart';

String loadPemFile(String filename) {
  final testDir = Directory.current.path;
  final pemPath = path.join(testDir, 'test', 'pem', filename);
  return File(pemPath).readAsStringSync();
}

void main() {
  group('AuthProvider Tests', () {
    final mockProjectId = 'test-project-id';
    final mockTokenId = 'test-token-id';

    late String opensslPrivateKey;
    late String opensslPublicKey;
    late String sshPrivateKey;
    late String sshPublicKey;

    late AuthProvider authProvider;

    setUp(() {
      opensslPrivateKey = loadPemFile('1-openssl-private-key.pem');
      opensslPublicKey = loadPemFile('1-openssl-public-key.pem');
      sshPrivateKey = loadPemFile('3-ssh-private-key.pem');
      sshPublicKey = loadPemFile('3-ssh-public-key.pem');

      authProvider = AuthProvider(
          projectId: mockProjectId,
          tokenId: mockTokenId,
          privateKey: opensslPrivateKey);
    });

    test('loads OpenSSL key pair successfully', () {
      expect(opensslPrivateKey, contains('BEGIN PRIVATE KEY'));
      expect(opensslPublicKey, contains('BEGIN PUBLIC KEY'));
    });

    test('loads SSH key pair successfully', () {
      expect(sshPrivateKey, contains('BEGIN OPENSSH PRIVATE KEY'));
      expect(sshPublicKey, contains('BEGIN RSA PUBLIC KEY'));
    });

    test('createIotaToken returns valid token and session', () {
      final iotaConfigId = 'test-iota-config';
      final did = 'did:test:123';
      final sessionId = 'test-session';

      final result = authProvider.createIotaToken(
          iotaConfigId: iotaConfigId, did: did, iotaSessionId: sessionId);

      expect(result.iotaSessionId, equals(sessionId));
      expect(result.iotaJwt, isNotEmpty);
    });

    test('createIotaToken generates session ID if not provided', () {
      final iotaConfigId = 'test-iota-config';
      final did = 'did:test:123';

      final result =
          authProvider.createIotaToken(iotaConfigId: iotaConfigId, did: did);

      expect(result.iotaSessionId, isNotEmpty);
      expect(result.iotaJwt, isNotEmpty);
    });
  });
}
