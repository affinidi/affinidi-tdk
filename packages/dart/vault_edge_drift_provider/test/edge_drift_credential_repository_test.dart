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
      expect(credentialsData.items, isNotEmpty);
      expect(credentialsData.items.first.id, equals(credentialId));
      expect(credentialsData.items.first.content, equals(credentialContent));

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
      expect(credentialsData.items.length, equals(2));
      expect(credentialsData.items.map((c) => c.id), contains(credentialId1));
      expect(credentialsData.items.map((c) => c.id), contains(credentialId2));
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
      expect(credentialsData.items, isNotEmpty);

      await repository.deleteCredential(credentialId: credentialId);

      final afterDelete =
          await repository.listCredentialData(profileId: profileId);
      expect(afterDelete.items, isEmpty);
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

  group('When testing pagination', () {
    test('should paginate credentials correctly', () async {
      for (var i = 0; i < 25; i++) {
        await repository.saveCredentialData(
          profileId: profileId,
          credentialId: 'credential_$i',
          credentialName: 'Credential $i',
          credentialContent: Uint8List.fromList([i]),
        );
      }

      String? cursor;
      var totalFetched = 0;
      const pageSize = 10;
      final fetchedIds = <String>[];
      var pageCount = 0;

      do {
        pageCount++;
        final credentials = await repository.listCredentialData(
          profileId: profileId,
          limit: pageSize,
          exclusiveStartItemId: cursor,
        );

        fetchedIds.addAll(credentials.items.map((e) => e.id));
        totalFetched += credentials.items.length;
        cursor = credentials.lastEvaluatedItemId;
      } while (cursor != null);

      expect(totalFetched, 25);
      expect(fetchedIds.toSet().length, 25);
      expect(pageCount, 3);
    });

    test('should handle empty credentials pagination', () async {
      final credentials = await repository.listCredentialData(
        profileId: profileId,
        limit: 10,
        exclusiveStartItemId: null,
      );

      expect(credentials.items, isEmpty);
      expect(credentials.lastEvaluatedItemId, isNull);
    });

    test('should handle pagination with exact page size', () async {
      for (var i = 0; i < 10; i++) {
        await repository.saveCredentialData(
          profileId: profileId,
          credentialId: 'credential_$i',
          credentialName: 'Credential $i',
          credentialContent: Uint8List.fromList([i]),
        );
      }

      final credentials = await repository.listCredentialData(
        profileId: profileId,
        limit: 10,
        exclusiveStartItemId: null,
      );

      expect(credentials.items.length, 10);
      expect(credentials.lastEvaluatedItemId, isNotNull);

      final nextCredentials = await repository.listCredentialData(
        profileId: profileId,
        limit: 10,
        exclusiveStartItemId: credentials.lastEvaluatedItemId,
      );
      expect(nextCredentials.items, isEmpty);
    });

    test('should handle pagination with fewer items than page size', () async {
      for (var i = 0; i < 5; i++) {
        await repository.saveCredentialData(
          profileId: profileId,
          credentialId: 'credential_$i',
          credentialName: 'Credential $i',
          credentialContent: Uint8List.fromList([i]),
        );
      }

      final credentials = await repository.listCredentialData(
        profileId: profileId,
        limit: 10,
        exclusiveStartItemId: null,
      );

      expect(credentials.items.length, 5);
      expect(credentials.lastEvaluatedItemId, isNull);
    });
  });
}
