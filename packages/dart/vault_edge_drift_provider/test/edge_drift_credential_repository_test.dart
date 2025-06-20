import 'package:affinidi_tdk_vault_edge_drift_provider/src/database/database.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/edge_drift_credential_repository.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';

void main() {
  late Database database;
  late EdgeDriftCredentialRepository repository;
  const profileId = 'test-profile';

  setUp(() async {
    database = Database(NativeDatabase.memory());
    repository = EdgeDriftCredentialRepository(
      database: database,
      profileId: profileId,
    );
  });

  tearDown(() async {
    await database.close();
  });

  group('When performing credential operations', () {
    test('should save and get a credential', () async {
      final vc = CredentialFixtures.testVerifiableCredential;
      await repository.saveCredential(
        profileId: profileId,
        verifiableCredential: vc,
      );

      final credentials =
          await repository.listCredentials(profileId: profileId);
      expect(credentials, isNotEmpty);
      final credentialId = credentials.first.id;

      final fetched =
          await repository.getCredential(credentialId: credentialId);
      expect(fetched, isNotNull);
      expect(fetched!.verifiableCredential.type, contains('TestCredential'));
    });

    test('should list multiple credentials', () async {
      final vc1 = CredentialFixtures.testVerifiableCredential;
      final vc2 = CredentialFixtures.anotherVerifiableCredential;
      await repository.saveCredential(
        profileId: profileId,
        verifiableCredential: vc1,
      );
      await repository.saveCredential(
        profileId: profileId,
        verifiableCredential: vc2,
      );

      final credentials =
          await repository.listCredentials(profileId: profileId);
      expect(credentials.length, equals(2));
      expect(credentials.map((c) => c.verifiableCredential.type),
          anyElement(contains('TestCredential')));
      expect(credentials.map((c) => c.verifiableCredential.type),
          anyElement(contains('AnotherCredential')));
    });

    test('should delete a credential', () async {
      final vc = CredentialFixtures.testVerifiableCredential;
      await repository.saveCredential(
        profileId: profileId,
        verifiableCredential: vc,
      );
      final credentials =
          await repository.listCredentials(profileId: profileId);
      final credentialId = credentials.first.id;

      await repository.deleteCredential(credentialId: credentialId);

      final afterDelete =
          await repository.listCredentials(profileId: profileId);
      expect(afterDelete, isEmpty);
    });

    test('should throw when getting non-existent credential', () async {
      expect(
        () => repository.getCredential(credentialId: 'non-existent'),
        throwsA(isA<TdkException>().having(
            (e) => e.code, 'code', TdkExceptionType.credentialNotFound.code)),
      );
    });

    test('should throw when deleting non-existent credential', () async {
      expect(
        () => repository.deleteCredential(credentialId: 'non-existent'),
        throwsA(isA<TdkException>().having(
            (e) => e.code, 'code', TdkExceptionType.credentialNotFound.code)),
      );
    });
  });
}
