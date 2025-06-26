import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/file_fixtures.dart';
import 'mocks/file_mock_setup.dart';
import 'mocks/mock_edge_file_repository.dart';

void main() {
  late MockEdgeFileRepositoryInterface mockRepository;
  late VaultEdgeFileStorage storage;

  setUpAll(FileMockSetup.setupFallbackValues);

  setUp(() {
    mockRepository = MockEdgeFileRepositoryInterface();
    storage = VaultEdgeFileStorage(
      repository: mockRepository,
      id: FileFixtures.storageId,
      profileId: FileFixtures.profileId,
    );

    FileMockSetup.setupFileRepositoryMocks(mockRepository);
  });

  group('When performing file operations', () {
    group('and creating a file', () {
      test('it creates file with valid size and extension', () async {
        await storage.createFile(
          fileName: FileFixtures.fileName,
          data: FileFixtures.smallFileData,
        );

        verify(() => mockRepository.createFile(
              profileId: FileFixtures.profileId,
              fileName: FileFixtures.fileName,
              data: FileFixtures.smallFileData,
              parentFolderId: null,
            )).called(1);
      });

      test('it throws error when file size exceeds limit', () async {
        expect(
          () => storage.createFile(
            fileName: FileFixtures.fileName,
            data: FileFixtures.largeFileData,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidFileSize.code,
          )),
        );
      });

      test('it throws error when file extension is not allowed', () async {
        expect(
          () => storage.createFile(
            fileName: 'test.exe',
            data: FileFixtures.invalidFileData,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidFileType.code,
          )),
        );
      });

      test('it creates file in parent folder', () async {
        when(() => mockRepository
                .getFolderData(folderId: FileFixtures.parentFolderId))
            .thenAnswer((_) async => [
                  ItemData(
                    id: FileFixtures.parentFolderId,
                    name: FileFixtures.folderName,
                    createdAt: DateTime.now(),
                    modifiedAt: DateTime.now(),
                    itemType: ItemType.folder,
                    parentId: null,
                  )
                ]);

        await storage.createFile(
          fileName: FileFixtures.fileName,
          data: FileFixtures.invalidFileData,
          parentFolderId: FileFixtures.parentFolderId,
        );

        verify(() => mockRepository.createFile(
              profileId: FileFixtures.profileId,
              fileName: FileFixtures.fileName,
              data: FileFixtures.invalidFileData,
              parentFolderId: FileFixtures.parentFolderId,
            )).called(1);
      });

      test('it throws error when parent folder does not exist', () async {
        when(() => mockRepository.getFolderData(
              folderId: 'non-existent-folder',
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => []);

        expect(
          () => storage.createFile(
            fileName: FileFixtures.fileName,
            data: FileFixtures.invalidFileData,
            parentFolderId: 'non-existent-folder',
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidParentFolderId.code,
          )),
        );
      });
    });

    group('and retrieving a file', () {
      test('it gets file by ID', () async {
        final mockFileData = FileFixtures.createMockFileData();
        when(() => mockRepository.getFileData(fileId: FileFixtures.fileId))
            .thenAnswer((_) async => mockFileData);

        final result = await storage.getFile(fileId: FileFixtures.fileId);

        expect(result.id, equals(mockFileData.id));
        expect(result.name, equals(mockFileData.name));
        expect(result.createdAt, equals(mockFileData.createdAt));
        expect(result.modifiedAt, equals(mockFileData.modifiedAt));
        verify(() => mockRepository.getFileData(fileId: FileFixtures.fileId))
            .called(1);
      });

      test('it gets file content', () async {
        final result =
            await storage.getFileContent(fileId: FileFixtures.fileId);

        expect(result, equals(FileFixtures.smallFileData));
        verify(() => mockRepository.getFileContent(fileId: FileFixtures.fileId))
            .called(1);
      });
    });

    group('and managing folders', () {
      test('it creates folder', () async {
        final mockFolderData = FileFixtures.createMockFolderData();
        when(() => mockRepository.createFolder(
              profileId: any(named: 'profileId'),
              folderName: any(named: 'folderName'),
              parentFolderId: any(named: 'parentFolderId'),
            )).thenAnswer((_) async => mockFolderData);

        final result = await storage.createFolder(
          folderName: FileFixtures.folderName,
          parentFolderId: FileFixtures.parentFolderId,
        );

        expect(result.id, equals(mockFolderData.id));
        expect(result.name, equals(mockFolderData.name));
        expect(result.createdAt, equals(mockFolderData.createdAt));
        expect(result.modifiedAt, equals(mockFolderData.modifiedAt));
        expect(result.parentId, equals(mockFolderData.parentId));
        verify(() => mockRepository.createFolder(
              profileId: FileFixtures.profileId,
              folderName: FileFixtures.folderName,
              parentFolderId: FileFixtures.parentFolderId,
            )).called(1);
      });

      test('it deletes folder', () async {
        await storage.deleteFolder(folderId: FileFixtures.folderId);

        verify(() =>
                mockRepository.deleteFolder(folderId: FileFixtures.folderId))
            .called(1);
      });

      test('it gets folder contents', () async {
        final mockItems = [
          ItemData(
            id: 'file1',
            name: 'test1.txt',
            createdAt: DateTime.now(),
            modifiedAt: DateTime.now(),
            itemType: ItemType.file,
            parentId: null,
          ),
          ItemData(
            id: 'folder1',
            name: 'subfolder',
            createdAt: DateTime.now(),
            modifiedAt: DateTime.now(),
            itemType: ItemType.folder,
            parentId: FileFixtures.folderId,
          ),
        ];
        when(() => mockRepository.getFolderData(
              folderId: any(named: 'folderId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => mockItems);

        final result = await storage.getFolder(folderId: FileFixtures.folderId);

        expect(result.items.length, equals(mockItems.length));
        expect(result.items.first.id, equals(mockItems.first.id));
        expect(result.lastEvaluatedItemId, equals(mockItems.last.id));
        verify(() => mockRepository.getFolderData(
              folderId: FileFixtures.folderId,
              limit: null,
              exclusiveStartItemId: null,
            )).called(1);
      });

      test('it renames folder', () async {
        await storage.renameFolder(
          folderId: FileFixtures.folderId,
          newName: 'renamed-folder',
        );

        verify(() => mockRepository.renameFolder(
              folderId: FileFixtures.folderId,
              newName: 'renamed-folder',
            )).called(1);
      });
    });

    group('and managing files', () {
      test('it deletes file', () async {
        await storage.deleteFile(fileId: FileFixtures.fileId);

        verify(() => mockRepository.deleteFile(fileId: FileFixtures.fileId))
            .called(1);
      });

      test('it renames file', () async {
        await storage.renameFile(
          fileId: FileFixtures.fileId,
          newName: 'renamed-file.txt',
        );

        verify(() => mockRepository.renameFile(
              fileId: FileFixtures.fileId,
              newName: 'renamed-file.txt',
            )).called(1);
      });
    });
  });
}
