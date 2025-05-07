import 'package:mocktail/mocktail.dart';

import '../fixtures/node_fixtures.dart';
import 'mock_digital_crendential.dart';
import 'mock_vault_data_manager_service.dart';
import 'mock_verifiable_credential.dart';

void stubFileService(MockVaultDataManagerService service,
    {String profileId = 'test-profile-id'}) {
  when(() => service.createFolder(
        parentNodeId: any(named: 'parentNodeId'),
        folderName: any(named: 'folderName'),
      )).thenAnswer((_) async => {});

  when(() => service.getChildNodes(nodeId: any(named: 'nodeId')))
      .thenAnswer((_) async => []);

  when(() => service.createFile(
        parentFolderNodeId: any(named: 'parentFolderNodeId'),
        fileName: any(named: 'fileName'),
        data: any(named: 'data'),
      )).thenAnswer((_) async => {});

  when(() => service.deleteFolder(any())).thenAnswer((_) async => {});
  when(() => service.deleteFile(any())).thenAnswer((_) async => {});

  when(() => service.renameFolder(
        nodeId: any(named: 'nodeId'),
        newName: any(named: 'newName'),
      )).thenAnswer((_) async => {});

  when(() => service.renameFile(
        nodeId: any(named: 'nodeId'),
        newName: any(named: 'newName'),
      )).thenAnswer((_) async => {});

  when(() => service.getNodeInfo(any()))
      .thenAnswer((_) async => NodeFixtures.mockFileNode(profileId));

  when(() => service.downloadFile(nodeId: any(named: 'nodeId')))
      .thenAnswer((_) async => [1, 2, 3]);
}

void stubCredentialService(
  MockVaultDataManagerService service,
  MockVerifiableCredential mockVC, {
  String profileId = 'test-profile-id',
}) {
  when(() => service.getDigitalCredentials(any())).thenAnswer(
      (_) async => [MockDigitalCredential(mockVC, id: 'test-node-id')]);

  when(() => service.addVerifiableCredentialToProfile(
        profileId: any(named: 'profileId'),
        verifiableCredential: any(named: 'verifiableCredential'),
      )).thenAnswer((_) async => {});

  when(() => service.deleteClaimedCredential(
        nodeId: any(named: 'nodeId'),
      )).thenAnswer((_) async => {});
}
