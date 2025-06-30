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

  static File createMockFileData({
    String? id = 'file-123',
    String? name = 'sample.txt',
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return File(
      id: id ?? fileId,
      name: name ?? fileName,
      createdAt: createdAt ?? DateTime(2023, 1, 1),
      modifiedAt: modifiedAt ?? DateTime(2023, 1, 1),
      parentId: parentId,
    );
  }

  static Folder createMockFolder({
    String? id = 'folder-123',
    String? name = 'sample-folder',
    DateTime? createdAt,
    DateTime? modifiedAt,
    String? parentId,
  }) {
    return Folder(
      id: id ?? folderId,
      name: name ?? folderName,
      createdAt: createdAt ?? DateTime(2023, 1, 1),
      modifiedAt: modifiedAt ?? DateTime(2023, 1, 1),
      parentId: parentId,
    );
  }
}
