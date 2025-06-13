import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

import '../interfaces/edge_file_repository_interface.dart';

/// An Edge based implementation of [FileStorage] for storing and managing
/// files and folders.
class VaultEdgeFileStorage implements FileStorage {
  /// Creates a new instance of [VaultEdgeFileStorage].
  VaultEdgeFileStorage({
    required EdgeFileRepositoryInterface repository,
    required String id,
    required String profileId,
  })  : _repository = repository,
        _id = id,
        _profileId = profileId;

  final EdgeFileRepositoryInterface _repository;

  final String _id;
  final String _profileId;

  @override
  String get id => _id;

  @override
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: Check file size?
    // TODO: Check file extentions?

    // TODO: check parentFolderId exists and it's a folder

    // TODO: save file content entry in the database
    // TODO: add a file item entry to database

    await _repository.createFile(
      profileId: _profileId,
      fileName: fileName,
      data: data,
      parentFolderId: parentFolderId,
    );
  }

  @override
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  }) async {
    return await _repository.createFolder(
      profileId: _profileId,
      folderName: folderName,
      parentFolderId: parentFolderId,
    );
  }

  @override
  Future<void> deleteFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: delete the file content entry from database
    // TODO: remove file item entry from database

    // TODO: check fileId exists and it's a File

    await _repository.deleteFile(fileId: fileId);
  }

  @override
  Future<void> deleteFolder({
    required String folderId,
    VaultCancelToken? cancelToken,
  }) async {
    await _repository.deleteFolder(folderId: folderId);
  }

  @override
  Future<File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: return file item entry from db

    final item = await _repository.getFile(fileId: fileId);

    return File(
      id: item.id,
      name: item.name,
      createdAt: item.createdAt,
      modifiedAt: item.modifiedAt,
    );
  }

  @override
  Future<Uint8List> getFileContent({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: retrieve the file content entry based on file item entry
    // TODO: decrypt file content and return it

    final content = await _repository.getFileContent(fileId: fileId);

    // TODO: handle encryption?

    return content;
  }

  @override
  Future<Page<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: finding from db all item entries in the folder
    final items = await _repository.getFolder(
      folderId: folderId,
      limit: limit,
      exclusiveStartItemId: exclusiveStartItemId,
    );
    final lastEvaluatedItemId = items.lastOrNull?.id;

    return Page(items: items, lastEvaluatedItemId: lastEvaluatedItemId);
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    // TODO: rename file item entry in DB.
    // ignore: lines_longer_than_80_chars
    // TODO: file content entry remains untouched

    // TODO: check fileId exists and it's a file
    await _repository.renameFile(
      fileId: fileId,
      newName: newName,
    );
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    await _repository.renameFolder(
      folderId: folderId,
      newName: newName,
    );
  }
}
