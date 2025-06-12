import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_type.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/vfs_shared_storage_fixtures.dart';

class MockVaultDataManagerService extends Mock
    implements VaultDataManagerService {}

void main() {
  late VfsSharedStorage storage;
  late MockVaultDataManagerService mockDataManagerService;

  setUpAll(() {
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(NodeFixtures.testFileNode);
    registerFallbackValue(CredentialFixtures.testVerifiableCredential);
  });

  setUp(() {
    mockDataManagerService = MockVaultDataManagerService();

    when(() =>
            mockDataManagerService.getChildNodes(nodeId: any(named: 'nodeId')))
        .thenAnswer(
            (_) async => Page<Node>(items: [], lastEvaluatedItemId: null));
    when(() => mockDataManagerService.createFile(
          fileName: any(named: 'fileName'),
          parentFolderNodeId: any(named: 'parentFolderNodeId'),
          data: any(named: 'data'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.createFolder(
          folderName: any(named: 'folderName'),
          parentNodeId: any(named: 'parentNodeId'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteFile(any()))
        .thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteFolder(any()))
        .thenAnswer((_) async {});
    when(() => mockDataManagerService.getNodeInfo(any()))
        .thenAnswer((_) async => NodeFixtures.testFileNode);
    when(() =>
            mockDataManagerService.downloadFile(nodeId: any(named: 'nodeId')))
        .thenAnswer((_) async => FileFixtures.testData);
    when(() => mockDataManagerService.renameFile(
          nodeId: any(named: 'nodeId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.renameFolder(
          nodeId: any(named: 'nodeId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteClaimedCredential(
        nodeId: any(named: 'nodeId'))).thenAnswer((_) async {});
    when(() => mockDataManagerService.getDigitalCredentials(any()))
        .thenAnswer((_) async => Page<DigitalCredential>(
              items: <DigitalCredential>[],
              lastEvaluatedItemId: null,
            ));
    when(() => mockDataManagerService.addVerifiableCredentialToProfile(
          profileId: any(named: 'profileId'),
          verifiableCredential: any(named: 'verifiableCredential'),
        )).thenAnswer((_) async {});

    storage = VfsSharedStorage(
      id: VfsSharedStorageFixtures.testId,
      dataManagerService: mockDataManagerService,
      sharedProfileId: VfsSharedStorageFixtures.testSharedProfileId,
    );
  });

  group('VfsSharedStorage', () {
    test('id getter returns correct value', () {
      expect(storage.id, equals(VfsSharedStorageFixtures.testId));
    });

    group('File operations', () {
      test('getFolder returns items from file storage', () async {
        final expectedItems = [NodeFixtures.testFileNode];
        when(() => mockDataManagerService
                .getChildNodes(nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => Page<Node>(
                  items: expectedItems,
                  lastEvaluatedItemId: null,
                ));

        final result = await storage.getFolder();
        expect(result.items.length, equals(1));
        expect(result.items[0].id, equals('1'));
        expect(result.items[0].name, equals(NodeFixtures.testNodeName));
        verify(() => mockDataManagerService.getChildNodes(
            nodeId: VfsSharedStorageFixtures.testSharedProfileId)).called(1);
      });

      test('createFile delegates to file storage', () async {
        final testData = FileFixtures.testData;
        when(() => mockDataManagerService.createFile(
              fileName: any(named: 'fileName'),
              parentFolderNodeId: any(named: 'parentFolderNodeId'),
              data: any(named: 'data'),
            )).thenAnswer((_) async {});

        await storage.createFile(
          fileName: FileFixtures.testFileName,
          data: testData,
          parentFolderId: NodeFixtures.testParentId,
        );

        verify(() => mockDataManagerService.createFile(
              fileName: FileFixtures.testFileName,
              parentFolderNodeId: NodeFixtures.testParentId,
              data: testData,
            )).called(1);
      });

      test('createFolder delegates to file storage', () async {
        when(() => mockDataManagerService.createFolder(
              folderName: any(named: 'folderName'),
              parentNodeId: any(named: 'parentNodeId'),
            )).thenAnswer((_) async {});

        final folderNode = Node(
          nodeId: '1',
          status: NodeStatus.CREATED,
          name: FileFixtures.testFolderName,
          consumerId: NodeFixtures.testConsumerId,
          parentNodeId: NodeFixtures.testParentId,
          profileId: NodeFixtures.testProfileId,
          createdAt: DateTime.now().toIso8601String(),
          modifiedAt: DateTime.now().toIso8601String(),
          createdBy: NodeFixtures.testUser,
          modifiedBy: NodeFixtures.testUser,
          type: NodeType.FOLDER,
          fileCount: 0,
          profileCount: 0,
          folderCount: 0,
        );

        when(() => mockDataManagerService.getChildNodes(
                nodeId: NodeFixtures.testParentId))
            .thenAnswer((_) async => Page<Node>(
                  items: [folderNode],
                  lastEvaluatedItemId: null,
                ));

        await storage.createFolder(
          folderName: FileFixtures.testFolderName,
          parentFolderId: NodeFixtures.testParentId,
        );

        verify(() => mockDataManagerService.createFolder(
              folderName: FileFixtures.testFolderName,
              parentNodeId: NodeFixtures.testParentId,
            )).called(1);
      });

      test('deleteFile delegates to file storage', () async {
        when(() => mockDataManagerService.deleteFile(any()))
            .thenAnswer((_) async {});

        await storage.deleteFile(fileId: FileFixtures.testFileId);

        verify(() => mockDataManagerService.deleteFile(FileFixtures.testFileId))
            .called(1);
      });

      test('deleteFolder delegates to file storage', () async {
        when(() => mockDataManagerService.deleteFolder(any()))
            .thenAnswer((_) async {});

        await storage.deleteFolder(folderId: FileFixtures.testFolderId);

        verify(() =>
                mockDataManagerService.deleteFolder(FileFixtures.testFolderId))
            .called(1);
      });

      test('getFile delegates to file storage', () async {
        final fileNode = Node(
          nodeId: '1',
          status: NodeStatus.CREATED,
          name: FileFixtures.testFileName,
          consumerId: NodeFixtures.testConsumerId,
          parentNodeId: NodeFixtures.testParentId,
          profileId: NodeFixtures.testProfileId,
          createdAt: DateTime.now().toIso8601String(),
          modifiedAt: DateTime.now().toIso8601String(),
          createdBy: NodeFixtures.testUser,
          modifiedBy: NodeFixtures.testUser,
          type: NodeType.FILE,
          fileCount: 0,
          profileCount: 0,
          folderCount: 0,
        );

        when(() => mockDataManagerService.getNodeInfo(any()))
            .thenAnswer((_) async => fileNode);

        final result = await storage.getFile(fileId: FileFixtures.testFileId);

        expect(result.id, equals('1'));
        expect(result.name, equals(FileFixtures.testFileName));
        verify(() =>
                mockDataManagerService.getNodeInfo(FileFixtures.testFileId))
            .called(1);
      });

      test('getFileContent delegates to file storage', () async {
        final expectedContent = FileFixtures.testData;
        when(() => mockDataManagerService.downloadFile(
                nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => expectedContent);

        final result =
            await storage.getFileContent(fileId: FileFixtures.testFileId);

        expect(result, equals(expectedContent));
        verify(() => mockDataManagerService.downloadFile(
            nodeId: FileFixtures.testFileId)).called(1);
      });

      test('renameFile delegates to file storage', () async {
        when(() => mockDataManagerService.renameFile(
              nodeId: any(named: 'nodeId'),
              newName: any(named: 'newName'),
            )).thenAnswer((_) async {});

        await storage.renameFile(
            fileId: FileFixtures.testFileId, newName: FileFixtures.testNewName);

        verify(() => mockDataManagerService.renameFile(
              nodeId: FileFixtures.testFileId,
              newName: FileFixtures.testNewName,
            )).called(1);
      });

      test('renameFolder delegates to file storage', () async {
        when(() => mockDataManagerService.renameFolder(
              nodeId: any(named: 'nodeId'),
              newName: any(named: 'newName'),
            )).thenAnswer((_) async {});

        await storage.renameFolder(
            folderId: FileFixtures.testFolderId,
            newName: FileFixtures.testNewName);

        verify(() => mockDataManagerService.renameFolder(
              nodeId: FileFixtures.testFolderId,
              newName: FileFixtures.testNewName,
            )).called(1);
      });
    });

    group('Credential operations', () {
      test('deleteCredential delegates to credential storage', () async {
        when(() => mockDataManagerService.deleteClaimedCredential(
              nodeId: any(named: 'nodeId'),
            )).thenAnswer((_) async {});

        await storage.deleteCredential(
            digitalCredentialId: CredentialFixtures.testCredentialId);

        verify(() => mockDataManagerService.deleteClaimedCredential(
              nodeId: CredentialFixtures.testCredentialId,
            )).called(1);
      });

      test('getCredential delegates to credential storage', () async {
        final expectedCredential = CredentialFixtures.testDigitalCredential;
        when(() => mockDataManagerService.getDigitalCredentials(any()))
            .thenAnswer((_) async => Page<DigitalCredential>(
                  items: [expectedCredential],
                  lastEvaluatedItemId: null,
                ));

        final result = await storage.getCredential(
            digitalCredentialId: CredentialFixtures.testCredentialId);

        expect(result, equals(expectedCredential));
        verify(() => mockDataManagerService.getDigitalCredentials(
            VfsSharedStorageFixtures.testSharedProfileId)).called(1);
      });

      test('listCredentials delegates to credential storage', () async {
        final expectedCredential = CredentialFixtures.testDigitalCredential;
        when(() => mockDataManagerService.getDigitalCredentials(any()))
            .thenAnswer((_) async => Page<DigitalCredential>(
                  items: [expectedCredential],
                  lastEvaluatedItemId: null,
                ));

        final result = await storage.listCredentials();

        expect(result.items.length, equals(1));
        expect(result.items[0], equals(expectedCredential));
        verify(() => mockDataManagerService.getDigitalCredentials(
            VfsSharedStorageFixtures.testSharedProfileId)).called(1);
      });

      test('saveCredential delegates to credential storage', () async {
        final testCredential = CredentialFixtures.testVerifiableCredential;
        when(() => mockDataManagerService.addVerifiableCredentialToProfile(
              profileId: any(named: 'profileId'),
              verifiableCredential: any(named: 'verifiableCredential'),
            )).thenAnswer((_) async {});

        await storage.saveCredential(verifiableCredential: testCredential);

        verify(() => mockDataManagerService.addVerifiableCredentialToProfile(
              profileId: VfsSharedStorageFixtures.testSharedProfileId,
              verifiableCredential: testCredential,
            )).called(1);
      });
    });

    test('query throws UnimplementedError', () {
      expect(() => storage.query('test-query'), throwsUnimplementedError);
    });
  });
}
