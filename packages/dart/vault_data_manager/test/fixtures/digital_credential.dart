import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node.dart';

import 'verifiable_credential.dart';

const credentialNodeId = 'test-credential-node-id';

final Node credentialNode = Node.fromJson({
  'name': 'VC',
  'description': '',
  'status': 'CREATED',
  'createdAt': '2025-01-09T09:13:43.094Z',
  'modifiedAt': '2025-01-09T09:13:43.094Z',
  'createdBy': 'did:key:test',
  'modifiedBy': 'did:key:test',
  'consumerId': 'did:key:test',
  'fileCount': 0,
  'profileCount': 0,
  'folderCount': 0,
  'vcCount': 0,
  'link': 'test_link',
  'consumedFileStorage': 931,
  'parentNodeId': 'parent_node_id',
  'profileId': 'profile_id',
  'type': 'VC',
  'nodeId': 'node_id',
  'edekInfo': {'dekekId': 'test_dekek_id', 'edek': 'test_edek'},
  'getUrl': 'test_url'
});

final List<DigitalCredential> digitalCredentials = List.from(
  List.generate(
    5,
    (index) => DigitalCredential(
        id: credentialNode.nodeId, verifiableCredential: credentials[index]),
  ),
);
