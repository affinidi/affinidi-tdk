import 'package:affinidi_tdk_vault_storages/src/credential/hive_credential_storage.dart';
import 'credential_fixtures.dart';

class HiveCredentialStorageFixtures {
  static const String testId = 'test';
  static const String testCredentialId = 'credential_id';
  static const String testQuery = 'test_query';

  static HiveCredentialStorage get storage => HiveCredentialStorage(
        id: testId,
      );

  static final verifiableCredential =
      CredentialFixtures.mockVerifiableCredential;
}
