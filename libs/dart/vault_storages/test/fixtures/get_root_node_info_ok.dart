import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

final consumedFileStorageInBytes = 499656;

final rootNodeInfoOkBuilder = GetDetailedNodeInfoOKBuilder()
  ..name = 'ROOT_ELEMENT'
  ..description = ''
  ..status = NodeStatus.CREATED
  ..createdAt = '2024-08-14T09:42:52.906Z'
  ..modifiedAt = '2024-08-14T09:42:52.905Z'
  ..createdBy = 'did:key:test'
  ..modifiedBy = 'did:key:test'
  ..consumerId = 'did:key:test'
  ..fileCount = 0
  ..profileCount = 2
  ..folderCount = 0
  ..consumedFileStorage = consumedFileStorageInBytes
  ..parentNodeId = ''
  ..profileId = ''
  ..type = NodeType.ROOT_ELEMENT
  ..nodeId = 'node_id';

final rootNodeInfoOk = rootNodeInfoOkBuilder.build();
