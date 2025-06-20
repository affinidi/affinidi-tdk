import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';
import 'mocks/mock_edge_credential_repository.dart';

class FakeVerifiableCredential extends Fake implements VerifiableCredential {}

void main() {
  late MockEdgeCredentialRepository mockRepository;
  late VaultEdgeCredentialStorage storage;

  setUpAll(() {
    registerFallbackValue(DateTime.now());
    registerFallbackValue(FakeVerifiableCredential());
  });

  setUp(() {
    mockRepository = MockEdgeCredentialRepository();
    storage = VaultEdgeCredentialStorage(
      repository: mockRepository,
      id: CredentialFixtures.storageId,
      profileId: CredentialFixtures.profileId,
    );

    // Setup common mock responses
    when(() => mockRepository.saveCredential(
          profileId: any(named: 'profileId'),
          verifiableCredential: any(named: 'verifiableCredential'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.getCredential(
          credentialId: any(named: 'credentialId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => DigitalCredential(
          verifiableCredential: FakeVerifiableCredential(),
          id: CredentialFixtures.credentialId,
        ));

    when(() => mockRepository.listCredentials(
          profileId: any(named: 'profileId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => [
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: CredentialFixtures.credentialId,
          ),
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: 'test-credential-id-2',
          ),
        ]);

    when(() => mockRepository.deleteCredential(
          credentialId: any(named: 'credentialId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});
  });

  group('When performing credential operations', () {
    test('should have correct id', () {
      expect(storage.id, equals(CredentialFixtures.storageId));
    });

    group('When saving credentials', () {
      test('should save credential successfully', () async {
        final mockVC = FakeVerifiableCredential();

        await storage.saveCredential(verifiableCredential: mockVC);

        verify(() => mockRepository.saveCredential(
              profileId: CredentialFixtures.profileId,
              verifiableCredential: mockVC,
              cancelToken: null,
            )).called(1);
      });

      test('should pass cancel token when provided', () async {
        final mockVC = FakeVerifiableCredential();
        final cancelToken = VaultCancelToken();

        await storage.saveCredential(
          verifiableCredential: mockVC,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.saveCredential(
              profileId: CredentialFixtures.profileId,
              verifiableCredential: mockVC,
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When getting credentials', () {
      test('should get credential successfully', () async {
        final mockCredential = DigitalCredential(
          verifiableCredential: FakeVerifiableCredential(),
          id: CredentialFixtures.credentialId,
        );
        when(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredential);

        final result = await storage.getCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
        );

        expect(result, equals(mockCredential));
        verify(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: null,
            )).called(1);
      });

      test('should throw exception when credential not found', () async {
        when(() => mockRepository.getCredential(
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
        final mockCredential = DigitalCredential(
          verifiableCredential: FakeVerifiableCredential(),
          id: CredentialFixtures.credentialId,
        );
        when(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredential);

        await storage.getCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When listing credentials', () {
      test('should list credentials successfully', () async {
        final mockCredentials = [
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: CredentialFixtures.credentialId,
          ),
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: 'test-credential-id-2',
          ),
        ];
        when(() => mockRepository.listCredentials(
              profileId: any(named: 'profileId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredentials);

        final result = await storage.listCredentials();

        expect(result.items, equals(mockCredentials));
        expect(result.lastEvaluatedItemId, equals(mockCredentials.last.id));
        verify(() => mockRepository.listCredentials(
              profileId: CredentialFixtures.profileId,
              limit: null,
              exclusiveStartItemId: null,
              cancelToken: null,
            )).called(1);
      });

      test('should handle empty credential list', () async {
        when(() => mockRepository.listCredentials(
              profileId: any(named: 'profileId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => <DigitalCredential>[]);

        final result = await storage.listCredentials();

        expect(result.items, isEmpty);
        expect(result.lastEvaluatedItemId, isNull);
      });

      test('should pass limit and exclusiveStartItemId when provided',
          () async {
        const limit = 10;
        const exclusiveStartItemId = 'start-id';
        final mockCredentials = [
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: CredentialFixtures.credentialId,
          ),
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: 'test-credential-id-2',
          ),
        ];
        when(() => mockRepository.listCredentials(
              profileId: any(named: 'profileId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredentials);

        await storage.listCredentials(
          limit: limit,
          exclusiveStartItemId: exclusiveStartItemId,
        );

        verify(() => mockRepository.listCredentials(
              profileId: CredentialFixtures.profileId,
              limit: limit,
              exclusiveStartItemId: exclusiveStartItemId,
              cancelToken: null,
            )).called(1);
      });

      test('should pass cancel token when provided', () async {
        final cancelToken = VaultCancelToken();
        final mockCredentials = [
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: CredentialFixtures.credentialId,
          ),
          DigitalCredential(
            verifiableCredential: FakeVerifiableCredential(),
            id: 'test-credential-id-2',
          ),
        ];
        when(() => mockRepository.listCredentials(
              profileId: any(named: 'profileId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredentials);

        await storage.listCredentials(cancelToken: cancelToken);

        verify(() => mockRepository.listCredentials(
              profileId: CredentialFixtures.profileId,
              limit: null,
              exclusiveStartItemId: null,
              cancelToken: cancelToken,
            )).called(1);
      });
    });

    group('When deleting credentials', () {
      test('should delete credential successfully', () async {
        final mockCredential = DigitalCredential(
          verifiableCredential: FakeVerifiableCredential(),
          id: CredentialFixtures.credentialId,
        );
        when(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredential);

        await storage.deleteCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
        );

        verify(() => mockRepository.getCredential(
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
        when(() => mockRepository.getCredential(
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

        verify(() => mockRepository.getCredential(
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
        final mockCredential = DigitalCredential(
          verifiableCredential: FakeVerifiableCredential(),
          id: CredentialFixtures.credentialId,
        );
        when(() => mockRepository.getCredential(
              credentialId: CredentialFixtures.credentialId,
              cancelToken: any(named: 'cancelToken'),
            )).thenAnswer((_) async => mockCredential);

        await storage.deleteCredential(
          digitalCredentialId: CredentialFixtures.credentialId,
          cancelToken: cancelToken,
        );

        verify(() => mockRepository.getCredential(
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
