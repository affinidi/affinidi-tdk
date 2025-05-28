import 'package:affinidi_tdk_vault_storages/src/credential/hive_credential_storage.dart';
import 'package:test/test.dart';
import 'fixtures/hive_credential_storage_fixtures.dart';

void main() {
  group('HiveCredentialStorage', () {
    late HiveCredentialStorage storage;

    setUp(() {
      storage = HiveCredentialStorageFixtures.storage;
    });

    group('Credential Operations', () {
      test('listCredentials should throw UnimplementedError', () {
        expect(
          () => storage.listCredentials(),
          throwsUnimplementedError,
        );
      });

      test('saveCredential should throw UnimplementedError', () {
        expect(
          () => storage.saveCredential(
            verifiableCredential:
                HiveCredentialStorageFixtures.verifiableCredential,
          ),
          throwsUnimplementedError,
        );
      });

      test('deleteCredential should throw UnimplementedError', () {
        expect(
          () => storage.deleteCredential(
            digitalCredentialId: HiveCredentialStorageFixtures.testCredentialId,
          ),
          throwsUnimplementedError,
        );
      });

      test('getCredential should throw UnimplementedError', () {
        expect(
          () => storage.getCredential(
            digitalCredentialId: HiveCredentialStorageFixtures.testCredentialId,
          ),
          throwsUnimplementedError,
        );
      });
    });

    group('Query Operations', () {
      test('query should throw UnimplementedError', () {
        expect(
          () => storage.query(HiveCredentialStorageFixtures.testQuery),
          throwsUnimplementedError,
        );
      });
    });
  });
}
