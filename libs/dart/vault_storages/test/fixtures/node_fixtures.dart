import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';

class NodeFixtures {
  static Node mockFileNode(String profileId) {
    return Node(
      name: 'test-file',
      nodeId: 'test-file-id',
      type: NodeType.FILE,
      status: NodeStatus.CREATED,
      createdAt: DateTime.now().toIso8601String(),
      modifiedAt: DateTime.now().toIso8601String(),
      createdBy: 'test-user',
      modifiedBy: 'test-user',
      consumerId: 'test-consumer',
      fileCount: 0,
      profileCount: 0,
      folderCount: 0,
      profileId: profileId,
    );
  }

  static Node mockFolderNode(String profileId) {
    return Node(
      name: 'test-folder',
      nodeId: 'test-folder-id',
      type: NodeType.FOLDER,
      status: NodeStatus.CREATED,
      createdAt: DateTime.now().toIso8601String(),
      modifiedAt: DateTime.now().toIso8601String(),
      createdBy: 'test-user',
      modifiedBy: 'test-user',
      consumerId: 'test-consumer',
      fileCount: 0,
      profileCount: 0,
      folderCount: 0,
      profileId: profileId,
    );
  }
}
