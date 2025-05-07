import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_collection/built_collection.dart';

import 'edek_builder.dart';

final nodeDtoBuilder = $NodeDtoBuilder()
  ..nodeId = 'node_id'
  ..status = NodeStatus.CREATED
  ..fileCount = 0
  ..profileCount = 0
  ..folderCount = 1
  ..vcCount = 0
  ..name = 'John Doe'
  ..consumerId = 'did:key:test'
  ..parentNodeId = 'NzY3ZjY='
  ..profileId = 'NzY3ZjYjdFVSNmk='
  ..createdAt = '2025-02-05T17:07:46.321Z'
  ..modifiedAt = '2025-02-05T17:07:46.321Z'
  ..createdBy = 'did:key:test'
  ..modifiedBy = 'did:key:test'
  ..type = NodeType.PROFILE
  ..schema = 'primary.schema'
  ..metadata = '{"pictureURI":""}'
  ..edekInfo = edekBuilder;

final NodeDto nodeDto = nodeDtoBuilder.build();

final ListBuilder<NodeDto> nodeDtoList = ListBuilder([nodeDto]);

final listRootNodeChildrenOKBuilder = ListRootNodeChildrenOKBuilder()
  ..nodes = nodeDtoList;

final listRootNodeChildrenOK = listRootNodeChildrenOKBuilder.build();

final listNodeChildrenOKBuilder = ListNodeChildrenOKBuilder()
  ..nodes = nodeDtoList;

final listNodeChildrenOK = listNodeChildrenOKBuilder.build();
