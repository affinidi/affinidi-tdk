import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/storages/vfs_credential_storage.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';
import 'mocks/mock_vault_data_manager_service.dart';
import 'mocks/mock_verifiable_credential.dart';

void main() {
  late VFSCredentialStorage storage;
  late MockVaultDataManagerService mockService;
  const profileId = 'test_profile';
  const storageId = 'test_storage';

  setUpAll(() {
    registerFallbackValue(MockVerifiableCredential());
  });

  setUp(() {
    mockService = MockVaultDataManagerService();
    storage = VFSCredentialStorage(
      id: storageId,
      dataManagerService: mockService,
      profileId: profileId,
    );
  });

  tearDown(() {
    reset(mockService);
  });

  group('VFSCredentialStorage', () {
    group('When listing credentials', () {
      test('it should return all credentials', () async {
        final mockCreds = CredentialFixtures.mockCredentials;
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
              items: mockCreds,
              lastEvaluatedItemId: null,
            ));

        final result = await storage.listCredentials();
        expect(result.items.length, equals(mockCreds.length));
        expect(result.items[0].id, equals(mockCreds[0].id));
        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).called(1);
      });

      test('it should handle empty credential list', () async {
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
              items: <DigitalCredential>[],
              lastEvaluatedItemId: null,
            ));

        final result = await storage.listCredentials();
        expect(result.items, isEmpty);
        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).called(1);
      });

      test('it should handle multiple credentials', () async {
        final credentials = CredentialFixtures.mockMultipleCredentials;
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
              items: credentials,
              lastEvaluatedItemId: null,
            ));

        final result = await storage.listCredentials();
        expect(result.items.length, equals(2));
        expect(result.items[0].id, equals('cred1'));
        expect(result.items[1].id, equals('cred2'));
        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).called(1);
      });
    });

    group('When saving a credential', () {
      test('it should save the credential successfully', () async {
        final mockVC = CredentialFixtures.mockVerifiableCredential;
        when(() => mockService.addVerifiableCredentialToProfile(
              verifiableCredential: mockVC,
              profileId: profileId,
            )).thenAnswer((_) async => Future<void>.value());

        await storage.saveCredential(verifiableCredential: mockVC);
        verify(() => mockService.addVerifiableCredentialToProfile(
              verifiableCredential: mockVC,
              profileId: profileId,
            )).called(1);
      });
    });

    group('When deleting a credential', () {
      test('it should delete the credential successfully', () async {
        const credentialId = 'cred1';
        when(() => mockService.deleteClaimedCredential(nodeId: credentialId))
            .thenAnswer((_) async => Future<void>.value());

        await storage.deleteCredential(digitalCredentialId: credentialId);
        verify(() => mockService.deleteClaimedCredential(nodeId: credentialId))
            .called(1);
      });
    });

    group('When getting a credential by id', () {
      test('it should return the credential when found', () async {
        const credentialId = 'cred1';
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
              items: CredentialFixtures.mockCredentials,
              lastEvaluatedItemId: null,
            ));

        final result =
            await storage.getCredential(digitalCredentialId: credentialId);
        expect(result.id, equals(credentialId));
        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).called(1);
      });

      test('it should throw when credential not found', () async {
        const credentialId = 'non_existent';
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
              items: <DigitalCredential>[],
              lastEvaluatedItemId: null,
            ));

        expect(
          () => storage.getCredential(digitalCredentialId: credentialId),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('When querying credentials', () {
      test('it should throw not implemented exception', () async {
        expect(
          () => storage.query('test query'),
          throwsA(isA<TdkException>()),
        );
      });
    });

    group('When listing credentials with pagination', () {
      test('it should handle paginated results correctly', () async {
        final mockCreds = [
          DigitalCredential(
              id: 'cred1', verifiableCredential: MockVerifiableCredential()),
          DigitalCredential(
              id: 'cred2', verifiableCredential: MockVerifiableCredential()),
        ];

        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: 2,
              exclusiveStartItemId: null,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) => Future.value(PaginatedList(
              items: mockCreds,
              lastEvaluatedItemId: 'next_page_key',
            )));

        final result = await storage.listCredentials(limit: 2);

        expect(result.items, equals(mockCreds));
        expect(result.lastEvaluatedItemId, equals('next_page_key'));

        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: 2,
              exclusiveStartItemId: null,
              cancelToken: any(named: 'cancelToken'),
            )).called(1);
      });

      test('it should handle empty results from backend', () async {
        when(() => mockService.getDigitalCredentials(
              profileId,
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) => Future.value(PaginatedList(
              items: [],
              lastEvaluatedItemId: null,
            )));

        final result = await storage.listCredentials(limit: 2);
        expect(result.items, isEmpty);
        expect(result.lastEvaluatedItemId, isNull);

        verify(() => mockService.getDigitalCredentials(
              profileId,
              limit: 2,
              exclusiveStartItemId: null,
              cancelToken: any(named: 'cancelToken'),
            )).called(1);
      });
    });
  });
}
