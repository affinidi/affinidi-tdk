import 'package:affinidi_tdk_vault_storages/src/services/credentials_service/credentials_service.dart';
import 'package:affinidi_tdk_vault_storages/src/services/vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/credential_fixtures.dart';

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerServiceInterface {}

void main() {
  late MockVaultDataManagerService mockService;
  late CredentialsService credentialsService;
  const profileId = 'test-profile-id';

  setUp(() {
    mockService = MockVaultDataManagerService();
    credentialsService = CredentialsService(
      vaultDataManagerService: mockService,
      profileId: profileId,
    );
  });

  group('When deleting a credential', () {
    group('and the credential exists', () {
      test('it should successfully delete the credential', () async {
        const credentialId = 'test-credential-id';

        when(() => mockService.deleteClaimedCredential(nodeId: credentialId))
            .thenAnswer((_) async => {});

        await credentialsService.delete(digitalCredentialId: credentialId);

        verify(() => mockService.deleteClaimedCredential(nodeId: credentialId))
            .called(1);
      });
    });

    group('and the service throws an error', () {
      test('it should propagate the error', () async {
        const credentialId = 'test-credential-id';
        final error = Exception('Service error');

        when(() => mockService.deleteClaimedCredential(nodeId: credentialId))
            .thenThrow(error);

        expect(
          () => credentialsService.delete(digitalCredentialId: credentialId),
          throwsA(error),
        );
      });
    });
  });

  group('When listing credentials', () {
    group('and no predicate is provided', () {
      test('it should return all credentials', () async {
        final credentials = CredentialFixtures.mockCredentials;

        when(() => mockService.getClaimedCredentialsByProfile(profileId))
            .thenAnswer((_) async => credentials);

        final result = await credentialsService.list();

        expect(result, equals(credentials));
        verify(() => mockService.getClaimedCredentialsByProfile(profileId))
            .called(1);
      });
    });

    group('and a predicate is provided', () {
      test('it should return only matching credentials', () async {
        final credentials = CredentialFixtures.mockCredentials;

        when(() => mockService.getClaimedCredentialsByProfile(profileId))
            .thenAnswer((_) async => credentials);

        final result = await credentialsService.list(
          (cred) => cred.id == 'cred1',
        );

        expect(result, hasLength(1));
        expect(result[0].id, equals('cred1'));
        verify(() => mockService.getClaimedCredentialsByProfile(profileId))
            .called(1);
      });
    });

    group('and the service throws an error', () {
      test('it should propagate the error', () async {
        final error = Exception('Service error');

        when(() => mockService.getClaimedCredentialsByProfile(profileId))
            .thenThrow(error);

        expect(
          () => credentialsService.list(),
          throwsA(error),
        );
      });
    });
  });

  group('When saving a credential', () {
    group('and the credential is valid', () {
      test('it should successfully save the credential', () async {
        final verifiableCredential =
            CredentialFixtures.mockVerifiableCredential;

        when(() => mockService.addVerifiableCredentialToProfile(
              profileId: profileId,
              verifiableCredential: verifiableCredential,
            )).thenAnswer((_) async => {});

        await credentialsService.save(
          verifiableCredential: verifiableCredential,
        );

        verify(() => mockService.addVerifiableCredentialToProfile(
              profileId: profileId,
              verifiableCredential: verifiableCredential,
            )).called(1);
      });
    });

    group('and the service throws an error', () {
      test('it should propagate the error', () async {
        final verifiableCredential =
            CredentialFixtures.mockVerifiableCredential;
        final error = Exception('Service error');

        when(() => mockService.addVerifiableCredentialToProfile(
              profileId: profileId,
              verifiableCredential: verifiableCredential,
            )).thenThrow(error);

        expect(
          () => credentialsService.save(
            verifiableCredential: verifiableCredential,
          ),
          throwsA(error),
        );
      });
    });
  });

  group('When listing nodes', () {
    group('and no predicate is provided', () {
      test('it should return all digital credentials', () async {
        final credentials = CredentialFixtures.mockCredentials;

        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => credentials);

        final result = await credentialsService.listNodes();

        expect(result, equals(credentials));
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
      });
    });

    group('and a predicate is provided', () {
      test('it should return only matching digital credentials', () async {
        final credentials = CredentialFixtures.mockCredentials;

        when(() => mockService.getDigitalCredentials(profileId))
            .thenAnswer((_) async => credentials);

        final result = await credentialsService.listNodes(
          (cred) => cred.id == 'cred1',
        );

        expect(result, hasLength(1));
        expect(result[0].id, equals('cred1'));
        verify(() => mockService.getDigitalCredentials(profileId)).called(1);
      });
    });

    group('and the service throws an error', () {
      test('it should propagate the error', () async {
        final error = Exception('Service error');

        when(() => mockService.getDigitalCredentials(profileId))
            .thenThrow(error);

        expect(
          () => credentialsService.listNodes(),
          throwsA(error),
        );
      });
    });
  });
}
