import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/file_fixtures.dart';
import 'mocks/mock_registrations.dart';
import 'mocks/mock_setup.dart';
import 'mocks/mock_vault_data_manager_service.dart';

void main() {
  setUpAll(registerAllFallbackValues);

  group('VFSFileStorage', () {
    late VFSFileStorage vfsFileStorage;
    late MockVaultDataManagerService mockService;

    setUp(() {
      mockService = MockVaultDataManagerService();
      vfsFileStorage = VFSFileStorage(
        id: 'test-id',
        dataManagerService: mockService,
      );

      stubFileService(mockService);
    });

    tearDown(() {
      reset(mockService);
    });

    group('When creating resources', () {
      group('and creating a folder', () {
        test('it should create a folder successfully', () async {
          when(() => mockService.getChildNodes(nodeId: any(named: 'nodeId')))
              .thenAnswer((_) async => [FileFixtures.mockFolderNode]);

          await vfsFileStorage.createFolder(
            folderName: FileFixtures.testFolderName,
            parentFolderId: FileFixtures.testParentId,
          );

          verify(() => mockService.createFolder(
                parentNodeId: FileFixtures.testParentId,
                folderName: FileFixtures.testFolderName,
              )).called(1);
        });

        test('it should throw if folder not found after creation', () async {
          when(() => mockService.getChildNodes(nodeId: any(named: 'nodeId')))
              .thenAnswer((_) async => []);

          expect(
            () => vfsFileStorage.createFolder(
              folderName: 'missing-folder',
              parentFolderId: FileFixtures.testParentId,
            ),
            throwsA(isA<TdkException>()),
          );
        });
      });

      group('and creating a file', () {
        test('it should create a file successfully', () async {
          await vfsFileStorage.createFile(
            fileName: FileFixtures.testFileName,
            data: FileFixtures.testData,
            parentFolderId: FileFixtures.testParentId,
          );

          verify(() => mockService.createFile(
                parentFolderNodeId: FileFixtures.testParentId,
                fileName: FileFixtures.testFileName,
                data: FileFixtures.testData,
              )).called(1);
        });

        test('it should work with null parentFolderId (root)', () async {
          await vfsFileStorage.createFile(
            fileName: FileFixtures.testFileName,
            data: FileFixtures.testData,
            parentFolderId: null,
          );

          verify(() => mockService.createFile(
                parentFolderNodeId: '',
                fileName: FileFixtures.testFileName,
                data: FileFixtures.testData,
              )).called(1);
        });
      });
    });

    group('When reading resources', () {
      group('and getting folder contents', () {
        test('it should get folder contents successfully', () async {
          when(() =>
                  mockService.getChildNodes(nodeId: FileFixtures.testFolderId))
              .thenAnswer((_) async =>
                  [FileFixtures.mockFileNode, FileFixtures.mockFolderNode]);

          final items = await vfsFileStorage.getFolder(
              folderId: FileFixtures.testFolderId);

          expect(items, hasLength(2));
          expect(items.whereType<File>(), hasLength(1));
          expect(items.whereType<Folder>(), hasLength(1));
        });

        test('it should throw if folderId is null', () async {
          expect(
            () => vfsFileStorage.getFolder(folderId: null),
            throwsA(isA<TdkException>()),
          );
        });

        test('it should throw for unsupported node type', () async {
          when(() =>
                  mockService.getChildNodes(nodeId: FileFixtures.testFolderId))
              .thenAnswer((_) async => [FileFixtures.unsupportedNode]);

          expect(
            () => vfsFileStorage.getFolder(folderId: FileFixtures.testFolderId),
            throwsA(isA<TdkException>()),
          );
        });

        test('it should return empty list if no children', () async {
          when(() =>
                  mockService.getChildNodes(nodeId: FileFixtures.testFolderId))
              .thenAnswer((_) async => []);

          final items = await vfsFileStorage.getFolder(
              folderId: FileFixtures.testFolderId);
          expect(items, isEmpty);
        });
      });

      group('and getting file information', () {
        test('it should retrieve a file by ID', () async {
          when(() => mockService.getNodeInfo(FileFixtures.testFileId))
              .thenAnswer((_) async => FileFixtures.mockFileNode);

          final file =
              await vfsFileStorage.getFile(fileId: FileFixtures.testFileId);

          expect(file, isA<File>());
          expect(file.name, equals(FileFixtures.mockFileNode.name));
        });

        test('it should throw if getFile is called with folder node type',
            () async {
          when(() => mockService.getNodeInfo(FileFixtures.testFolderId))
              .thenAnswer((_) async => FileFixtures.mockFolderNode);

          expect(
            () => vfsFileStorage.getFile(fileId: FileFixtures.testFolderId),
            throwsA(isA<TdkException>()),
          );
        });
      });

      group('and getting file content', () {
        test('it should retrieve file content', () async {
          when(() => mockService.downloadFile(nodeId: FileFixtures.testFileId))
              .thenAnswer((_) async => FileFixtures.testData);

          final result = await vfsFileStorage.getFileContent(
              fileId: FileFixtures.testFileId);

          expect(result, equals(FileFixtures.testData));
        });
      });
    });

    group('When updating resources', () {
      test('it should rename a folder', () async {
        await vfsFileStorage.renameFolder(
          folderId: FileFixtures.testFolderId,
          newName: FileFixtures.testNewName,
        );

        verify(() => mockService.renameFolder(
              nodeId: FileFixtures.testFolderId,
              newName: FileFixtures.testNewName,
            )).called(1);
      });

      test('it should rename a file', () async {
        await vfsFileStorage.renameFile(
          fileId: FileFixtures.testFileId,
          newName: FileFixtures.testNewName,
        );

        verify(() => mockService.renameFile(
              nodeId: FileFixtures.testFileId,
              newName: FileFixtures.testNewName,
            )).called(1);
      });
    });

    group('When deleting resources', () {
      test('it should delete a folder', () async {
        await vfsFileStorage.deleteFolder(folderId: FileFixtures.testFolderId);
        verify(() => mockService.deleteFolder(FileFixtures.testFolderId))
            .called(1);
      });

      test('it should delete a file', () async {
        await vfsFileStorage.deleteFile(fileId: FileFixtures.testFileId);
        verify(() => mockService.deleteFile(FileFixtures.testFileId)).called(1);
      });
    });
  });
}
