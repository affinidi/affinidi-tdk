import 'dart:typed_data';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node.dart';
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
      )).thenAnswer((_) async => Future<void>.value());

  when(() => service.getChildNodes(nodeId: any(named: 'nodeId'))).thenAnswer(
      (_) async => PaginatedList<Node>(items: [], lastEvaluatedItemId: null));

  when(() => service.createFile(
        parentFolderNodeId: any(named: 'parentFolderNodeId'),
        fileName: any(named: 'fileName'),
        data: any(named: 'data'),
      )).thenAnswer((_) async => Future<void>.value());

  when(() => service.deleteFolder(any()))
      .thenAnswer((_) async => Future<void>.value());
  when(() => service.deleteFile(any()))
      .thenAnswer((_) async => Future<void>.value());

  when(() => service.renameFolder(
        nodeId: any(named: 'nodeId'),
        newName: any(named: 'newName'),
      )).thenAnswer((_) async => Future<void>.value());

  when(() => service.renameFile(
        nodeId: any(named: 'nodeId'),
        newName: any(named: 'newName'),
      )).thenAnswer((_) async => Future<void>.value());

  when(() => service.getNodeInfo(any()))
      .thenAnswer((_) async => NodeFixtures.mockFileNode(profileId));

  when(() => service.downloadFile(nodeId: any(named: 'nodeId')))
      .thenAnswer((_) async => Uint8List.fromList([1, 2, 3]));
}

void stubCredentialService(
  MockVaultDataManagerService service,
  MockVerifiableCredential mockVC, {
  String profileId = 'test-profile-id',
}) {
  when(() => service.getDigitalCredentials(
        any(),
        limit: any(named: 'limit'),
        exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
        cancelToken: any(named: 'cancelToken'),
      )).thenAnswer((_) async => PaginatedList<DigitalCredential>(
        items: [MockDigitalCredential(mockVC, id: 'test-node-id')],
        lastEvaluatedItemId: null,
      ));

  when(() => service.addVerifiableCredentialToProfile(
        profileId: any(named: 'profileId'),
        verifiableCredential: any(named: 'verifiableCredential'),
      )).thenAnswer((_) async => Future<void>.value());

  when(() => service.deleteClaimedCredential(
        nodeId: any(named: 'nodeId'),
      )).thenAnswer((_) async => Future<void>.value());
}
