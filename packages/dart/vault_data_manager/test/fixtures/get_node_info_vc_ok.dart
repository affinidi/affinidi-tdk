import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';

import 'edek_builder.dart';

final nodeVcDtoBuilder = GetDetailedNodeInfoOKBuilder()
  ..name = 'VC'
  ..description = ''
  ..nodeId = 'node_id'
  ..status = NodeStatus.CREATED
  ..fileCount = 0
  ..profileCount = 0
  ..folderCount = 0
  ..vcCount = 0
  ..link = 'link'
  ..consumerId = 'did:key:test'
  ..parentNodeId = 'NzY3ZjY='
  ..profileId = 'NzY3ZjYjdFVSNmk='
  ..createdAt = '2025-02-05T17:07:46.321Z'
  ..modifiedAt = '2025-02-05T17:07:46.321Z'
  ..createdBy = 'did:key:test'
  ..modifiedBy = 'did:key:test'
  ..consumedFileStorage = 958
  ..type = NodeType.VC
  ..edekInfo = edekBuilder
  ..getUrl = 'https://get_url';

final getNodeInfoVcOk = nodeVcDtoBuilder.build();
