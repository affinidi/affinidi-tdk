import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';

import '../exceptions/tdk_exception_type.dart';
import '../model/node_status.dart';
import '../model/node_type.dart';
import '../services/vault_data_manager_service/vault_data_manager_service.dart';

/// A VFS based implementation of [FileStorage] for managing files and folders.
class VFSFileStorage implements FileStorage {
  /// Creates a new instance of [VFSFileStorage].
  ///
  /// [id] - identifies this storage instance.
  /// [dataManagerService] - is used to perform file system operations.
  VFSFileStorage({
    required String id,
    required VaultDataManagerService dataManagerService,
  })  : _id = id,
        _vaultDataManagerService = dataManagerService;

  final String _id;

  @override
  String get id => _id;

  final VaultDataManagerService _vaultDataManagerService;

  @override
  Future<List<Item>> getFolder({String? folderId}) async {
    if (folderId == null) {
      Error.throwWithStackTrace(
          TdkException(
              message: 'Missing folderId',
              code: TdkExceptionType.folderNotFound.code),
          StackTrace.current);
    }
    final items =
        await _vaultDataManagerService.getChildNodes(nodeId: folderId);

    if (items == null) {
      return [];
    }

    return items.where((node) => node.status != NodeStatus.HIDDEN).map((node) {
      if (node.type == NodeType.FILE) {
        return File(
          id: node.nodeId,
          name: node.name,
          createdAt: DateTime.parse(node.createdAt),
          modifiedAt: DateTime.parse(node.modifiedAt),
          parentId: folderId,
        );
      } else if (node.type == NodeType.FOLDER) {
        return Folder(
          id: node.nodeId,
          name: node.name,
          createdAt: DateTime.parse(node.createdAt),
          modifiedAt: DateTime.parse(node.modifiedAt),
          parentId: folderId,
        );
      } else {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Unsupported node type: ${node.type}',
            code: TdkExceptionType.unsupportedNodeType.code,
          ),
          StackTrace.current,
        );
      }
    }).toList();
  }

  @override
  Future<Folder> createFolder({
    required String folderName,
    required String parentFolderId,
  }) async {
    await _vaultDataManagerService.createFolder(
      folderName: folderName,
      parentNodeId: parentFolderId,
    );

    final items =
        await _vaultDataManagerService.getChildNodes(nodeId: parentFolderId);
    final folder = items?.firstWhere(
      (node) => node.name == folderName && node.type == NodeType.FOLDER,
      orElse: () => Error.throwWithStackTrace(
        TdkException(
          message: 'Created folder not found',
          code: TdkExceptionType.folderNotFound.code,
        ),
        StackTrace.current,
      ),
    );

    return Folder(
      id: folder!.nodeId,
      name: folder.name,
      createdAt: DateTime.parse(folder.createdAt),
      modifiedAt: DateTime.parse(folder.modifiedAt),
    );
  }

  @override
  Future<void> deleteFolder({required String folderId}) async {
    await _vaultDataManagerService.deleteFolder(folderId);
  }

  @override
  Future<void> renameFolder({
    required String folderId,
    required String newName,
  }) async {
    await _vaultDataManagerService.renameFolder(
      nodeId: folderId,
      newName: newName,
    );
  }

  @override
  Future<File> getFile({required String fileId}) async {
    final node = await _vaultDataManagerService.getNodeInfo(fileId);
    if (node.type != NodeType.FILE) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Node is not a file',
          code: TdkExceptionType.invalidNodeType.code,
        ),
        StackTrace.current,
      );
    }

    return File(
      id: node.nodeId,
      name: node.name,
      createdAt: DateTime.parse(node.createdAt),
      modifiedAt: DateTime.parse(node.modifiedAt),
    );
  }

  @override
  Future<Uint8List> getFileContent({required String fileId}) async {
    final content = await _vaultDataManagerService.downloadFile(nodeId: fileId);
    return Uint8List.fromList(content);
  }

  @override
  Future<void> createFile({
    required String fileName,
    required Uint8List data,
    String? parentFolderId,
  }) async {
    await _vaultDataManagerService.createFile(
      fileName: fileName,
      parentFolderNodeId: parentFolderId ?? '',
      data: data,
    );
  }

  @override
  Future<void> deleteFile({required String fileId}) async {
    await _vaultDataManagerService.deleteFile(fileId);
  }

  @override
  Future<void> renameFile({
    required String fileId,
    required String newName,
  }) async {
    await _vaultDataManagerService.renameFile(
      nodeId: fileId,
      newName: newName,
    );
  }
}
