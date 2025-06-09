import 'dart:typed_data';

import 'package:ssi/ssi.dart';

import '../digital_credential.dart';
import '../helpers/vault_cancel_token.dart';

import 'item.dart';
import 'page.dart';

/// Interface for managing shared storage operations, including files, folders, and credentials.
abstract interface class SharedStorage {
  /// The id of the storage, used to identify between different storages
  String get id;

  /// Allows retrieving all items within a folder
  /// Returned list can be empty
  /// Throws if the folder does not exist
  /// Throws if the folderId does not match a folder
  /// Throws for network connectivity
  Future<Page<Item>> getFolder({
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
  /// Throws if the nodeId does not match a file, IE is a folder.
  /// Throws for network connectivity
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  });

  /// Allows retrieving a list of claimed credentials with pagination support
  /// Returns a [Page] containing the credentials and pagination information
  /// Throws for network connectivity
  Future<Page<DigitalCredential>> listCredentials({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Allows saving verifiable credential data to claimed credentials
  /// Throws for network connectivity
  Future<void> saveCredential(
      {required VerifiableCredential verifiableCredential,
      VaultCancelToken? cancelToken});

  /// Allows deleting a verifiableCredential
  /// Throws if the id does not match any credentials
  /// Throws for network connectivity
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  });

  /// Retrieves a DigitalCredential content based on the id
  /// Throws if the id does not match any credentials
  /// Throws for network connectivity
  Future<DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  });

  /// Queries credentials using a PEX query.
  ///
  /// [pexQuery] - The PEX query string to filter credentials.
  /// Returns the query results.
  dynamic query(String pexQuery);
}
