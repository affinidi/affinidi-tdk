import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart' as vault;
import 'package:affinidi_tdk_vault_data_manager/src/model/node.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_status.dart';
import 'package:affinidi_tdk_vault_data_manager/src/model/node_type.dart';
import 'package:ssi/ssi.dart';

class VfsSharedStorageFixtures {
  static const testId = 'test-id';
  static const testSharedProfileId = 'test-profile-id';
}

class NodeFixtures {
  static const testNodeId = 'test-node-id';
  static const testNodeName = 'test';
  static const testUser = 'test-user';
  static const testConsumerId = 'test-consumer-id';
  static const testParentId = 'test-parent-id';
  static const testProfileId = 'test-profile-id';

  static Node get testFileNode => Node(
        nodeId: '1',
        status: NodeStatus.CREATED,
        name: testNodeName,
        consumerId: testConsumerId,
        parentNodeId: testParentId,
        profileId: testProfileId,
        createdAt: DateTime.now().toIso8601String(),
        modifiedAt: DateTime.now().toIso8601String(),
        createdBy: testUser,
        modifiedBy: testUser,
        type: NodeType.FILE,
        fileCount: 0,
        profileCount: 0,
        folderCount: 0,
      );

  static Node get testFolderNode => Node(
        nodeId: '1',
        status: NodeStatus.CREATED,
        name: testNodeName,
        consumerId: testConsumerId,
        parentNodeId: testParentId,
        profileId: testProfileId,
        createdAt: DateTime.now().toIso8601String(),
        modifiedAt: DateTime.now().toIso8601String(),
        createdBy: testUser,
        modifiedBy: testUser,
        type: NodeType.FOLDER,
        fileCount: 0,
        profileCount: 0,
        folderCount: 0,
      );
}

class FileFixtures {
  static const testFileId = 'test-file';
  static const testFileName = 'test.txt';
  static const testFolderId = 'test-folder';
  static const testFolderName = 'test-folder';
  static const testNewName = 'new-name';

  static Uint8List get testData => Uint8List.fromList([1, 2, 3]);
}

class CredentialFixtures {
  static const testCredentialId = 'test-cred';

  static VerifiableCredential get testVerifiableCredential =>
      UniversalParser.parse(jsonEncode({
        '@context': ['https://www.w3.org/2018/credentials/v1'],
        'type': ['VerifiableCredential', 'TestCredential'],
        'id': 'test-vc-id',
        'issuer': 'test-issuer',
        'issuanceDate': DateTime.now().toIso8601String(),
        'credentialSubject': {'id': 'test-subject', 'name': 'Test User'},
        'proof': {
          'type': 'Ed25519Signature2018',
          'created': DateTime.now().toIso8601String(),
          'verificationMethod': 'test-verification-method',
          'proofPurpose': 'assertionMethod',
          'jws': 'test-jws'
        }
      }));

  static vault.DigitalCredential get testDigitalCredential =>
      vault.DigitalCredential(
        verifiableCredential: testVerifiableCredential,
        id: testCredentialId,
      );
}
