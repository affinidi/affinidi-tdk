import 'package:affinidi_tdk_vault_storages/src/services/storage_service/storage_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/storage_service_fixtures.dart';
import 'mocks/mock_vault_data_manager_service.dart';

void main() {
  late MockVaultDataManagerService mockService;
  late StorageService storageService;

  setUp(() {
    mockService = MockVaultDataManagerService();
    storageService = StorageService(
      vaultDataManagerService: mockService,
      profileId: StorageServiceFixtures.profileId,
    );
  });

  group('StorageService', () {
    group('When adding a file', () {
      group('and parent folder is specified', () {
        test('it should create the file in the specified folder', () async {
          when(() => mockService.createFile(
                fileName: StorageServiceFixtures.fileName,
                parentFolderNodeId: StorageServiceFixtures.parentFolderId,
                data: StorageServiceFixtures.testData,
              )).thenAnswer((_) async => {});

          await storageService.addFile(
            fileName: StorageServiceFixtures.fileName,
            parentFolderNodeId: StorageServiceFixtures.parentFolderId,
            data: StorageServiceFixtures.testData,
          );

          verify(() => mockService.createFile(
                fileName: StorageServiceFixtures.fileName,
                parentFolderNodeId: StorageServiceFixtures.parentFolderId,
                data: StorageServiceFixtures.testData,
              )).called(1);
        });
      });

      group('and parent folder is not specified', () {
        test('it should create the file in the profile root', () async {
          when(() => mockService.createFile(
                fileName: StorageServiceFixtures.fileName,
                parentFolderNodeId: StorageServiceFixtures.profileId,
                data: StorageServiceFixtures.testData,
              )).thenAnswer((_) async => {});

          await storageService.addFile(
            fileName: StorageServiceFixtures.fileName,
            data: StorageServiceFixtures.testData,
          );

          verify(() => mockService.createFile(
                fileName: StorageServiceFixtures.fileName,
                parentFolderNodeId: StorageServiceFixtures.profileId,
                data: StorageServiceFixtures.testData,
              )).called(1);
        });
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.createFile(
                fileName: StorageServiceFixtures.fileName,
                parentFolderNodeId: StorageServiceFixtures.profileId,
                data: StorageServiceFixtures.testData,
              )).thenThrow(error);

          expect(
            () => storageService.addFile(
              fileName: StorageServiceFixtures.fileName,
              data: StorageServiceFixtures.testData,
            ),
            throwsA(error),
          );
        });
      });
    });

    group('When creating a folder', () {
      group('and parent folder is specified', () {
        test('it should create the folder in the specified location', () async {
          when(() => mockService.createFolder(
                folderName: StorageServiceFixtures.folderName,
                parentNodeId: StorageServiceFixtures.parentFolderId,
              )).thenAnswer((_) async => {});

          await storageService.createFolder(
            folderName: StorageServiceFixtures.folderName,
            parentNodeId: StorageServiceFixtures.parentFolderId,
          );

          verify(() => mockService.createFolder(
                folderName: StorageServiceFixtures.folderName,
                parentNodeId: StorageServiceFixtures.parentFolderId,
              )).called(1);
        });
      });

      group('and parent folder is not specified', () {
        test('it should create the folder in the profile root', () async {
          when(() => mockService.createFolder(
                folderName: StorageServiceFixtures.folderName,
                parentNodeId: StorageServiceFixtures.profileId,
              )).thenAnswer((_) async => {});

          await storageService.createFolder(
            folderName: StorageServiceFixtures.folderName,
          );

          verify(() => mockService.createFolder(
                folderName: StorageServiceFixtures.folderName,
                parentNodeId: StorageServiceFixtures.profileId,
              )).called(1);
        });
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.createFolder(
                folderName: StorageServiceFixtures.folderName,
                parentNodeId: StorageServiceFixtures.profileId,
              )).thenThrow(error);

          expect(
            () => storageService.createFolder(
              folderName: StorageServiceFixtures.folderName,
            ),
            throwsA(error),
          );
        });
      });
    });

    group('When deleting a file', () {
      test('it should delete the specified file', () async {
        when(() => mockService.deleteFile(StorageServiceFixtures.nodeId))
            .thenAnswer((_) async => {});

        await storageService.deleteFile(StorageServiceFixtures.nodeId);

        verify(() => mockService.deleteFile(StorageServiceFixtures.nodeId))
            .called(1);
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.deleteFile(StorageServiceFixtures.nodeId))
              .thenThrow(error);

          expect(
            () => storageService.deleteFile(StorageServiceFixtures.nodeId),
            throwsA(error),
          );
        });
      });
    });

    group('When deleting a folder', () {
      test('it should delete the specified folder', () async {
        when(() => mockService.deleteFolder(StorageServiceFixtures.nodeId))
            .thenAnswer((_) async => {});

        await storageService.deleteFolder(StorageServiceFixtures.nodeId);

        verify(() => mockService.deleteFolder(StorageServiceFixtures.nodeId))
            .called(1);
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.deleteFolder(StorageServiceFixtures.nodeId))
              .thenThrow(error);

          expect(
            () => storageService.deleteFolder(StorageServiceFixtures.nodeId),
            throwsA(error),
          );
        });
      });
    });

    group('When getting file content', () {
      test('it should return the file content', () async {
        final expectedContent = [1, 2, 3];

        when(() =>
                mockService.downloadFile(nodeId: StorageServiceFixtures.nodeId))
            .thenAnswer((_) async => expectedContent);

        final result = await storageService.getFileContent(
          nodeId: StorageServiceFixtures.nodeId,
        );

        expect(result, equals(expectedContent));
        verify(() =>
                mockService.downloadFile(nodeId: StorageServiceFixtures.nodeId))
            .called(1);
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.downloadFile(
              nodeId: StorageServiceFixtures.nodeId)).thenThrow(error);

          expect(
            () => storageService.getFileContent(
                nodeId: StorageServiceFixtures.nodeId),
            throwsA(error),
          );
        });
      });
    });

    group('When renaming a file', () {
      test('it should rename the specified file', () async {
        when(() => mockService.renameFile(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            )).thenAnswer((_) async => {});

        await storageService.renameFile(
          nodeId: StorageServiceFixtures.nodeId,
          newName: StorageServiceFixtures.newName,
        );

        verify(() => mockService.renameFile(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            )).called(1);
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.renameFile(
                nodeId: StorageServiceFixtures.nodeId,
                newName: StorageServiceFixtures.newName,
              )).thenThrow(error);

          expect(
            () => storageService.renameFile(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            ),
            throwsA(error),
          );
        });
      });
    });

    group('When renaming a folder', () {
      test('it should rename the specified folder', () async {
        when(() => mockService.renameFolder(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            )).thenAnswer((_) async => {});

        await storageService.renameFolder(
          nodeId: StorageServiceFixtures.nodeId,
          newName: StorageServiceFixtures.newName,
        );

        verify(() => mockService.renameFolder(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            )).called(1);
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.renameFolder(
                nodeId: StorageServiceFixtures.nodeId,
                newName: StorageServiceFixtures.newName,
              )).thenThrow(error);

          expect(
            () => storageService.renameFolder(
              nodeId: StorageServiceFixtures.nodeId,
              newName: StorageServiceFixtures.newName,
            ),
            throwsA(error),
          );
        });
      });
    });

    group('When listing items', () {
      group('and there are no items', () {
        test('it should return an empty list', () async {
          when(() => mockService.getChildNodes(
                  nodeId: StorageServiceFixtures.profileId))
              .thenAnswer((_) async => []);

          final result = await storageService.listItems();

          expect(result, isEmpty);
          verify(() => mockService.getChildNodes(
              nodeId: StorageServiceFixtures.profileId)).called(1);
        });
      });

      group('and there are visible items', () {
        test('it should return the visible items', () async {
          when(() => mockService.getChildNodes(
                  nodeId: StorageServiceFixtures.profileId))
              .thenAnswer((_) async => StorageServiceFixtures.testNodes);

          final result = await storageService.listItems();

          expect(result, hasLength(1));
          expect(result?[0].name, equals('Visible Node'));
          verify(() => mockService.getChildNodes(
              nodeId: StorageServiceFixtures.profileId)).called(1);
        });
      });

      group('and the service throws an error', () {
        test('it should propagate the error', () async {
          final error = Exception('Service error');

          when(() => mockService.getChildNodes(
              nodeId: StorageServiceFixtures.profileId)).thenThrow(error);

          expect(
            () => storageService.listItems(),
            throwsA(error),
          );
        });
      });
    });
  });
}
