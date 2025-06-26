import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

/// Test fixtures for file storage tests
class FileFixtures {
  static const String storageId = 'test-file-storage';
  static const String profileId = 'test-profile-id';
  static const String fileId = 'test-file-id';
  static const String folderId = 'test-folder-id';
  static const String parentFolderId = 'test-parent-folder-id';
  static const String fileName = 'test-file.txt';
  static const String folderName = 'test-folder';

  static final smallFileData =
      Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  static final largeFileData =
      Uint8List(1024 * 1024 * 11); // 11MB - exceeds 10MB limit
  static final invalidFileData = Uint8List.fromList([1, 2, 3]);

  static const List<String> allowedExtensions = ['txt', 'pdf', 'jpg'];
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB

  static ItemData createMockFileData({
    String? id,
    String? name,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return ItemData(
      id: id ?? fileId,
      name: name ?? fileName,
      createdAt: createdAt ?? DateTime.now(),
      modifiedAt: modifiedAt ?? DateTime.now(),
      isFolder: false,
      parentId: parentId,
    );
  }

  static ItemData createMockFolderData({
    String? id,
    String? name,
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return ItemData(
      id: id ?? folderId,
      name: name ?? folderName,
      createdAt: createdAt ?? DateTime.now(),
      modifiedAt: modifiedAt ?? DateTime.now(),
      isFolder: true,
      parentId: parentId,
    );
  }
}
