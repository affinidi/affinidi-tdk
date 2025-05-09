import 'dart:convert';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/src/credential/vfs_credential_storage.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'mocks/mock_digital_crendential.dart';
import 'mocks/mock_setup.dart';
import 'mocks/mock_vault_data_manager_service.dart';
import 'mocks/mock_verifiable_credential.dart';

void main() {
  group('VFS Credential Repository Tests', () {
    late VFSCredentialStorage credentialStorage;
    late MockVaultDataManagerService mockService;
    late MockVerifiableCredential mockVC;
    final testProfileId = base64.encode(utf8.encode('test-profile-id'));

    setUp(() async {
      mockService = MockVaultDataManagerService();
      credentialStorage = VFSCredentialStorage(
        id: 'test-id',
        dataManagerService: mockService,
        profileId: testProfileId,
      );
      mockVC = MockVerifiableCredential();

      registerFallbackValue(mockVC);
      registerFallbackValue(testProfileId);

      stubCredentialService(mockService, mockVC, profileId: testProfileId);

      final mockDigitalCredential =
          MockDigitalCredential(mockVC, id: 'test node Id');

      when(() => mockService.getDigitalCredentials(any()))
          .thenAnswer((_) async => [mockDigitalCredential]);

      when(() => mockService.addVerifiableCredentialToProfile(
            profileId: any(named: 'profileId'),
            verifiableCredential: any(named: 'verifiableCredential'),
          )).thenAnswer((_) async => {});

      when(() => mockService.deleteClaimedCredential(
            nodeId: any(named: 'nodeId'),
          )).thenAnswer((_) async => {});
    });

    group('When listing credentials', () {
      test('it should return a list of credentials', () async {
        final credentials = await credentialStorage.listCredentials();
        expect(credentials, isNotEmpty);
        expect(credentials.first, isA<DigitalCredential>());
        verify(() => mockService.getDigitalCredentials(testProfileId))
            .called(1);
      });
    });

    group('When saving credentials', () {
      test('it should save a credential successfully', () async {
        await credentialStorage.saveCredential(verifiableCredential: mockVC);
        verify(() => mockService.addVerifiableCredentialToProfile(
              profileId: testProfileId,
              verifiableCredential: mockVC,
            )).called(1);
      });
    });

    group('When deleting credentials', () {
      test('it should delete a credential successfully', () async {
        await credentialStorage.deleteCredential(
            digitalCredentialId: 'test node Id');
        verify(() => mockService.deleteClaimedCredential(
              nodeId: 'test node Id',
            )).called(1);
      });
    });

    group('When retrieving credentials', () {
      test('it should get a verifiable credential by ID', () async {
        final credential = await credentialStorage.getCredential(
          digitalCredentialId: 'test node Id',
        );
        expect(credential, isA<DigitalCredential>());
        verify(() => mockService.getDigitalCredentials(testProfileId))
            .called(1);
      });
    });
  });
}
