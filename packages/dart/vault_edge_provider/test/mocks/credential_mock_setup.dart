import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';

import '../fixtures/credential_fixtures.dart';
import 'mock_edge_credential_repository.dart';

class CredentialMockSetup {
  static void setupFallbackValues() {
    registerFallbackValue(CredentialFixtures.mockVerifiableCredential);
    registerFallbackValue(Uint8List(0));
  }

  static void setupCredentialRepositoryMocks(
    MockEdgeCredentialRepository mockRepository,
  ) {
    when(() => mockRepository.saveCredentialData(
          profileId: any(named: 'profileId'),
          credentialId: any(named: 'credentialId'),
          credentialName: any(named: 'credentialName'),
          credentialContent: any(named: 'credentialContent'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.getCredentialData(
          credentialId: any(named: 'credentialId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => CredentialFixtures.mockCredentialData);

    when(() => mockRepository.listCredentialData(
          profileId: any(named: 'profileId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => CredentialFixtures.mockCredentialDataList);

    when(() => mockRepository.getLastEvaluatedItemId(
          profileId: any(named: 'profileId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => 'test-credential-id-2');

    when(() => mockRepository.deleteCredential(
          credentialId: any(named: 'credentialId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async {});
  }

  static void setupEmptyCredentialListMocks(
    MockEdgeCredentialRepository mockRepository,
  ) {
    when(() => mockRepository.listCredentialData(
          profileId: any(named: 'profileId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => <EdgeCredential>[]);

    when(() => mockRepository.getLastEvaluatedItemId(
          profileId: any(named: 'profileId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
          cancelToken: any(named: 'cancelToken'),
        )).thenAnswer((_) async => null);
  }
}
