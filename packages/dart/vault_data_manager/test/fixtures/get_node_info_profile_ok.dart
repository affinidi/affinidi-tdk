import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

import 'edek_builder.dart';

final nodeInfoProfileOkBuilder = GetDetailedNodeInfoOKBuilder()
  ..nodeId = 'node_id'
  ..status = NodeStatus.CREATED
  ..fileCount = 0
  ..profileCount = 0
  ..folderCount = 1
  ..vcCount = 0
  ..name = 'John Doe'
  ..consumerId = 'did:key:test'
  ..parentNodeId = 'NzY3ZjY='
  ..profileId = 'profile_id'
  ..createdAt = '2025-02-05T17:07:46.321Z'
  ..modifiedAt = '2025-02-05T17:07:46.321Z'
  ..createdBy = 'did:key:test'
  ..modifiedBy = 'did:key:test'
  ..type = NodeType.PROFILE
  ..schema = 'primary.schema'
  ..metadata = '{"pictureURI":""}'
  ..edekInfo = edekBuilder;

final nodeInfoProfileOk = nodeInfoProfileOkBuilder.build();
