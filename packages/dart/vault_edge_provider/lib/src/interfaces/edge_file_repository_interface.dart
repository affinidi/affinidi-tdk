import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Interface to manage CRUD operations on files and folders
abstract interface class EdgeFileRepositoryInterface {
  /// Maximum allowed file size in bytes
  int get maxFileSize;

  /// List of allowed file extensions (without the dot)
  List<String> get allowedExtensions;

  /// Add a file to a specific folder
  Future<void> createFile({
    required String profileId,
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  });

  /// Add a new folder to the specified parent
  Future<Folder> createFolder({
    required String profileId,
    required String folderName,
    String? parentFolderId,
  });

  /// Delete a file entry
  ///
  /// [fileId] - the file unique identifier
  Future<void> deleteFile({required String fileId});

  /// Delete a folder entry
  Future<bool> deleteFolder({required String folderId});

  /// Retrieves the file metadata
  ///
  /// [fileId] - the file unique identifier
  Future<File> getFile({required String fileId});

  /// Retrieves the content of the file
  Future<Uint8List> getFileContent({
    required String fileId,
  });

  /// Retrieves the list of items in a folder
  ///
  /// [folderId] - when null returns all elements without a parent Id
  /// [limit] - maximum amount of items to retrieve
  // ignore: lines_longer_than_80_chars
  /// [exclusiveStartItemId] - items with an id greater than exclusiveStartItemId
  Future<List<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
  });

  /// Rename a file
  ///
  /// [fileId] - the file unique identifier
  /// [newName] - the new name
  Future<void> renameFile({
    required String fileId,
    required String newName,
  });

  /// Rename a folder
  ///
  /// [folderId] - the folder unique identifier
  /// [newName] - the new name
  Future<bool> renameFolder({
    required String folderId,
    required String newName,
  });

  /// Retrieves the ID of a file by its name and parent folder
  ///
  /// [fileName] - the name of the file to look up
  /// [parentFolderId] - the ID of the parent folder, null for root level files
  Future<String?> getFileId({
    required String fileName,
    String? parentFolderId,
  });
}
