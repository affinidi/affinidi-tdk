import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

// TODO: Review interface so that it allows other file providers

/// An implementation of [FileStorage] for storing and managing files on GitHub.
class GithubFileStorage implements FileStorage {
  /// Creates a new instance of [GithubFileStorage].
  ///
  /// The [id] parameter is used to identify this storage instance.
  /// The [personalAccessToken] parameter is used for GitHub authentication.
  GithubFileStorage({required String id, required String personalAccessToken})
      : _id = id;

  final String _id;
  @override
  String get id => _id;

  @override
  Future<List<Item>> getFolder({
    String? folderId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFolder({
    required String folderId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<File> getFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> getFileContent({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFile({
    required String fileId,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) {
    throw UnimplementedError();
  }
}
