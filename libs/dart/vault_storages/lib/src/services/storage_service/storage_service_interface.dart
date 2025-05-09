import 'dart:typed_data';

import '../../model/item.dart';

/// Service interface for managing files and folders in the storage system.
///
/// Provides CRUD operations for files and folders
/// within a profile's storage space.
abstract interface class StorageServiceInterface {
  /// Lists items in the specified directory.
  ///
  /// - [nodeId] (optional) - id of the specific node, if not defined `profileId` will be used
  ///
  /// Returns a list of [Item] objects that represents files, folders, vcs stored under [nodeId]
  ///
  /// Example:
  /// ```dart
  /// final items = await storageService.listItems(nodeId: 'your_node_id');
  /// final itemsUnderProfile = await storageService.listItems();
  /// ```
  Future<List<Item>?> listItems({
    String? nodeId,
  });

  /// Creates a new folder in the storage system.
  ///
  /// - [folderName] (reauired) - name of the folder to create
  /// - [parentNodeId] (optional) - parent folder ID, if not defined `profileId` will be used
  ///
  /// Example:
  /// ```dart
  /// await storageService.createFolder(folderName: 'your_folder_name');
  /// await storageService.createFolder(folderName: 'your_folder_name', parentNodeId: "your_parent_folder_id");
  /// ```
  Future<void> createFolder({
    required String folderName,
    String? parentNodeId,
  });

  /// Renames an existing folder.
  ///
  /// - [nodeId] (required) - ID of the folder
  /// - [newName] (required) - new name for the folder
  ///
  /// Example:
  /// ```dart
  /// await storageService.renameFolder(
  ///   nodeId: 'your_folder_node_id',
  ///   newName: 'your_new_folder_name',
  /// );
  /// ```
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
  });

  /// Deletes a folder and all its contents.
  ///
  /// [nodeId] - ID of the folder
  ///
  /// Example:
  /// ```dart
  /// await storageService.deleteFolder('your_folder_node_id');
  /// ```
  Future<void> deleteFolder(String nodeId);

  /// Adds a new file to the storage system.
  ///
  /// - [fileName] (required) - name of the file to create
  /// - [data] (required) - file content as bytes
  /// - [parentFolderNodeId] (optional) - parent folder ID, if not defined `profileId` will be used
  ///
  /// Example:
  /// ```dart
  /// await storageService.addFile(fileName: 'your_file_name.pdf', data: Uint8List(5));
  /// ```
  Future<void> addFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderNodeId,
  });

  /// Renames an existing file.
  ///
  /// - [nodeId] (required) - ID of the file
  /// - [newName] (required) - new name for the file
  ///
  /// Example:
  /// ```dart
  /// await storageService.renameFile(
  ///   nodeId: 'your_file_node_id',
  ///   newName: 'your_new_file_name.pdf',
  /// );
  /// ```
  Future<void> renameFile({
    required String nodeId,
    required String newName,
  });

  /// Retrieves the content of a file.
  ///
  /// - [nodeId] (required) - ID of the file
  ///
  /// Example:
  /// ```dart
  /// final fileContent = await storageService.getFileContent(nodeId: 'your_file_node_id');
  /// ```
  Future<List<int>> getFileContent({
    required String nodeId,
  });

  /// Deletes a file from storage.
  ///
  /// - [nodeId] - ID of the file
  ///
  /// Example:
  /// ```dart
  /// await storageService.deleteFile('your_file_node_id');
  /// ```
  Future<void> deleteFile(String nodeId);
}
