import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

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

  static FileData createMockFileData({
    String? id,
    String? name,
    String? parentId,
  }) =>
      FileData(
        id: id ?? fileId,
        name: name ?? fileName,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        parentId: parentId,
      );

  static FolderData createMockFolderData({
    String? id,
    String? name,
    String? parentId,
  }) =>
      FolderData(
        id: id ?? folderId,
        name: name ?? folderName,
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        parentId: parentId,
      );

  static List<ItemData> createMockFolderContents() => [
        ItemData(
          id: 'file1',
          name: 'test1.txt',
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          isFolder: false,
          parentId: null,
        ),
        ItemData(
          id: 'folder1',
          name: 'subfolder',
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          isFolder: true,
          parentId: folderId,
        ),
      ];
}
