import 'dart:convert';
import 'dart:typed_data';

class TestDataFixtures {
  static const String uploadUrl = 'https://upload-url.com';
  static const String downloadUrl = 'https://download-url.com';
  static const String schemaUrl =
      'https://schema.affinidi.io/profile-template/template.json';
  static const String jwksUrl =
      'https://api.vault.affinidi.com/vfs/.well-known/jwks.json';

  static const String testHash = 'hash';
  static const String testDid = 'did:test:123';
  static const String testDidProof = 'proof';
  static const String testTraceId = 'test-trace-id';
  static const String testKid = 'test-kid';
  static const String testDekekId = 'test-dekek-id';
  static const String testEdek = 'test-edek';

  static const String internalServerError = 'Internal Server Error';
  static const String invalidRequest = 'Invalid request';
  static const String uploadFailed = 'Upload failed';

  static const String unableToCreateNode = 'unable_to_create_node';
  static const String missingPropertiesForFileUpload =
      'missing_properties_for_file_upload';
  static const String unableToUploadFile = 'unable_to_upload_file';
  static const String unableToUpdateAccount = 'unable_to_update_account';
  static const String unableToGetNodeInfo = 'unable_to_get_node_info';
  static const String accountAlreadyExists = 'account_already_exists';
  static const String failedToDecrypt = 'failed_to_decrypt';

  static const testDekBase64 = 'AAECAwQFBgcICQoLDA0ODxAREhMUFRYXGBkaGxwdHh8=';
  static const testMd5 = 'tP/LI3N87DFaSk0aoqYgzg==';
  static final testDek = List.generate(32, (i) => i);
  static final testDekBytes = Uint8List.fromList(testDek);

  static final testAccountData = {
    'accountIndex': 1,
    'accountDid': testDid,
    'didProof': testDidProof,
    'metadata': jsonEncode({'name': 'Test Account'}),
  };

  static final testUpdatedAccountData = {
    'accountIndex': 1,
    'accountDid': testDid,
    'didProof': testDidProof,
    'metadata': jsonEncode({'name': 'Updated Account'}),
  };

  static final testProfileData = {
    'name': 'Test Profile',
    'email': 'test@example.com',
  };

  static final testConfigData = {
    'profileName': 'Test Profile',
    'maxFileSize': 1000000,
    'allowedFileTypes': <String>['pdf', 'jpg'],
    'maximumProfiles': 10,
    'maximumFiles': 100,
    'maximumFolders': 50,
    'maximumVCs': 20
  };

  static final testErrorResponse = {
    'code': unableToUpdateAccount,
    'message': 'Unable to update account',
  };

  static final testUploadFields = {
    'key': 'test-key',
    'bucket': 'test-bucket',
    'X-Amz-Algorithm': 'AWS4-HMAC-SHA256',
    'X-Amz-Credential': 'test-credential',
    'X-Amz-Date': 'test-date',
    'Policy': 'test-policy',
    'X-Amz-Signature': 'test-signature',
  };

  static final Map<String, dynamic> testNodeData = {
    'nodeId': 'test-node-id',
    'name': 'Test Node',
    'type': 'FOLDER',
    'status': 'CREATED',
    'createdAt': '2025-03-03T13:59:40.752Z',
    'modifiedAt': '2025-03-03T13:59:40.752Z',
    'createdBy': testDid,
    'modifiedBy': testDid,
    'consumerId': testDid,
    'fileCount': 0,
    'profileCount': 0,
    'folderCount': 0,
    'vcCount': 0,
    'schema': 'primary.schema',
    'parentNodeId': 'NzY3ZjY=',
    'profileId': 'NzY3ZjY=',
    'edekInfo': <String, String>{'dekekId': testDekekId, 'edek': testEdek},
    'metadata': '{"pictureURI":""}'
  };

  static final Map<String, List<Map<String, dynamic>>> testChildrenData = {
    'nodes': <Map<String, dynamic>>[
      {
        'name': 'Child Node 1',
        'description': 'First child node',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': testDid,
        'modifiedBy': testDid,
        'consumerId': testDid,
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': 'NzY3ZjY=',
        'profileId': 'NzY3ZjYjY2hpbGQx',
        'type': 'FOLDER',
        'nodeId': 'NzY3ZjYjY2hpbGQx',
        'edekInfo': <String, String>{'dekekId': testDekekId, 'edek': testEdek},
        'metadata': '{"pictureURI":""}'
      },
      {
        'name': 'Child Node 2',
        'description': 'Second child node',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': testDid,
        'modifiedBy': testDid,
        'consumerId': testDid,
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': 'NzY3ZjY=',
        'profileId': 'NzY3ZjYjY2hpbGQy',
        'type': 'FOLDER',
        'nodeId': 'NzY3ZjYjY2hpbGQy',
        'edekInfo': <String, String>{'dekekId': testDekekId, 'edek': testEdek},
        'metadata': '{"pictureURI":""}'
      }
    ]
  };

  static final Map<String, List<Map<String, dynamic>>> testVcData = {
    'nodes': <Map<String, dynamic>>[
      {
        'name': 'VC 1',
        'type': 'VC',
        'nodeId': 'NzY3ZjYjY2hpbGQx',
        'status': 'CREATED',
        'createdAt': '2025-03-03T13:59:40.752Z',
        'modifiedAt': '2025-03-03T13:59:40.752Z',
        'createdBy': testDid,
        'modifiedBy': testDid,
        'consumerId': testDid,
        'fileCount': 0,
        'profileCount': 0,
        'folderCount': 0,
        'vcCount': 0,
        'schema': 'primary.schema',
        'parentNodeId': 'NzY3ZjY=',
        'profileId': 'NzY3ZjYjY2hpbGQx',
        'edekInfo': <String, String>{'dekekId': testDekekId, 'edek': testEdek},
        'metadata': '{"pictureURI":""}'
      }
    ]
  };
}
