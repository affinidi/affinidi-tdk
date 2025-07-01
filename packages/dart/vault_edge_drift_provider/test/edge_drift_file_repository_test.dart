import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/database/database.dart';
import 'package:affinidi_tdk_vault_edge_drift_provider/src/edge_drift_file_repository.dart';
import 'package:affinidi_tdk_vault_edge_provider/src/exceptions/tdk_exception_type.dart';
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

  group('When managing files', () {
    test('should create and get a file', () async {
      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      final file = await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      expect(file, isNotNull);

      final fileData = await repository.getFile(fileId: file.id);
      expect(fileData.name, equals(fileName));

      final content = await repository.getFileContent(fileId: file.id);
      expect(content, equals(fileContent));
    });

    test('should create file in a folder', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
      );

      const fileName = 'test.txt';
      final fileContent = Uint8List.fromList([1, 2, 3, 4, 5]);

      final file = await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
        parentFolderId: folder.id,
      );

      expect(file.id, isNotNull);

      final fileData = await repository.getFile(fileId: file.id);
      expect(fileData.name, equals(fileName));
      expect(fileData.parentId, equals(folder.id));
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

      final file = await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      await repository.deleteFile(fileId: file.id);

      expect(
        () => repository.getFile(fileId: file.id),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileId.code,
        )),
      );

      expect(
        () => repository.getFileContent(fileId: file.id),
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

      final file = await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      await repository.renameFile(
        fileId: file.id,
        newName: newFileName,
      );

      final fileData = await repository.getFile(fileId: file.id);
      expect(fileData.name, equals(newFileName));
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
      final largeFileContent = Uint8List(repository.maxFileSize + 1);

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

    test('should accept files within custom size limit', () async {
      final customRepository = EdgeDriftFileRepository(
        database: database,
        profileId: profileId,
        maxFileSize: 1000,
      );

      const fileName = 'test.txt';
      final smallFileContent = Uint8List(500);

      expect(
        () async => await customRepository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: smallFileContent,
        ),
        returnsNormally,
      );
    });

    test('should accept files with custom allowed extensions', () async {
      final customRepository = EdgeDriftFileRepository(
        database: database,
        profileId: profileId,
        allowedExtensions: ['doc', 'docx', 'xls'],
      );

      const fileName = 'test.doc';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      expect(
        () async => await customRepository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: fileContent,
        ),
        returnsNormally,
      );
    });

    test('should reject files with disallowed extensions', () async {
      final customRepository = EdgeDriftFileRepository(
        database: database,
        profileId: profileId,
        allowedExtensions: ['txt', 'pdf'],
      );

      const fileName = 'test.exe';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      expect(
        () => customRepository.createFile(
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

    test('should throw error when renaming file with disallowed extension',
        () async {
      const fileName = 'test.txt';
      const newFileName = 'test.exe';
      final fileContent = Uint8List.fromList([1, 2, 3]);

      final file = await repository.createFile(
        profileId: profileId,
        fileName: fileName,
        data: fileContent,
      );

      expect(
        () => repository.renameFile(
          fileId: file.id,
          newName: newFileName,
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidFileType.code,
        )),
      );
    });
  });

  group('When managing folders', () {
    test('should create and delete a folder', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
      );

      expect(folder.name, equals('test-folder'));

      final deleted = await repository.deleteFolder(folderId: folder.id);
      expect(deleted, isTrue);
    });

    test('should create folder in another folder', () async {
      final parentFolder = await repository.createFolder(
        profileId: profileId,
        folderName: 'parent-folder',
      );

      final subFolder = await repository.createFolder(
        profileId: profileId,
        folderName: 'sub-folder',
        parentFolderId: parentFolder.id,
      );

      expect(subFolder.parentId, equals(parentFolder.id));
    });

    test('should throw error when creating folder in non-existent parent',
        () async {
      expect(
        () => repository.createFolder(
          profileId: profileId,
          folderName: 'test-folder',
          parentFolderId: 'non-existent-parent',
        ),
        throwsA(isA<TdkException>().having(
          (error) => error.code,
          'code',
          TdkExceptionType.invalidParentFolderId.code,
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

    test('should throw error when deleting folder with content', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
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

    test('should rename a folder', () async {
      final folder = await repository.createFolder(
        profileId: profileId,
        folderName: 'test-folder',
      );

      final renamed = await repository.renameFolder(
        folderId: folder.id,
        newName: 'renamed-folder',
      );

      expect(renamed, isTrue);
    });

    test('should get root folder contents', () async {
      const fileNames = ['file1.txt', 'file2.txt'];
      for (final fileName in fileNames) {
        await repository.createFile(
          profileId: profileId,
          fileName: fileName,
          data: Uint8List.fromList([1, 2, 3]),
        );
      }

      await repository.createFolder(
        profileId: profileId,
        folderName: 'root-folder',
      );

      final items = await repository.getFolder(folderId: null);
      expect(items.length, equals(3)); // 2 files + 1 folder

      final itemNames = items.map((item) => item.name).toList()..sort();
      expect(
        itemNames,
        equals([...fileNames, 'root-folder']..sort()),
      );

      for (final item in items) {
        expect(item.parentId, isNull);
      }
    });

    test('should return empty list for non-existent folder', () async {
      final items = await repository.getFolder(folderId: 'non-existent');
      expect(items, isEmpty);
    });
  });
}
