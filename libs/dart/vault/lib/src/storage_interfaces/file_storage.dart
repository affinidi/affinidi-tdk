import 'dart:async';
import 'dart:typed_data';

import '../helpers/vault_cancel_token.dart';
import 'item.dart';
import 'paginated_list.dart';

/// Interface for managing file and folder storage operations.
abstract class FileStorage {
  /// Unique identifier for file storage.
  String get id;

  /// Allows retrieving items within a folder with pagination support
  /// Returns a [PaginatedList] containing the items and pagination information
  /// Throws if the folder does not exist
  /// Throws if the folderId does not match a folder
  /// Throws for network connectivity
  Future<PaginatedList<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Allows creating a folder
  /// Throws if parentFolderId does not exist
  /// Throws if parentFolderId is not a folder
  /// Throws if folderName is already in use within the same parent folder
  /// Throws for network connectivity
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  });

  /// Allows deleting a folder
  /// Throws if folder does not exists
  /// Throws if id does not match a folder
  /// Throws if folder is not empty
  /// Throws for network connectivity
  Future<void> deleteFolder({
    required String folderId,
    VaultCancelToken? cancelToken,
  });

  /// Allows renaming a folder
  /// Throws if folder does not exists
  /// Throws if id does not match a folder
  /// Throws if newName is already in use within the same parent folder
  /// Throws for network connectivity
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  });

  /// Allows retrieving a single file
  /// Note: this is a `File` and not the file content which should use `getFileContent` instead.
  /// Question: Should the file also have size in bytes among its properties?
  /// This would be useful when deciding which file to delete especially when exceeding space usage.
  /// Throws if the file does not exist
  /// Throws if the file is not a file
  /// Throws for network connectivity
  Future<File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  });

  /// Allows retrieving file content
  /// Throws if the file does not exist
  /// Throws if the fileId is not related to a file
  /// Throws for network connectivity
  Future<Uint8List> getFileContent({
    required String fileId,
    VaultCancelToken? cancelToken,
  });

  /// Allows adding a new file
  /// Throws if there is another file with the same name in the folder
  /// Throws for timeouts
  /// Throws for network connectivity
  /// Throws if exceeds space usage
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
    VaultCancelToken? cancelToken,
  });

  /// Allows deleting a file
  /// Throws if the file does not exist
  /// Throws if the file is not a file
  /// Throws for network connectivity
  Future<void> deleteFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  });

  /// Allows renaming a file
  /// Throws if there is another file with same name
  /// Throws if the nodeId does not match a file, i.e. is a folder.
  /// Throws for network connectivity
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  });
}
