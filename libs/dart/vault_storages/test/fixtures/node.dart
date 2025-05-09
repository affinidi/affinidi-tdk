import 'package:affinidi_tdk_vault_storages/src/model/node.dart';

final String nodeId = 'test_node_id';

final String hiddenNodeId = 'hidden_root_node_id';

final nodes = [
  Node.fromJson({
    'name': 'VC_ROOT',
    'description': '',
    'status': 'HIDDEN',
    'createdAt': '2025-01-09T09:13:22.041Z',
    'modifiedAt': '2025-01-09T09:13:22.041Z',
    'createdBy': 'did:key:test',
    'modifiedBy': 'did:key:test',
    'consumerId': 'did:key:test',
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'vcCount': 1,
    'parentNodeId': 'parent_node_id',
    'profileId': 'parent_node_id',
    'type': 'VC_ROOT',
    'nodeId': hiddenNodeId
  }),
  Node.fromJson({
    'name': 'Folder',
    'description': '',
    'status': 'CREATED',
    'createdAt': '2025-03-11T08:27:35.206Z',
    'modifiedAt': '2025-03-11T08:27:35.206Z',
    'createdBy': 'did:key:test',
    'modifiedBy': 'did:key:test',
    'consumerId': 'did:key:test',
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'parentNodeId': 'parent_node_id',
    'profileId': 'parent_node_id',
    'type': 'FOLDER',
    'nodeId': 'node_id'
  }),
  Node.fromJson({
    'name': 'name.pdf',
    'description': '',
    'status': 'CREATED',
    'createdAt': '2025-03-11T08:28:53.560Z',
    'modifiedAt': '2025-03-11T08:28:53.560Z',
    'createdBy': 'did:key:test',
    'modifiedBy': 'did:key:test',
    'consumerId': 'did:key:test',
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'link': '13c9e849-689d-404c-b84a-1149ecec00a2',
    'consumedFileStorage': 8462,
    'parentNodeId': 'parent_node_id',
    'profileId': 'parent_node_id',
    'type': 'FILE',
    'nodeId': 'node_id',
    'edekInfo': {'dekekId': 'test_dekek_id', 'edek': 'test_edek'}
  })
];
