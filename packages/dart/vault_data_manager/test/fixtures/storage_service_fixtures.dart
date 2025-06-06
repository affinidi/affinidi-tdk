import 'dart:typed_data';
import 'package:affinidi_tdk_vault_data_manager/src/model/node.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_type.dart';

class StorageServiceFixtures {
  static const String profileId = 'test-profile-id';
  static const String fileName = 'test.txt';
  static const String folderName = 'test-folder';
  static const String parentFolderId = 'parent-folder';
  static const String nodeId = 'test-node';
  static const String newName = 'new-name';

  static Uint8List get testData => Uint8List.fromList([1, 2, 3]);

  static List<Node> get testNodes => [
        Node(
          nodeId: 'node1',
          name: 'Visible Node',
          type: NodeType.FILE,
          status: NodeStatus.CREATED,
          createdAt: '2024-01-01T00:00:00Z',
          modifiedAt: '2024-01-01T00:00:00Z',
          createdBy: 'user1',
          modifiedBy: 'user1',
          fileCount: 0,
          folderCount: 0,
          profileCount: 0,
          consumerId: 'consumer1',
          profileId: 'profile1',
          parentNodeId: 'parent',
        ),
        Node(
          nodeId: 'node2',
          name: 'Hidden Node',
          type: NodeType.FILE,
          status: NodeStatus.HIDDEN,
          createdAt: '2024-01-01T00:00:00Z',
          modifiedAt: '2024-01-01T00:00:00Z',
          createdBy: 'user1',
          modifiedBy: 'user1',
          fileCount: 0,
          folderCount: 0,
          profileCount: 0,
          consumerId: 'consumer1',
          profileId: 'profile1',
          parentNodeId: 'parent',
        ),
      ];
}
