import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class FileFixtures {
  static const profileId = 'test-profile';
  static const storageId = 'test-storage';
  static const fileName = 'test.txt';
  static const fileId = 'test-file';
  static const folderId = 'test-folder';
  static const folderName = 'test-folder';
  static const parentFolderId = 'parent-folder';
  static const newName = 'renamed.txt';

  static final smallFileData =
      Uint8List.fromList(List.generate(1024, (i) => i % 256));
  static final largeFileData =
      Uint8List.fromList(List.generate(11 * 1024 * 1024, (i) => i % 256));
  static final invalidFileData = Uint8List.fromList([1, 2, 3]);
  static final fileContent = Uint8List.fromList([1, 2, 3]);

  static File createMockFile({
    String? id,
    String? name,
    String? parentId,
  }) =>
      File(
        id: id ?? fileId,
        name: name ?? fileName,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        parentId: parentId,
      );

  static Folder createMockFolder({
    String? id,
    String? name,
    String? parentId,
  }) =>
      Folder(
        id: id ?? folderId,
        name: name ?? folderName,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        parentId: parentId,
      );

  static List<Item> createMockFolderContents() => [
        createMockFile(id: 'file1', name: 'test1.txt'),
        createMockFolder(id: 'folder1', name: 'subfolder', parentId: folderId),
      ];
}
