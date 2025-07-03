import 'dart:typed_data';

import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockEdgeFileRepositoryInterface extends Mock
    implements EdgeFileRepositoryInterface {}

class MockEdgeFileRepository implements EdgeFileRepositoryInterface {
  String? profileId;
  String? fileName;
  String? parentId;
  Uint8List? fileData;
  String? folderProfileId;
  String? folderName;
  String? folderParentId;
  String? requestedFileId;
  String? requestedContentId;

  final Map<String, Item> files = {};
  final Map<String, Uint8List> fileContents = {};

  List<String> getFileIds() => files.keys.toList();

  @override
  Future<void> createFile({
    required String profileId,
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  }) async {
    this.profileId = profileId;
    this.fileName = fileName;
    fileData = data;
    parentId = parentFolderId;
    final fileId = 'file-${DateTime.now().millisecondsSinceEpoch}';
    files[fileId] = File(
      id: fileId,
      name: fileName,
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      parentId: parentFolderId,
    );
    fileContents[fileId] = data;
  }

  @override
  Future<Folder> createFolder({
    required String profileId,
    required String folderName,
    String? parentFolderId,
  }) async {
    folderProfileId = profileId;
    this.folderName = folderName;
    folderParentId = parentFolderId;
    return Folder(
      id: 'folder-123',
      name: folderName,
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      parentId: parentFolderId,
    );
  }

  @override
  Future<void> deleteFile({required String fileId}) async {}

  @override
  Future<bool> deleteFolder({required String folderId}) async {
    return true;
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) async {
    requestedContentId = fileId;
    final content = fileContents[fileId];
    if (content == null) {
      throw TdkException(
        message: 'File content not found',
        code: TdkExceptionType.invalidFileId.code,
      );
    }
    return content;
  }

  @override
  Future<File> getFile({required String fileId}) async {
    return File(
      id: fileId,
      name: 'test-file.txt',
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      parentId: null,
    );
  }

  @override
  Future<List<Item>> getFolder({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
  }) async {
    return [
      Folder(
        id: 'folder-1',
        name: 'test-folder',
        createdAt: DateTime.now(),
        modifiedAt: DateTime.now(),
        parentId: folderId,
      ),
    ];
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
  }) async {}

  @override
  Future<bool> renameFolder({
    required String folderId,
    required String newName,
  }) async {
    return true;
  }
}
