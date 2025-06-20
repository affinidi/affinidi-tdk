import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/file_fixtures.dart';

class MockEdgeFileRepositoryInterface extends Mock
    implements EdgeFileRepositoryInterface {}

void main() {
  late MockEdgeFileRepositoryInterface mockRepository;
  late VaultEdgeFileStorage storage;

  setUpAll(() {
    registerFallbackValue(Uint8List(0));
    registerFallbackValue(DateTime.now());
  });

  setUp(() {
    mockRepository = MockEdgeFileRepositoryInterface();
    storage = VaultEdgeFileStorage(
      repository: mockRepository,
      id: FileFixtures.storageId,
      profileId: FileFixtures.profileId,
    );

    // Setup common mock responses
    when(() => mockRepository.createFile(
          profileId: any(named: 'profileId'),
          fileName: any(named: 'fileName'),
          data: any(named: 'data'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.getFileId(
          fileName: any(named: 'fileName'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async => null);

    when(() => mockRepository.createFolder(
          profileId: any(named: 'profileId'),
          folderName: any(named: 'folderName'),
          parentFolderId: any(named: 'parentFolderId'),
        )).thenAnswer((_) async => FileFixtures.createMockFolder());

    when(() => mockRepository.deleteFile(fileId: any(named: 'fileId')))
        .thenAnswer((_) async {});

    when(() => mockRepository.deleteFolder(folderId: any(named: 'folderId')))
        .thenAnswer((_) async => true);

    when(() => mockRepository.getFile(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.createMockFile());

    when(() => mockRepository.getFileContent(fileId: any(named: 'fileId')))
        .thenAnswer((_) async => FileFixtures.fileContent);

    when(() => mockRepository.getFolder(
          folderId: any(named: 'folderId'),
          limit: any(named: 'limit'),
          exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
        )).thenAnswer((_) async => [FileFixtures.createMockFolder()]);

    when(() => mockRepository.renameFile(
          fileId: any(named: 'fileId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});

    when(() => mockRepository.renameFolder(
          folderId: any(named: 'folderId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async => true);
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
        when(() =>
                mockRepository.getFolder(folderId: FileFixtures.parentFolderId))
            .thenAnswer((_) async => [FileFixtures.createMockFolder()]);

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
        when(() => mockRepository.getFolder(
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
        final mockFile = FileFixtures.createMockFile();
        when(() => mockRepository.getFile(fileId: FileFixtures.fileId))
            .thenAnswer((_) async => mockFile);

        final result = await storage.getFile(fileId: FileFixtures.fileId);

        expect(result.id, equals(mockFile.id));
        expect(result.name, equals(mockFile.name));
        expect(result.createdAt, equals(mockFile.createdAt));
        expect(result.modifiedAt, equals(mockFile.modifiedAt));
        verify(() => mockRepository.getFile(fileId: FileFixtures.fileId))
            .called(1);
      });

      test('it gets file content', () async {
        final result =
            await storage.getFileContent(fileId: FileFixtures.fileId);

        expect(result, equals(FileFixtures.fileContent));
        verify(() => mockRepository.getFileContent(fileId: FileFixtures.fileId))
            .called(1);
      });
    });

    group('and managing folders', () {
      test('it creates folder', () async {
        final mockFolder = FileFixtures.createMockFolder();
        when(() => mockRepository.createFolder(
              profileId: any(named: 'profileId'),
              folderName: any(named: 'folderName'),
              parentFolderId: any(named: 'parentFolderId'),
            )).thenAnswer((_) async => mockFolder);

        final result = await storage.createFolder(
          folderName: FileFixtures.folderName,
          parentFolderId: FileFixtures.parentFolderId,
        );

        expect(result, equals(mockFolder));
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
        final mockItems = FileFixtures.createMockFolderContents();
        when(() => mockRepository.getFolder(
              folderId: any(named: 'folderId'),
              limit: any(named: 'limit'),
              exclusiveStartItemId: any(named: 'exclusiveStartItemId'),
            )).thenAnswer((_) async => mockItems);

        final result = await storage.getFolder(folderId: FileFixtures.folderId);

        expect(result.items, equals(mockItems));
        expect(result.lastEvaluatedItemId, equals('folder1'));
        verify(() => mockRepository.getFolder(
              folderId: FileFixtures.folderId,
              limit: null,
              exclusiveStartItemId: null,
            )).called(1);
      });

      test('it renames folder', () async {
        await storage.renameFolder(
          folderId: FileFixtures.folderId,
          newName: FileFixtures.newName,
        );

        verify(() => mockRepository.renameFolder(
              folderId: FileFixtures.folderId,
              newName: FileFixtures.newName,
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
          newName: FileFixtures.newName,
        );

        verify(() => mockRepository.renameFile(
              fileId: FileFixtures.fileId,
              newName: FileFixtures.newName,
            )).called(1);
      });
    });
  });
}
