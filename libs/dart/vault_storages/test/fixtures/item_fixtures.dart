import 'package:affinidi_tdk_vault_storages/src/model/item.dart';
import 'package:affinidi_tdk_vault_storages/src/model/node_type.dart';

class ItemFixtures {
  static DateTime get testDate => DateTime(2024);

  static Map<String, dynamic> get completeJson => {
        'name': 'test_item',
        'description': 'test description',
        'createdAt': '2024-01-01T00:00:00.000Z',
        'modifiedAt': '2024-01-01T00:00:00.000Z',
        'createdBy': 'user1',
        'modifiedBy': 'user1',
        'fileCount': 0,
        'folderCount': 0,
        'parentNodeId': 'parent_id',
        'type': 'FILE',
        'nodeId': 'test_id',
      };

  static Map<String, dynamic> get minimalJson => {
        'name': 'test_item',
        'createdAt': '2024-01-01T00:00:00.000Z',
        'modifiedAt': '2024-01-01T00:00:00.000Z',
        'createdBy': 'user1',
        'modifiedBy': 'user1',
        'type': 'FILE',
        'nodeId': 'test_id',
      };

  static Map<String, dynamic> get invalidDateJson => {
        'name': 'test_item',
        'createdAt': 'invalid-date',
        'modifiedAt': '2024-01-01T00:00:00.000Z',
        'createdBy': 'user1',
        'modifiedBy': 'user1',
        'type': 'FILE',
        'nodeId': 'test_id',
      };

  static Map<String, dynamic> get invalidTypeJson => {
        'name': 'test_item',
        'createdAt': '2024-01-01T00:00:00.000Z',
        'modifiedAt': '2024-01-01T00:00:00.000Z',
        'createdBy': 'user1',
        'modifiedBy': 'user1',
        'type': 'INVALID_TYPE',
        'nodeId': 'test_id',
      };

  static Item get completeItem => Item(
        id: 'test_id',
        name: 'test_item',
        description: 'test description',
        createdAt: testDate,
        modifiedAt: testDate,
        createdBy: 'user1',
        modifiedBy: 'user1',
        fileCount: 0,
        folderCount: 0,
        parentNodeId: 'parent_id',
        type: NodeType.FILE,
      );

  static Item get minimalItem => Item(
        id: 'test_id',
        name: 'test_item',
        createdAt: testDate,
        modifiedAt: testDate,
        createdBy: 'user1',
        modifiedBy: 'user1',
        fileCount: null,
        folderCount: null,
        parentNodeId: null,
        type: NodeType.FILE,
      );
}
