import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart' as vault;
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart'
    as storages;
import 'package:mocktail/mocktail.dart';
import 'package:ssi/ssi.dart';
import 'package:test/test.dart';

class MockVaultDataManagerService extends Mock
    implements storages.VaultDataManagerService {}

void main() {
  late storages.VfsSharedStorage storage;
  late MockVaultDataManagerService mockDataManagerService;
  const testId = 'test-id';
  const testSharedProfileId = 'test-profile-id';

  setUpAll(() {
    registerFallbackValue(Uint8List(0));
    registerFallbackValue($NodeDto((b) => b
      ..nodeId = 'test-node-id'
      ..status = NodeStatus.CREATED
      ..name = 'test-name'
      ..consumerId = 'test-consumer-id'
      ..parentNodeId = 'test-parent-node-id'
      ..profileId = 'test-profile-id'
      ..createdAt = DateTime.now().toIso8601String()
      ..modifiedAt = DateTime.now().toIso8601String()
      ..createdBy = 'test-created-by'
      ..modifiedBy = 'test-modified-by'
      ..type = NodeType.FILE));
    registerFallbackValue(UniversalParser.parse(jsonEncode({
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
    })));
  });

  setUp(() {
    mockDataManagerService = MockVaultDataManagerService();

    // Set up mock VaultDataManagerService
    when(() =>
            mockDataManagerService.getChildNodes(nodeId: any(named: 'nodeId')))
        .thenAnswer((_) async => []);
    when(() => mockDataManagerService.createFile(
          fileName: any(named: 'fileName'),
          parentFolderNodeId: any(named: 'parentFolderNodeId'),
          data: any(named: 'data'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.createFolder(
          folderName: any(named: 'folderName'),
          parentNodeId: any(named: 'parentNodeId'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteFile(any()))
        .thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteFolder(any()))
        .thenAnswer((_) async {});
    when(() => mockDataManagerService.getNodeInfo(any()))
        .thenAnswer((_) async => storages.Node(
              nodeId: 'test-node-id',
              status: storages.NodeStatus.CREATED,
              name: 'Test Node',
              consumerId: 'test-consumer-id',
              parentNodeId: 'test-parent-id',
              profileId: 'test-profile-id',
              createdAt: DateTime.now().toIso8601String(),
              modifiedAt: DateTime.now().toIso8601String(),
              createdBy: 'test-user',
              modifiedBy: 'test-user',
              type: storages.NodeType.FILE,
              fileCount: 0,
              profileCount: 0,
              folderCount: 0,
            ));
    when(() =>
            mockDataManagerService.downloadFile(nodeId: any(named: 'nodeId')))
        .thenAnswer((_) async => [1, 2, 3]);
    when(() => mockDataManagerService.renameFile(
          nodeId: any(named: 'nodeId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.renameFolder(
          nodeId: any(named: 'nodeId'),
          newName: any(named: 'newName'),
        )).thenAnswer((_) async {});
    when(() => mockDataManagerService.deleteClaimedCredential(
        nodeId: any(named: 'nodeId'))).thenAnswer((_) async {});
    when(() => mockDataManagerService.getDigitalCredentials(any()))
        .thenAnswer((_) async => []);
    when(() => mockDataManagerService.addVerifiableCredentialToProfile(
          profileId: any(named: 'profileId'),
          verifiableCredential: any(named: 'verifiableCredential'),
        )).thenAnswer((_) async {});

    storage = storages.VfsSharedStorage(
      id: testId,
      dataManagerService: mockDataManagerService,
      sharedProfileId: testSharedProfileId,
    );
  });

  group('VfsSharedStorage', () {
    test('id getter returns correct value', () {
      expect(storage.id, equals(testId));
    });

    group('File operations', () {
      test('getFolder returns items from file storage', () async {
        final expectedItems = [
          storages.Node(
            nodeId: '1',
            status: storages.NodeStatus.CREATED,
            name: 'test',
            consumerId: 'test-consumer-id',
            parentNodeId: 'test-parent-id',
            profileId: 'test-profile-id',
            createdAt: DateTime.now().toIso8601String(),
            modifiedAt: DateTime.now().toIso8601String(),
            createdBy: 'test-user',
            modifiedBy: 'test-user',
            type: storages.NodeType.FILE,
            fileCount: 0,
            profileCount: 0,
            folderCount: 0,
          )
        ];
        when(() => mockDataManagerService.getChildNodes(
                nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => expectedItems);

        final result = await storage.getFolder();
        expect(result.length, equals(1));
        expect(result[0].id, equals('1'));
        expect(result[0].name, equals('test'));
        verify(() => mockDataManagerService.getChildNodes(
            nodeId: testSharedProfileId)).called(1);
      });

      test('createFile delegates to file storage', () async {
        final testData = Uint8List.fromList([1, 2, 3]);
        when(() => mockDataManagerService.createFile(
              fileName: any(named: 'fileName'),
              parentFolderNodeId: any(named: 'parentFolderNodeId'),
              data: any(named: 'data'),
            )).thenAnswer((_) async {});

        await storage.createFile(
          fileName: 'test.txt',
          data: testData,
          parentFolderId: 'parent',
        );

        verify(() => mockDataManagerService.createFile(
              fileName: 'test.txt',
              parentFolderNodeId: 'parent',
              data: testData,
            )).called(1);
      });

      test('createFolder delegates to file storage', () async {
        when(() => mockDataManagerService.createFolder(
              folderName: any(named: 'folderName'),
              parentNodeId: any(named: 'parentNodeId'),
            )).thenAnswer((_) async {});
        when(() => mockDataManagerService
                .getChildNodes(nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => [
                  storages.Node(
                    nodeId: '1',
                    status: storages.NodeStatus.CREATED,
                    name: 'test',
                    consumerId: 'test-consumer-id',
                    parentNodeId: 'parent',
                    profileId: 'test-profile-id',
                    createdAt: DateTime.now().toIso8601String(),
                    modifiedAt: DateTime.now().toIso8601String(),
                    createdBy: 'test-user',
                    modifiedBy: 'test-user',
                    type: storages.NodeType.FOLDER,
                    fileCount: 0,
                    profileCount: 0,
                    folderCount: 0,
                  )
                ]);

        await storage.createFolder(
          folderName: 'test',
          parentFolderId: 'parent',
        );

        verify(() => mockDataManagerService.createFolder(
              folderName: 'test',
              parentNodeId: 'parent',
            )).called(1);
      });

      test('deleteFile delegates to file storage', () async {
        when(() => mockDataManagerService.deleteFile(any()))
            .thenAnswer((_) async {});

        await storage.deleteFile(fileId: 'test-file');

        verify(() => mockDataManagerService.deleteFile('test-file')).called(1);
      });

      test('deleteFolder delegates to file storage', () async {
        when(() => mockDataManagerService.deleteFolder(any()))
            .thenAnswer((_) async {});

        await storage.deleteFolder(folderId: 'test-folder');

        verify(() => mockDataManagerService.deleteFolder('test-folder'))
            .called(1);
      });

      test('getFile delegates to file storage', () async {
        when(() => mockDataManagerService.getNodeInfo(any()))
            .thenAnswer((_) async => storages.Node(
                  nodeId: '1',
                  status: storages.NodeStatus.CREATED,
                  name: 'test.txt',
                  consumerId: 'test-consumer-id',
                  parentNodeId: 'test-parent-id',
                  profileId: 'test-profile-id',
                  createdAt: DateTime.now().toIso8601String(),
                  modifiedAt: DateTime.now().toIso8601String(),
                  createdBy: 'test-user',
                  modifiedBy: 'test-user',
                  type: storages.NodeType.FILE,
                  fileCount: 0,
                  profileCount: 0,
                  folderCount: 0,
                ));

        final result = await storage.getFile(fileId: 'test-file');

        expect(result.id, equals('1'));
        expect(result.name, equals('test.txt'));
        verify(() => mockDataManagerService.getNodeInfo('test-file')).called(1);
      });

      test('getFileContent delegates to file storage', () async {
        final expectedContent = Uint8List.fromList([1, 2, 3]);
        when(() => mockDataManagerService.downloadFile(
                nodeId: any(named: 'nodeId')))
            .thenAnswer((_) async => expectedContent);

        final result = await storage.getFileContent(fileId: 'test-file');

        expect(result, equals(expectedContent));
        verify(() => mockDataManagerService.downloadFile(nodeId: 'test-file'))
            .called(1);
      });

      test('renameFile delegates to file storage', () async {
        when(() => mockDataManagerService.renameFile(
              nodeId: any(named: 'nodeId'),
              newName: any(named: 'newName'),
            )).thenAnswer((_) async {});

        await storage.renameFile(fileId: 'test-file', newName: 'new-name');

        verify(() => mockDataManagerService.renameFile(
              nodeId: 'test-file',
              newName: 'new-name',
            )).called(1);
      });

      test('renameFolder delegates to file storage', () async {
        when(() => mockDataManagerService.renameFolder(
              nodeId: any(named: 'nodeId'),
              newName: any(named: 'newName'),
            )).thenAnswer((_) async {});

        await storage.renameFolder(
            folderId: 'test-folder', newName: 'new-name');

        verify(() => mockDataManagerService.renameFolder(
              nodeId: 'test-folder',
              newName: 'new-name',
            )).called(1);
      });
    });

    group('Credential operations', () {
      test('deleteCredential delegates to credential storage', () async {
        when(() => mockDataManagerService.deleteClaimedCredential(
              nodeId: any(named: 'nodeId'),
            )).thenAnswer((_) async {});

        await storage.deleteCredential(digitalCredentialId: 'test-cred');

        verify(() => mockDataManagerService.deleteClaimedCredential(
              nodeId: 'test-cred',
            )).called(1);
      });

      test('getCredential delegates to credential storage', () async {
        final testCredential = UniversalParser.parse(jsonEncode({
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
        final expectedCredential = vault.DigitalCredential(
          verifiableCredential: testCredential,
          id: 'test-cred',
        );
        when(() => mockDataManagerService.getDigitalCredentials(any()))
            .thenAnswer((_) async => [expectedCredential]);

        final result =
            await storage.getCredential(digitalCredentialId: 'test-cred');

        expect(result, equals(expectedCredential));
        verify(() => mockDataManagerService
            .getDigitalCredentials(testSharedProfileId)).called(1);
      });

      test('listCredentials delegates to credential storage', () async {
        final testCredential = UniversalParser.parse(jsonEncode({
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
        final expectedCredential = vault.DigitalCredential(
          verifiableCredential: testCredential,
          id: 'test-cred',
        );
        when(() => mockDataManagerService.getDigitalCredentials(any()))
            .thenAnswer((_) async => [expectedCredential]);

        final result = await storage.listCredentials();

        expect(result.length, equals(1));
        expect(result[0], equals(expectedCredential));
        verify(() => mockDataManagerService
            .getDigitalCredentials(testSharedProfileId)).called(1);
      });

      test('saveCredential delegates to credential storage', () async {
        final testCredential = UniversalParser.parse(jsonEncode({
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
        when(() => mockDataManagerService.addVerifiableCredentialToProfile(
              profileId: any(named: 'profileId'),
              verifiableCredential: any(named: 'verifiableCredential'),
            )).thenAnswer((_) async {});

        await storage.saveCredential(verifiableCredential: testCredential);

        verify(() => mockDataManagerService.addVerifiableCredentialToProfile(
              profileId: testSharedProfileId,
              verifiableCredential: testCredential,
            )).called(1);
      });
    });

    test('query throws UnimplementedError', () {
      expect(() => storage.query('test-query'), throwsUnimplementedError);
    });
  });
}
