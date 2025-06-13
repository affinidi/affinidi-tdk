import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';

import 'database/database.dart' hide Item;

/// Repository class to manage files and folders on a local Drift database
class EdgeDriftFileRepository implements EdgeFileRepositoryInterface {
  /// Constructor
  const EdgeDriftFileRepository({required Database database})
      : _database = database;

  final Database _database;

  @override
  Future<void> createFile(
      {required String fileName,
      required Uint8List data,
      String? parentFolderId}) {
    // TODO: implement createFile
    throw UnimplementedError();
  }

  @override
  Future<Item> createFolder(
      {required String folderName, required String parentFolderId}) {
    // TODO: implement createFolder
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFile({required String fileId}) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFolder({required String folderId}) {
    // TODO: implement deleteFolder
    throw UnimplementedError();
  }

  @override
  Future<Item> getFile({required String fileId}) {
    // TODO: implement getFile
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) {
    // TODO: implement getFileContent
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> getFolder(
      {String? folderId, int? limit, String? exclusiveStartItemId}) {
    // TODO: implement getFolder
    throw UnimplementedError();
  }

  @override
  Future<void> renameFile({required String fileId, required String newName}) {
    // TODO: implement renameFile
    throw UnimplementedError();
  }

  @override
  Future<void> renameFolder(
      {required String folderId, required String newName}) {
    // TODO: implement renameFolder
    throw UnimplementedError();
  }
}
