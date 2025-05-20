import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/node_fixtures.dart';
import 'mocks/mock_registrations.dart';
import 'mocks/mock_setup.dart';
import 'mocks/mock_vault_data_manager_service.dart';

void main() {
  setUpAll(registerAllFallbackValues);

  group('VFS File Repository Tests', () {
    late VFSFileStorage vfsFileStorage;
    late MockVaultDataManagerService mockService;
    const testProfileId = 'test-profile-id';

    setUp(() {
      mockService = MockVaultDataManagerService();
      vfsFileStorage =
          VFSFileStorage(id: 'test-id', dataManagerService: mockService);

      stubFileService(mockService);
    });

    tearDown(() {
      reset(mockService);
    });

    group('When performing create operations', () {
      test('it should create a folder successfully', () async {
        final mockFolder = NodeFixtures.mockFolderNode(testProfileId);
        when(() => mockService.getChildNodes(nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => [mockFolder]);

        await vfsFileStorage.createFolder(
          folderName: 'test-folder',
          parentFolderId: 'parent-id',
        );

        verify(() => mockService.createFolder(
              parentNodeId: 'parent-id',
              folderName: 'test-folder',
            )).called(1);
      });

      test('it should create a file successfully', () async {
        final testData = Uint8List.fromList([1, 2, 3]);

        await vfsFileStorage.createFile(
          fileName: 'test.txt',
          data: testData,
          parentFolderId: 'parent-id',
        );

        verify(() => mockService.createFile(
              parentFolderNodeId: 'parent-id',
              fileName: 'test.txt',
              data: testData,
            )).called(1);
      });
    });

    group('When performing read operations', () {
      test('it should get folder contents successfully', () async {
        final mockFile = NodeFixtures.mockFileNode(testProfileId);
        final mockFolder = NodeFixtures.mockFolderNode(testProfileId);

        when(() => mockService.getChildNodes(nodeId: 'folder-id'))
            .thenAnswer((_) async => [mockFile, mockFolder]);

        final items = await vfsFileStorage.getFolder(folderId: 'folder-id');

        expect(items, hasLength(2));
        expect(items.whereType<File>(), hasLength(1));
        expect(items.whereType<Folder>(), hasLength(1));
      });

      test('it should retrieve a file by ID', () async {
        final mockNode = NodeFixtures.mockFileNode(testProfileId);
        when(() => mockService.getNodeInfo('file-id'))
            .thenAnswer((_) async => mockNode);

        final file = await vfsFileStorage.getFile(fileId: 'file-id');

        expect(file, isA<File>());
        expect(file.name, equals(mockNode.name));
      });

      test('it should retrieve file content', () async {
        final content = Uint8List.fromList([1, 2, 3]);
        when(() => mockService.downloadFile(nodeId: 'file-id'))
            .thenAnswer((_) async => content);

        final result = await vfsFileStorage.getFileContent(fileId: 'file-id');

        expect(result, equals(content));
      });

      test('createFile should work with null parentFolderId (root)', () async {
        final testData = Uint8List.fromList([1, 2, 3]);

        await vfsFileStorage.createFile(
          fileName: 'test.txt',
          data: testData,
          parentFolderId: null,
        );

        verify(() => mockService.createFile(
              parentFolderNodeId: '',
              fileName: 'test.txt',
              data: testData,
            )).called(1);
      });

      test('createFolder should throw if folder not found after creation',
          () async {
        when(() => mockService.getChildNodes(nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => []);

        expect(
          () => vfsFileStorage.createFolder(
            folderName: 'missing-folder',
            parentFolderId: 'parent-id',
          ),
          throwsA(isA<TdkException>()),
        );
      });

      test('getFolder should throw if folderId is null', () async {
        expect(
          () => vfsFileStorage.getFolder(folderId: null),
          throwsA(isA<TdkException>()),
        );
      });

      test('getFolder should throw for unsupported node type', () async {
        final unsupportedNode = Node(
          name: NodeFixtures.mockFileNode(testProfileId).name,
          nodeId: NodeFixtures.mockFileNode(testProfileId).nodeId,
          type: NodeType.values
              .lastWhere((t) => t != NodeType.FILE && t != NodeType.FOLDER),
          status: NodeFixtures.mockFileNode(testProfileId).status,
          createdAt: NodeFixtures.mockFileNode(testProfileId).createdAt,
          modifiedAt: NodeFixtures.mockFileNode(testProfileId).modifiedAt,
          createdBy: NodeFixtures.mockFileNode(testProfileId).createdBy,
          modifiedBy: NodeFixtures.mockFileNode(testProfileId).modifiedBy,
          consumerId: NodeFixtures.mockFileNode(testProfileId).consumerId,
          fileCount: NodeFixtures.mockFileNode(testProfileId).fileCount,
          profileCount: NodeFixtures.mockFileNode(testProfileId).profileCount,
          folderCount: NodeFixtures.mockFileNode(testProfileId).folderCount,
          profileId: testProfileId,
        );

        when(() => mockService.getChildNodes(nodeId: 'folder-id'))
            .thenAnswer((_) async => [unsupportedNode]);

        expect(
          () => vfsFileStorage.getFolder(folderId: 'folder-id'),
          throwsA(isA<TdkException>()),
        );
      });

      test('getFolder should return empty list if no children', () async {
        when(() => mockService.getChildNodes(nodeId: 'folder-id'))
            .thenAnswer((_) async => []);

        final items = await vfsFileStorage.getFolder(folderId: 'folder-id');
        expect(items, isEmpty);
      });
    });

    group('When performing update operations', () {
      test('it should rename a folder', () async {
        await vfsFileStorage.renameFolder(
          folderId: 'folder-id',
          newName: 'new-name',
        );

        verify(() => mockService.renameFolder(
              nodeId: 'folder-id',
              newName: 'new-name',
            )).called(1);
      });

      test('it should rename a file', () async {
        await vfsFileStorage.renameFile(
          fileId: 'file-id',
          newName: 'new-name',
        );

        verify(() => mockService.renameFile(
              nodeId: 'file-id',
              newName: 'new-name',
            )).called(1);
      });
    });

    group('When performing delete operations', () {
      test('it should delete a folder', () async {
        await vfsFileStorage.deleteFolder(folderId: 'folder-id');
        verify(() => mockService.deleteFolder('folder-id')).called(1);
      });

      test('it should delete a file', () async {
        await vfsFileStorage.deleteFile(fileId: 'file-id');
        verify(() => mockService.deleteFile('file-id')).called(1);
      });
    });

    group('When handling errors', () {
      test(
          'it should throw an error if getFile is called with folder node type',
          () async {
        final mockFolderNode = NodeFixtures.mockFolderNode(testProfileId);
        when(() => mockService.getNodeInfo('folder-id'))
            .thenAnswer((_) async => mockFolderNode);

        expect(
          () => vfsFileStorage.getFile(fileId: 'folder-id'),
          throwsA(isA<TdkException>()),
        );
      });
    });
  });
}
