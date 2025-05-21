import 'package:affinidi_tdk_vault_storages/src/file/github_file_storage.dart';
import 'package:test/test.dart';
import 'fixtures/github_file_storage_fixtures.dart';

void main() {
  group('GithubFileStorage', () {
    late GithubFileStorage storage;

    setUp(() {
      storage = GithubFileStorageFixtures.storage;
    });

    group('Folder Operations', () {
      test('getFolder should throw UnimplementedError', () {
        expect(
          () => storage.getFolder(),
          throwsUnimplementedError,
        );
      });

      test('createFolder should throw UnimplementedError', () {
        expect(
          () => storage.createFolder(
            folderName: GithubFileStorageFixtures.testFolderName,
            parentFolderId: GithubFileStorageFixtures.testParentFolderId,
          ),
          throwsUnimplementedError,
        );
      });

      test('deleteFolder should throw UnimplementedError', () {
        expect(
          () => storage.deleteFolder(
            folderId: GithubFileStorageFixtures.testFolderId,
          ),
          throwsUnimplementedError,
        );
      });

      test('renameFolder should throw UnimplementedError', () {
        expect(
          () => storage.renameFolder(
            folderId: GithubFileStorageFixtures.testFolderId,
            newName: GithubFileStorageFixtures.testNewName,
          ),
          throwsUnimplementedError,
        );
      });
    });

    group('File Operations', () {
      test('getFile should throw UnimplementedError', () {
        expect(
          () => storage.getFile(
            fileId: GithubFileStorageFixtures.testFileId,
          ),
          throwsUnimplementedError,
        );
      });

      test('getFileContent should throw UnimplementedError', () {
        expect(
          () => storage.getFileContent(
            fileId: GithubFileStorageFixtures.testFileId,
          ),
          throwsUnimplementedError,
        );
      });

      test('createFile should throw UnimplementedError', () {
        expect(
          () => storage.createFile(
            fileName: GithubFileStorageFixtures.testFileName,
            data: GithubFileStorageFixtures.testFileData,
          ),
          throwsUnimplementedError,
        );
      });

      test('deleteFile should throw UnimplementedError', () {
        expect(
          () => storage.deleteFile(
            fileId: GithubFileStorageFixtures.testFileId,
          ),
          throwsUnimplementedError,
        );
      });

      test('renameFile should throw UnimplementedError', () {
        expect(
          () => storage.renameFile(
            fileId: GithubFileStorageFixtures.testFileId,
            newName: GithubFileStorageFixtures.testNewName,
          ),
          throwsUnimplementedError,
        );
      });
    });
  });
}
