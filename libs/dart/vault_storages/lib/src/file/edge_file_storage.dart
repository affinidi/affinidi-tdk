import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

class EdgeFileStorage implements FileStorage {
  @override
  Future<void> createFile(
      {required String fileName,
      required Uint8List data,
      String? parentFolderId}) {
    // TODO: implement createFile
    throw UnimplementedError();
  }

  @override
  Future<Folder> createFolder(
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
  Future<File> getFile({required String fileId}) {
    // TODO: implement getFile
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) {
    // TODO: implement getFileContent
    throw UnimplementedError();
  }

  @override
  Future<List<Item>> getFolder({String? folderId}) {
    // TODO: implement getFolder
    throw UnimplementedError();
  }

  @override
  // TODO: implement id
  String get id => throw UnimplementedError();

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
