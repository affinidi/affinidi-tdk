import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_storages/src/credential/vfs_credential_storage.dart';
import 'package:affinidi_tdk_vault_storages/src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';
import 'mocks/mock_verifiable_credential.dart';

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {
  @override
  Future<void> addVerifiableCredentialToProfile({
    required VerifiableCredential verifiableCredential,
    required String profileId,
    AffinidiApiCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#addVerifiableCredentialToProfile, [], {
        #verifiableCredential: verifiableCredential,
        #profileId: profileId,
      }),
    ) as Future<void>;
  }

  @override
  Future<void> deleteClaimedCredential({
    required String nodeId,
    AffinidiApiCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#deleteClaimedCredential, [], {
        #nodeId: nodeId,
      }),
    ) as Future<void>;
  }

  @override
  Future<List<DigitalCredential>> getDigitalCredentials(
    String profileId, {
    AffinidiApiCancelToken? cancelToken,
  }) {
    return super.noSuchMethod(
      Invocation.method(#getDigitalCredentials, [profileId]),
    ) as Future<List<DigitalCredential>>;
  }
}

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
        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => mockCreds);

        final result = await storage.listCredentials();
        expect(result.length, equals(mockCreds.length));
        expect(result[0].id, equals(mockCreds[0].id));
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
      });

      test('it should handle empty credential list', () async {
        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => []);

        final result = await storage.listCredentials();
        expect(result, isEmpty);
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
      });

      test('it should handle multiple credentials', () async {
        final credentials = CredentialFixtures.mockMultipleCredentials;
        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => credentials);

        final result = await storage.listCredentials();
        expect(result.length, equals(2));
        expect(result[0].id, equals('cred1'));
        expect(result[1].id, equals('cred2'));
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
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
        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => CredentialFixtures.mockCredentials);

        final result =
            await storage.getCredential(digitalCredentialId: credentialId);
        expect(result.id, equals(credentialId));
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
      });

      test('it should throw when credential not found', () async {
        const credentialId = 'non_existent';
        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => []);

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
  });
}
