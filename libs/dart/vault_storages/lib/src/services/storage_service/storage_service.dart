import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';

import '../../exceptions/tdk_exception_type.dart';
import '../../model/item.dart';
import '../../model/node_status.dart';
import '../../model/node_type.dart';
import '../vault_data_manager_service/vault_data_manager_service_interface.dart';
import 'storage_service_interface.dart';

/// A service for managing files and folders in the storage system.
class StorageService implements StorageServiceInterface {
  final VaultDataManagerServiceInterface _vaultDataManagerService;
  final String _profileId;

  /// Initialize service for operating files and folders in the storage system.
  StorageService({
    required VaultDataManagerServiceInterface vaultDataManagerService,
    required String profileId,
  })  : _vaultDataManagerService = vaultDataManagerService,
        _profileId = profileId;

  @override
  Future<void> addFile({
    required String fileName,
    String? parentFolderNodeId,
    required Uint8List data,
  }) async {
    await _vaultDataManagerService.createFile(
      fileName: fileName,
      parentFolderNodeId: parentFolderNodeId ?? _profileId,
      data: data,
    );
  }

  @override
  Future<void> createFolder({
    required String folderName,
    String? parentNodeId,
  }) async {
    await _vaultDataManagerService.createFolder(
      folderName: folderName,
      parentNodeId: parentNodeId ?? _profileId,
    );
  }

  @override
  Future<void> deleteFile(String nodeId) async {
    await _vaultDataManagerService.deleteFile(nodeId);
  }

  @override
  Future<void> deleteFolder(String nodeId) async {
    await _vaultDataManagerService.deleteFolder(nodeId);
  }

  @override
  Future<List<int>> getFileContent({
    required String nodeId,
  }) async {
    return await _vaultDataManagerService.downloadFile(nodeId: nodeId);
  }

  @override
  Future<void> renameFile({
    required String nodeId,
    required String newName,
  }) async {
    await _vaultDataManagerService.renameFile(nodeId: nodeId, newName: newName);
  }

  @override
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
  }) async {
    await _vaultDataManagerService.renameFolder(
        nodeId: nodeId, newName: newName);
  }

  @override
  Future<List<Item>?> listItems({
    String? nodeId,
  }) async {
    final childNodes = await _vaultDataManagerService.getChildNodes(
        nodeId: nodeId ?? _profileId);

    if (childNodes == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to list items',
          code: TdkExceptionType.failedToListItems.code,
        ),
        StackTrace.current,
      );
    }

    if (childNodes.isEmpty) return [];
    final items = childNodes
        .where((node) => node.status != NodeStatus.HIDDEN)
        .map((node) => Item(
              id: node.nodeId,
              description: node.description,
              name: node.name,
              createdAt: DateTime.parse(node.createdAt),
              modifiedAt: DateTime.parse(node.modifiedAt),
              createdBy: node.createdBy,
              modifiedBy: node.modifiedBy,
              fileCount: node.fileCount,
              folderCount: node.folderCount,
              parentNodeId: node.parentNodeId,
              type: NodeType.values.byName(node.type.name),
            ))
        .toList();

    return items;
  }
}
