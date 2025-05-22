import 'dart:typed_data';
import 'package:affinidi_tdk_vault_storages/src/model/node.dart';
import 'package:affinidi_tdk_vault_storages/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_storages/src/model/node_type.dart';

class FileFixtures {
  static const String testProfileId = 'test-profile-id';
  static const String testFolderId = 'folder-id';
  static const String testFileId = 'file-id';
  static const String testParentId = 'parent-id';
  static const String testFileName = 'test.txt';
  static const String testFolderName = 'test-folder';
  static const String testNewName = 'new-name';

  static Uint8List get testData => Uint8List.fromList([1, 2, 3]);

  static Node get mockFileNode => Node(
        nodeId: testFileId,
        name: testFileName,
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
        profileId: testProfileId,
        parentNodeId: testParentId,
      );

  static Node get mockFolderNode => Node(
        nodeId: testFolderId,
        name: testFolderName,
        type: NodeType.FOLDER,
        status: NodeStatus.CREATED,
        createdAt: '2024-01-01T00:00:00Z',
        modifiedAt: '2024-01-01T00:00:00Z',
        createdBy: 'user1',
        modifiedBy: 'user1',
        fileCount: 1,
        folderCount: 1,
        profileCount: 0,
        consumerId: 'consumer1',
        profileId: testProfileId,
        parentNodeId: testParentId,
      );

  static Node get unsupportedNode => Node(
        nodeId: testFileId,
        name: testFileName,
        type: NodeType.values.lastWhere(
          (t) => t != NodeType.FILE && t != NodeType.FOLDER,
        ),
        status: NodeStatus.CREATED,
        createdAt: '2024-01-01T00:00:00Z',
        modifiedAt: '2024-01-01T00:00:00Z',
        createdBy: 'user1',
        modifiedBy: 'user1',
        fileCount: 0,
        folderCount: 0,
        profileCount: 0,
        consumerId: 'consumer1',
        profileId: testProfileId,
        parentNodeId: testParentId,
      );
}
