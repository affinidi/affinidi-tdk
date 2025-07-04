import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

/// Interface to manage CRUD operations on files and folders
abstract interface class EdgeFileRepositoryInterface {
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

  /// Gets the autoId for the last item in a folder query for pagination
  ///
  /// [folderId] - when null returns all elements without a parent Id
  /// [limit] - maximum amount of items to retrieve
  /// [exclusiveStartItemId] - items with an id greater than exclusiveStartItemId
  Future<String?> getLastEvaluatedItemId({
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
}
