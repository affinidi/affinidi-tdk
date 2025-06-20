import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_drift_provider/src/database/database.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/edge_drift_file_repository.dart';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:drift/native.dart';
import 'package:test/test.dart';

void main() {
  late Database database;
  late EdgeDriftFileRepository repository;
  const profileId = 'test-profile';

  setUp(() async {
    database = Database(NativeDatabase.memory());
    repository = EdgeDriftFileRepository(
      database: database,
      profileId: profileId,
    );
  });

  tearDown(() async {
    await database.close();
  });

  group('When performing file operations', () {
    test('should create and read a file', () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      final fileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: null,
      );
      expect(fileId, isNotNull);

      final file = await repository.getFile(fileId: fileId!);
      expect(file.name, equals(fileName));

      final content = await repository.getFileContent(fileId: fileId);
      expect(content, equals(fileContent));
    });

    test('should create file in a folder', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
      );

      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
        parentFolderId: folder.id,
      );

      final fileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: folder.id,
      );
      expect(fileId, isNotNull);

      final file = await repository.getFile(fileId: fileId!);
      expect(file.name, equals(fileName));
      expect(file.parentId, equals(folder.id));
    });

    test('should throw error when creating file in non-existent folder',
        () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      expect(
        () => repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: fileContent,
          parentFolderId: 'non-existent-folder',
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidParentFolderId.code,
        )),
      );
    });

    test('should delete a file', () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      final fileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: null,
      );
      expect(fileId, isNotNull);

      await repository.deleteFile(fileId: fileId!);

      expect(
        () => repository.getFile(fileId: fileId),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileId.code,
        )),
      );

      expect(
        () => repository.getFileContent(fileId: fileId),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileId.code,
        )),
      );
    });

    test('should rename a file', () async {
      const fileName = 'test.txt';
      const newFileName = 'renamed.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      final fileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: null,
      );
      expect(fileId, isNotNull);

      await repository.renameFile(
        fileId: fileId!,
        newName: newFileName,
      );

      final file = await repository.getFile(fileId: fileId);
      expect(file.name, equals(newFileName));

      final oldFileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: null,
      );
      expect(oldFileId, isNull);
    });

    test('should get folder contents', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
      );

      const fileNames = ['file1.txt', 'file2.txt', 'file3.txt'];
      for (final fileName in fileNames) {
        await repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: Uint8List.fromList([1, 2, 3]),
          parentFolderId: folder.id,
        );
      }

      await repository.createFolder(
        profileId: profileId,
        folderName: 'subfolder',
        parentFolderId: folder.id,
      );

      final items = await repository.getFolder(folderId: folder.id);
      expect(items.length, equals(4)); // 3 files + 1 subfolder

      final itemNames = items.map((item) => item.name).toList()..sort();
      expect(
        itemNames,
        equals([...fileNames, 'subfolder']..sort()),
      );

      for (final item in items) {
        expect(item.parentId, equals(folder.id));
      }
    });
  });

  group('When validating files', () {
    test('should throw error when file size exceeds limit', () async {
      const fileName = 'test.txt';
      final largeFileContent =
          Uint8List(EdgeDriftFileRepository.maxFileSize + 1);

      expect(
        () => repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: largeFileContent,
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileSize.code,
        )),
      );
    });

    test('should accept file with allowed extension', () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      await expectLater(
        repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: fileContent,
        ),
        completes,
      );
    });

    test('should throw error when file has disallowed extension', () async {
      const fileName = 'test.exe';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      expect(
        () => repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: fileContent,
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileType.code,
        )),
      );
    });

    test('should throw error when renaming file to disallowed extension',
        () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      final fileId = await repository.getFileId(
        fileName: fileName,
        parentFolderId: null,
      );
      expect(fileId, isNotNull);

      expect(
        () => repository.renameFile(
          fileId: fileId!,
          newName: 'renamed.exe',
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileType.code,
        )),
      );
    });

    test('should accept all allowed file extensions', () async {
      final allowedExtensions = EdgeDriftFileRepository.allowedExtensions;
      final fileContent = Uint8List.fromList([1, 2, 3]);

      for (final extension in allowedExtensions) {
        final fileName = 'test.$extension';
        await expectLater(
          repository.createFile(
            profileId: profileId,
            fileName: fileName,
            data: fileContent,
          ),
          completes,
          reason: 'Should accept .$extension extension',
        );
      }
    });
  });

  group('When performing folder operations', () {
    group('When creating a folder', () {
      test('should create root level folder', () async {
        const folderName = 'root-folder';
        final folder = await repository.createFolder(
          profileId: profileId,
          folderName: folderName,
        );

        expect(folder.name, equals(folderName));
        expect(folder.parentId, isNull);
      });

      test('should create nested folder', () async {
        final parentFolder = await repository.createFolder(
          profileId: profileId,
          folderName: 'parent-folder',
        );

        const nestedFolderName = 'nested-folder';
        final nestedFolder = await repository.createFolder(
          profileId: profileId,
          folderName: nestedFolderName,
          parentFolderId: parentFolder.id,
        );

        expect(nestedFolder.name, equals(nestedFolderName));
        expect(nestedFolder.parentId, equals(parentFolder.id));
      });

      test('should throw error when parent folder does not exist', () async {
        expect(
          () => repository.createFolder(
            profileId: profileId,
            folderName: 'nested-folder',
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

    group('When deleting a folder', () {
      test('should delete empty folder', () async {
        final folder = await repository.createFolder(
          profileId: profileId,
          folderName: 'folder-to-delete',
        );

        final success = await repository.deleteFolder(folderId: folder.id);
        expect(success, isTrue);

        final items = await repository.getFolder(folderId: folder.id);
        expect(items, isEmpty);
      });

      test('should throw error when deleting folder with content', () async {
        final folder = await repository.createFolder(
          profileId: profileId,
          folderName: 'folder-with-content',
        );

        await repository.createFile(
          profileId: profileId,
          fileName: 'test.txt',
          data: Uint8List.fromList([1, 2, 3]),
          parentFolderId: folder.id,
        );

        expect(
          () => repository.deleteFolder(folderId: folder.id),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.unableToDeleteFolderWithContent.code,
          )),
        );
      });

      test('should throw error when deleting non-existent folder', () async {
        expect(
          () => repository.deleteFolder(folderId: 'non-existent-folder'),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidFolderId.code,
          )),
        );
      });
    });

    group('When renaming a folder', () {
      test('should rename existing folder', () async {
        const folderName = 'test-folder';
        const newFolderName = 'renamed-folder';
        final folder = await repository.createFolder(
          profileId: profileId,
          folderName: folderName,
        );

        final success = await repository.renameFolder(
          folderId: folder.id,
          newName: newFolderName,
        );
        expect(success, isTrue);

        await repository.createFile(
          profileId: profileId,
          fileName: 'test.txt',
          data: Uint8List.fromList([1, 2, 3]),
          parentFolderId: folder.id,
        );

        final folderContents = await repository.getFolder(folderId: folder.id);
        expect(folderContents.length, equals(1));
      });

      test('should throw error when renaming non-existent folder', () async {
        expect(
          () => repository.renameFolder(
            folderId: 'non-existent-folder',
            newName: 'renamed-folder',
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TdkExceptionType.invalidFolderId.code,
          )),
        );
      });
    });
  });
}
