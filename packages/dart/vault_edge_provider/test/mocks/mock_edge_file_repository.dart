import 'dart:typed_data';
import 'package:affinidi_tdk_vault_edge_provider/affinidi_tdk_vault_edge_provider.dart';
import 'package:mocktail/mocktail.dart';

class MockEdgeFileRepositoryInterface extends Mock
    implements EdgeFileRepositoryInterface {
  @override
  int get maxFileSize => 10 * 1024 * 1024;

  @override
  List<String> get allowedExtensions =>
      ['txt', 'pdf', 'jpg', 'jpeg', 'png', 'json'];
}

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

  final Map<String, ItemData> files = {};
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
    files[fileId] = ItemData(
      id: fileId,
      name: fileName,
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      isFolder: false,
      parentId: parentFolderId,
    );
    fileContents[fileId] = data;
  }

  @override
  Future<ItemData> createFolder({
    required String profileId,
    required String folderName,
    String? parentFolderId,
  }) async {
    folderProfileId = profileId;
    this.folderName = folderName;
    folderParentId = parentFolderId;
    return ItemData(
      id: 'new-folder-${DateTime.now().millisecondsSinceEpoch}',
      name: folderName,
      createdAt: DateTime.now(),
      modifiedAt: DateTime.now(),
      isFolder: true,
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
  Future<ItemData> getFileData({required String fileId}) async {
    requestedFileId = fileId;
    final file = files[fileId];
    if (file == null) {
      throw TdkException(
        message: 'File not found',
        code: TdkExceptionType.invalidFileId.code,
      );
    }
    return file;
  }

  @override
  Future<String?> getFileId({
    required String fileName,
    String? parentFolderId,
  }) async {
    return null;
  }

  @override
  Future<List<ItemData>> getFolderData({
    String? folderId,
    int? limit,
    String? exclusiveStartItemId,
  }) async {
    if (folderId == 'parent') {
      return [
        ItemData(
          id: 'parent',
          name: 'Parent Folder',
          createdAt: DateTime.now(),
          modifiedAt: DateTime.now(),
          isFolder: true,
        ),
      ];
    }
    return [];
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

  @override
  int get maxFileSize => 10 * 1024 * 1024;

  @override
  List<String> get allowedExtensions =>
      ['txt', 'pdf', 'jpg', 'jpeg', 'png', 'json'];
}
