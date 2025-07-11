import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';
import 'mocks/credential_mock_setup.dart';
import 'mocks/mock_edge_credential_repository.dart';
import 'mocks/mock_edge_encryption_service.dart';

void main() {
  late MockEdgeCredentialRepository mockRepository;
  late MockEdgeEncryptionService mockEncryptionService;
  late EdgeCredentialStorage storage;

  setUpAll(CredentialMockSetup.setupFallbackValues);

  setUp(() {
    mockRepository = MockEdgeCredentialRepository();
    mockEncryptionService = MockEdgeEncryptionService();

    storage = EdgeCredentialStorage(
      repository: mockRepository,
      id: CredentialFixtures.storageId,
      profileId: CredentialFixtures.profileId,
      encryptionService: mockEncryptionService,
    );

    CredentialMockSetup.setupCredentialRepositoryMocks(mockRepository);
    MockEncryptionServiceSetup.setupEncryptionServiceDefaults(
        mockEncryptionService);
  });

  group('When performing credential operations', () {
    test('should have correct id', () {
      expect(storage.id, equals(CredentialFixtures.storageId));
    });

    group('When saving credentials', () {
      test('should save credential successfully', () async {
        final mockVC = CredentialFixtures.mockVerifiableCredential;

        await storage.saveCredential(verifiableCredential: mockVC);

        verify(() => mockRepository.saveCredentialData(
              profileId: CredentialFixtures.profileId,
              credentialId: any(named: 'credentialId'),
              credentialName: 'UniversityDegree',
              credentialContent: any(named: 'credentialContent'),
              cancelToken: null,
            )).called(1);
      });

      test('should pass cancel token when provided', () async {
        final mockVC = CredentialFixtures.mockVerifiableCredential;
        final cancelToken = VaultCancelToken();

        await storage.saveCredential(
          verifiableCredential: mockVC,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.saveCredentialData(
              profileId: CredentialFixtures.profileId,
              credentialId: any(named: 'credentialId'),
              credentialName: 'UniversityDegree',
              credentialContent: any(named: 'credentialContent'),
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When getting credentials', () {
      test('should get credential successfully', () async {
        final result = await storage.getCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
        );

        expect(result.id, equals(CredentialFixtures.credentialId));
        verify(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: null,
            )).called(1);
      });

      test('should throw exception when credential not found', () async {
        when(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => null);

        expect(
          () => storage.getCredential(
            digitalCredentialId: CredentialFixtures.credentialId,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.credentialNotFound.code,
          )),
        );
      });

      test('should pass cancel token when provided', () async {
        final cancelToken = VaultCancelToken();

        await storage.getCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When listing credentials', () {
      test('should list credentials successfully', () async {
        final result = await storage.listCredentials();

        expect(result.items.length, equals(2));
        expect(result.items.first.id, equals(CredentialFixtures.credentialId));
        expect(result.items.last.id, equals('test-credential-id-2'));
        expect(result.lastEvaluatedItemId, equals('test-credential-id-2'));
        verify(() => mockRepository.listCredentialData(
              profileId: CredentialFixtures.profileId,
              limit: null,
              exclusiveStartItemId: null,
              cancelToken: null,
            )).called(1);
      });

      test('should handle empty credential list', () async {
        CredentialMockSetup.setupEmptyCredentialListMocks(mockRepository);

        final result = await storage.listCredentials();

        expect(result.items, isEmpty);
        expect(result.lastEvaluatedItemId, isNull);
      });

      test('should pass limit and exclusiveStartItemId when provided',
          () async {
        final result = await storage.listCredentials(
          limit: 10,
          exclusiveStartItemId: 'test-credential-id-1',
        );

        expect(result.items.length, equals(2));
        verify(() => mockRepository.listCredentialData(
              profileId: CredentialFixtures.profileId,
              limit: 10,
              exclusiveStartItemId: 'test-credential-id-1',
              cancelToken: null,
            )).called(1);
      });

      test('should pass cancel token when provided', () async {
        final cancelToken = VaultCancelToken();

        await storage.listCredentials(cancelToken: cancelToken);

        verify(() => mockRepository.listCredentialData(
              profileId: CredentialFixtures.profileId,
              limit: null,
              exclusiveStartItemId: null,
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When deleting credentials', () {
      test('should delete credential successfully', () async {
        await storage.deleteCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
        );

        verify(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: null,
            )).called(1);
        verify(() => mockRepository.deleteCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: null,
            )).called(1);
      });

      test('should throw exception when credential not found for deletion',
          () async {
        when(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => null);

        expect(
          () => storage.deleteCredential(
            digitalCredentialId: CredentialFixtures.credentialId,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.credentialNotFound.code,
          )),
        );

        verify(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: null,
            )).called(1);
        verifyNever(() => mockRepository.deleteCredential(
              credentialId: any(named: 'credentialId'),
              cancelToken: any(named: 'cancelToken'),
            ));
      });

      test('should pass cancel token when provided', () async {
        final cancelToken = VaultCancelToken();

        await storage.deleteCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.getCredentialData(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: cancelToken,
            )).called(1);
        verify(() => mockRepository.deleteCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: cancelToken,
            )).called(1);
      });
    });
  });
}
