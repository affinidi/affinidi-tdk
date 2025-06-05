import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart' as vault;
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:ssi/ssi.dart';

import '../../affinidi_tdk_vault_storages.dart' as storages;
import '../credential/vfs_credential_storage.dart';
import '../file/vfs_file_storage.dart';
import '../services/vault_data_manager_service/vault_data_manager_service_interface.dart';

/// A VFS-based implementation of [vault.SharedStorage] that combines credential and file storage.
///
/// This implementation uses [storages.VaultDataManagerService] to manage both credentials and files
/// for a shared profile.
class VfsSharedStorage implements vault.SharedStorage {
  /// Creates a new instance of [VfsSharedStorage].
  ///
  /// [id] - used to identify this storage instance.
  /// [dataManagerService] - used to manage data operations.
  /// [sharedProfileId] - identifies the shared profile.
  VfsSharedStorage({
    required String id,
    required VaultDataManagerServiceInterface dataManagerService,
    required String sharedProfileId, // nodePath
  })  : _id = id,
        _sharedProfileId = sharedProfileId,
        _credentialStorage = VFSCredentialStorage(
          id: id,
          dataManagerService: dataManagerService,
          profileId: sharedProfileId,
        ),
        _fileStorage = VFSFileStorage(
          id: id,
          dataManagerService: dataManagerService,
        );

  final String _id;
  final String _sharedProfileId;

  @override
  String get id => _id;

  final vault.CredentialStorage _credentialStorage;
  final vault.FileStorage _fileStorage;

  /// FileStorage operations

  @override
  Future<List<vault.Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartKey,
    VaultCancelToken? cancelToken,
  }) async {
    final id = folderId ?? _sharedProfileId;
    return _fileStorage.getFolder(
      folderId: id,
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> createFile(
      {required String fileName,
      required Uint8List data,
      String? parentFolderId,
      VaultCancelToken? cancelToken}) async {
    await _fileStorage.createFile(
      fileName: fileName,
      data: data,
      parentFolderId: parentFolderId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<vault.Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  }) async {
    return _fileStorage.createFolder(
      folderName: folderName,
      parentFolderId: parentFolderId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> deleteFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    await _fileStorage.deleteFile(
      fileId: fileId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> deleteFolder({
    required String folderId,
    VaultCancelToken? cancelToken,
  }) async {
    await _fileStorage.deleteFolder(
      folderId: folderId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<vault.File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    return await _fileStorage.getFile(
      fileId: fileId,
      cancelToken: cancelToken,
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );
  }

  @override
  Future<Uint8List> getFileContent({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    return await _fileStorage.getFileContent(
      fileId: fileId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    await _fileStorage.renameFile(
      fileId: fileId,
      newName: newName,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    await _fileStorage.renameFolder(
      folderId: folderId,
      newName: newName,
      cancelToken: cancelToken,
    );
  }

  /// CredentialStorages operations

  @override
  Future<void> deleteCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    await _credentialStorage.deleteCredential(
      digitalCredentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<vault.DigitalCredential> getCredential({
    required String digitalCredentialId,
    VaultCancelToken? cancelToken,
  }) async {
    return await _credentialStorage.getCredential(
      digitalCredentialId: digitalCredentialId,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<List<vault.DigitalCredential>> listCredentials({
    VaultCancelToken? cancelToken,
  }) async {
    return await _credentialStorage.listCredentials(cancelToken: cancelToken);
  }

  @override
  Future<void> saveCredential({
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    await _credentialStorage.saveCredential(
      verifiableCredential: verifiableCredential,
      cancelToken: cancelToken,
    );
  }

  @override
  dynamic query(String pexQuery) {
    // TODO: implement query
    throw UnimplementedError();
  }
}
