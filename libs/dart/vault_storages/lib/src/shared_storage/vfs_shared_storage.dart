import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart' as vault;
import 'package:ssi/ssi.dart';

import '../credential/vfs_credential_storage.dart';
import '../file/vfs_file_storage.dart';
import '../services/vault_data_manager_service/cloud_vault_data_manager_service.dart';

/// A VFS-based implementation of [vault.SharedStorage] that combines credential and file storage.
///
/// This implementation uses [CloudVaultDataManagerService] to manage both credentials and files
/// for a shared profile.
class VfsSharedStorage implements vault.SharedStorage {
  /// Creates a new instance of [VfsSharedStorage].
  ///
  /// [id] - used to identify this storage instance.
  /// [dataManagerService] - used to manage data operations.
  /// [sharedProfileId] - identifies the shared profile.
  VfsSharedStorage({
    required String id,
    required CloudVaultDataManagerService dataManagerService,
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
  Future<List<vault.Item>> getFolder({String? folderId}) async {
    final id = folderId ?? _sharedProfileId;
    return _fileStorage.getFolder(folderId: id);
  }

  @override
  Future<void> createFile(
      {required String fileName,
      required Uint8List data,
      String? parentFolderId}) async {
    await _fileStorage.createFile(
      fileName: fileName,
      data: data,
      parentFolderId: parentFolderId,
    );
  }

  @override
  Future<vault.Folder> createFolder(
      {required String folderName, required String parentFolderId}) async {
    return _fileStorage.createFolder(
        folderName: folderName, parentFolderId: parentFolderId);
  }

  @override
  Future<void> deleteFile({required String fileId}) async {
    await _fileStorage.deleteFile(fileId: fileId);
  }

  @override
  Future<void> deleteFolder({required String folderId}) async {
    await _fileStorage.deleteFolder(folderId: folderId);
  }

  @override
  Future<vault.File> getFile({required String fileId}) async {
    return await _fileStorage.getFile(fileId: fileId);
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) async {
    return await _fileStorage.getFileContent(fileId: fileId);
  }

  @override
  Future<void> renameFile(
      {required String fileId, required String newName}) async {
    await _fileStorage.renameFile(fileId: fileId, newName: newName);
  }

  @override
  Future<void> renameFolder(
      {required String folderId, required String newName}) async {
    await _fileStorage.renameFolder(folderId: folderId, newName: newName);
  }

  /// CredentialStorages operations

  @override
  Future<void> deleteCredential({required String digitalCredentialId}) async {
    await _credentialStorage.deleteCredential(
        digitalCredentialId: digitalCredentialId);
  }

  @override
  Future<vault.DigitalCredential> getCredential(
      {required String digitalCredentialId}) async {
    return await _credentialStorage.getCredential(
        digitalCredentialId: digitalCredentialId);
  }

  @override
  Future<List<vault.DigitalCredential>> listCredentials() async {
    return await _credentialStorage.listCredentials();
  }

  @override
  Future<void> saveCredential(
      {required VerifiableCredential verifiableCredential}) async {
    await _credentialStorage.saveCredential(
        verifiableCredential: verifiableCredential);
  }

  @override
  dynamic query(String pexQuery) {
    // TODO: implement query
    throw UnimplementedError();
  }
}
