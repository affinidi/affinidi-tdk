import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/database/database.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/edge_drift_credential_repository.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/exceptions/tdk_exception_type.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

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
    test('should save and get credential data', () async {
      final credentialId = 'test-credential-id';
      final credentialContent = Uint8List.fromList([1, 2, 3, 4, 5]);
      final credentialName = 'TestCredential';

      await repository.saveCredentialData(
        profileId: profileId,
        credentialId: credentialId,
        credentialName: credentialName,
        credentialContent: credentialContent,
      );

      final credentialsData =
          await repository.listCredentialData(profileId: profileId);
      expect(credentialsData, isNotEmpty);
      expect(credentialsData.first.id, equals(credentialId));
      expect(credentialsData.first.content, equals(credentialContent));

      final fetched =
          await repository.getCredentialData(credentialId: credentialId);
      expect(fetched, isNotNull);
      expect(fetched!.id, equals(credentialId));
      expect(fetched.content, equals(credentialContent));
    });

    test('should list multiple credentials data', () async {
      final credentialId1 = 'test-credential-id-1';
      final credentialId2 = 'test-credential-id-2';
      final credentialContent1 = Uint8List.fromList([1, 2, 3, 4, 5]);
      final credentialContent2 = Uint8List.fromList([6, 7, 8, 9, 10]);

      await repository.saveCredentialData(
        profileId: profileId,
        credentialId: credentialId1,
        credentialName: 'TestCredential1',
        credentialContent: credentialContent1,
      );
      await repository.saveCredentialData(
        profileId: profileId,
        credentialId: credentialId2,
        credentialName: 'TestCredential2',
        credentialContent: credentialContent2,
      );

      final credentialsData =
          await repository.listCredentialData(profileId: profileId);
      expect(credentialsData.length, equals(2));
      expect(credentialsData.map((c) => c.id), contains(credentialId1));
      expect(credentialsData.map((c) => c.id), contains(credentialId2));
    });

    test('should delete a credential', () async {
      final credentialId = 'test-credential-id';
      final credentialContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      await repository.saveCredentialData(
        profileId: profileId,
        credentialId: credentialId,
        credentialName: 'TestCredential',
        credentialContent: credentialContent,
      );

      final credentialsData =
          await repository.listCredentialData(profileId: profileId);
      expect(credentialsData, isNotEmpty);

      await repository.deleteCredential(credentialId: credentialId);

      final afterDelete =
          await repository.listCredentialData(profileId: profileId);
      expect(afterDelete, isEmpty);
    });

    test('should throw when getting non-existent credential', () async {
      expect(
        () => repository.getCredentialData(credentialId: 'non-existent'),
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
