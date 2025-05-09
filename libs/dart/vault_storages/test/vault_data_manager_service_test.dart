import 'dart:typed_data';

import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:affinidi_tdk_vault_storages/affinidi_tdk_vault_storages.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'fixtures/data_encryption_material.dart';
import 'fixtures/did_signer.dart';
import 'fixtures/download_node_contents.dart';
import 'fixtures/get_node_info_file_ok.dart';
import 'fixtures/get_node_info_profile_ok.dart';
import 'fixtures/get_node_info_vc_ok.dart';
import 'fixtures/get_profile_data_ok.dart';
import 'fixtures/get_root_node_info_ok.dart';
import 'fixtures/get_scanned_file_info_ok.dart';
import 'fixtures/list_node_children_profile_ok.dart';
import 'fixtures/list_node_children_vc_ok.dart';
import 'fixtures/list_scanned_files_ok.dart';
import 'fixtures/node.dart';
import 'fixtures/profile.dart';
import 'fixtures/profile_data.dart';
import 'fixtures/verifiable_credential.dart';
import 'mocks/mocks.dart';
import 'mocks/vault_data_manager_api_service_mocks.dart';
import 'mocks/vault_data_manager_encryption_service_mocks.dart';

void main() {
  late MockVaultDataManagerApiService mockVaultDataManagerApiService;
  late MockVaultDataManagerEncryptionService
      mockVaultDataManagerEncryptionService;
  late VaultDataManagerEncryptionServiceMocks
      vaultDataManagerEncryptionServiceMocks;
  late VaultDataManagerApiServiceMocks vaultDataManagerApiServiceMocks;
  late VaultDataManagerService vaultDataManagerService;

  setUp(() {
    mockVaultDataManagerApiService = MockVaultDataManagerApiService();
    mockVaultDataManagerEncryptionService =
        MockVaultDataManagerEncryptionService();
    vaultDataManagerEncryptionServiceMocks =
        VaultDataManagerEncryptionServiceMocks(
      mockVaultDataManagerEncryptionService,
    );
    vaultDataManagerApiServiceMocks =
        VaultDataManagerApiServiceMocks(mockVaultDataManagerApiService);
    vaultDataManagerService = VaultDataManagerService(
      mockVaultDataManagerEncryptionService,
      mockVaultDataManagerApiService,
    );

    registerFallbackValue(Uint8List(0));
  });

  group(
      'When creating vault data manager service instance using consumer token',
      () {
    group('and it was created successfully,', () {
      test('it pass without exception thrown', () async {
        final didSigner = await getDidSigner();

        final vaultDataManagerService = await VaultDataManagerService.create(
          didSigner: didSigner,
          encryptionKey: Uint8List(2),
        );

        await expectLater(
            vaultDataManagerService, isA<VaultDataManagerService>());
      });
    });
  });

  group('When creating vault data manager instance using delegeated token', () {
    group('and it was created successfully,', () {
      test('it pass without exception thrown', () async {
        final didSigner = await getDidSigner();

        final vaultDataManagerService =
            await VaultDataManagerService.createDelegated(
          didSigner: didSigner,
          profileDid: 'profile_did',
          encryptionKey: Uint8List(2),
        );

        await expectLater(
            vaultDataManagerService, isA<VaultDataManagerService>());
      });
    });
  });

  group('When adding verifiable credential to profile', () {
    group('and it is added successfully,', () {
      test(
          'it calls vault data manager api and encryption services methods once',
          () async {
        when(
          vaultDataManagerEncryptionServiceMocks.generateDataEncryptionMaterial,
        ).thenAnswer((_) async => dataEncryptionMaterial);

        when(
          vaultDataManagerApiServiceMocks.uploadVerifiableCredential,
        ).thenAnswer((_) async =>
            Response<CreateNodeOK>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.addVerifiableCredentialToProfile(
          profileId: profileId,
          verifiableCredential: credential,
        );

        verify(vaultDataManagerEncryptionServiceMocks
                .generateDataEncryptionMaterial)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.uploadVerifiableCredential)
            .called(1);
      });
    });
  });

  group('When creating file', () {
    group('and it is created successfully', () {
      test(
          'it calls vault data manager api and encryption services methods once',
          () async {
        when(
          vaultDataManagerEncryptionServiceMocks.generateDataEncryptionMaterial,
        ).thenAnswer((_) async => dataEncryptionMaterial);
        when(
          vaultDataManagerApiServiceMocks.createFile,
        ).thenAnswer((_) async =>
            Response<CreateNodeOK>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.createFile(
          fileName: 'file_name.pdf',
          parentFolderNodeId: 'parent_node_id',
          data: Uint8List(5),
        );

        verify(vaultDataManagerEncryptionServiceMocks
                .generateDataEncryptionMaterial)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.createFile).called(1);
      });
    });

    group('and generating encryption material fails,', () {
      test(
          'it throws exception and never calls vault data manager api service method',
          () async {
        when(
          vaultDataManagerEncryptionServiceMocks.generateDataEncryptionMaterial,
        ).thenThrow(
            TdkException(message: 'something went wrong', code: 'test_code'));

        await expectLater(
          vaultDataManagerService.createFile(
            fileName: 'file_name.pdf',
            parentFolderNodeId: 'parent_node_id',
            data: Uint8List(5),
          ),
          throwsA(isA<TdkException>()),
        );

        verifyNever(vaultDataManagerApiServiceMocks.createFile);
      });
    });
  });

  group('When creating folder', () {
    group('and it is created successfully,', () {
      test('it calls vault data manager api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.createFolder,
        ).thenAnswer((_) async =>
            Response<CreateNodeOK>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.createFolder(
            folderName: 'folder_name', parentNodeId: 'parent_node_id');

        verify(vaultDataManagerApiServiceMocks.createFolder).called(1);
      });
    });
  });

  group('When creating profile', () {
    group('and it is created successfully,', () {
      test(
          'it calls vault data manager api and encryption services methods once',
          () async {
        when(
          () => mockVaultDataManagerApiService.getListOfProfiles(),
        ).thenAnswer((_) async => Response(requestOptions: RequestOptions()));

        when(
          vaultDataManagerEncryptionServiceMocks.generateDataEncryptionMaterial,
        ).thenAnswer((_) async => dataEncryptionMaterial);

        when(
          vaultDataManagerApiServiceMocks.createProfile,
        ).thenAnswer((_) async =>
            Response<CreateNodeOK>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.createProfile(name: profileName);

        verify(vaultDataManagerEncryptionServiceMocks
                .generateDataEncryptionMaterial)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.createProfile).called(1);
      });
    });
  });

  group('When deleting claimed credential', () {
    group('and it is deleted successfully,', () {
      test('it calls vault data manager api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.deleteNodeById,
        ).thenAnswer((_) async =>
            Response<DeleteNodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.deleteClaimedCredential(nodeId: nodeId);

        verify(vaultDataManagerApiServiceMocks.deleteNodeById).called(1);
      });
    });
  });

  group('When deleting file', () {
    group('and it is deleted successfully,', () {
      test('it calls vault data manager api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.deleteNodeById,
        ).thenAnswer((_) async =>
            Response<DeleteNodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.deleteFile(nodeId);

        verify(vaultDataManagerApiServiceMocks.deleteNodeById).called(1);
      });
    });
  });

  group('When deleting folder', () {
    group('and it is deleted successfully,', () {
      test('it calls vault data manager api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.deleteNodeById,
        ).thenAnswer((_) async =>
            Response<DeleteNodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.deleteFolder(nodeId);

        verify(vaultDataManagerApiServiceMocks.deleteNodeById).called(1);
      });
    });
  });

  group('When deleting profile', () {
    group('and it is deleted successfully,', () {
      test('it calls vault data manager api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.deleteNodeById,
        ).thenAnswer((_) async =>
            Response<DeleteNodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.deleteProfile(profileId);

        verify(vaultDataManagerApiServiceMocks.deleteNodeById).called(1);
      });
    });
  });

  group('When getting claimed credentials by profile', () {
    group('and they exists,', () {
      test(
          'it calls vault data manager api service get verifiable credentials nodes method once and other api and encryption services methods as many times as nodes length (2) and return list of credentials',
          () async {
        when(
          vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes,
        ).thenAnswer((_) async => Response<ListNodeChildrenOK>(
              requestOptions: RequestOptions(path: ''),
              data: listNodeChildrenVCOK,
            ));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks
              .decryptDekByWalletCryptoMaterial,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.downloadNodeContents,
        ).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: nodeContent,
            ));

        final result = await vaultDataManagerService
            .getClaimedCredentialsByProfile(profileId);

        expect(result, isNotEmpty);
        expect(result.length, 2);
        verify(vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .decryptDekByWalletCryptoMaterial)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.downloadNodeContents).called(2);
      });
    });
  });

  group('When getting profile data', () {
    group('and it exists,', () {
      test(
          'it calls api and encryption services methods once and return profile data',
          () async {
        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(), data: nodeInfoProfileOk));

        when(
          vaultDataManagerEncryptionServiceMocks.getDekEncryptedByApiPublicKey,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.getProfileData,
        ).thenAnswer((_) async =>
            Response(requestOptions: RequestOptions(), data: profileDataOk));

        final result = await vaultDataManagerService.getProfileData(profileId);

        expect(result, isNotNull);
        expect(result, isA<ProfileData>());
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.getProfileData).called(1);
      });
    });
  });

  group('When getting profiles', () {
    group('and they exists,', () {
      test(
          'it calls vault data manager api service method once and return list of profiles',
          () async {
        when(
          () => mockVaultDataManagerApiService.getListOfProfiles(),
        ).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(), data: listRootNodeChildrenOK));

        final result = await vaultDataManagerService.getProfiles();

        expect(result, isNotNull);
        expect(result, isA<List<VaultDataManagerProfile>>());
        expect(result.length, 1);
        verify(() => mockVaultDataManagerApiService.getListOfProfiles())
            .called(1);
      });
    });
  });

  group('When getting scanned file info', () {
    group('and it exists,', () {
      test(
          'it calls api service method once and return recognized profile data',
          () async {
        when(
          vaultDataManagerApiServiceMocks.getScannedFileInfo,
        ).thenAnswer((_) async => Response(
            requestOptions: RequestOptions(), data: getScannedFileInfoOK));

        final result =
            await vaultDataManagerService.getScannedFileInfo('file_token');

        expect(result, isNotNull);
        expect(result, isA<RecognizedProfileData>());
        expect(result.person?.properties.entries.first.value.alternatives,
            isNotEmpty);
        expect(result.categories?.properties.entries.first.value.properties,
            isNotEmpty);
        verify(vaultDataManagerApiServiceMocks.getScannedFileInfo).called(1);
      });
    });
  });

  group('When getting scanned files', () {
    group('and they exists,', () {
      test('it return list of scanned files', () async {
        when(
          () => mockVaultDataManagerApiService.getAllScannedFiles(),
        ).thenAnswer(
          (_) async => Response(
            requestOptions: RequestOptions(path: ''),
            data: listScannedFilesOk,
          ),
        );

        final result = await vaultDataManagerService.getScannedFiles();

        expect(result.length, 2);
        expect(result.first.jobId, 'job_id');
        verify(() => mockVaultDataManagerApiService.getAllScannedFiles())
            .called(1);
      });
    });
  });

  group('When getting vault data file consumption', () {
    group('and it exists,', () {
      test(
          'it calls api service method once and return not zero vault file consumption',
          () async {
        when(
          () => mockVaultDataManagerApiService.getRootNodeInfo(),
        ).thenAnswer((_) async =>
            Response(requestOptions: RequestOptions(), data: rootNodeInfoOk));

        final result =
            await vaultDataManagerService.getVaultDataFileConsumption();

        expect(result, isNotNull);
        expect(result.sizeInMB, isNonZero);

        verify(() => mockVaultDataManagerApiService.getRootNodeInfo())
            .called(1);
      });
    });

    group('and consumption data is null,', () {
      test('it calls api service method once and throw exeption', () async {
        when(
          () => mockVaultDataManagerApiService.getRootNodeInfo(),
        ).thenAnswer((_) async =>
            Response(requestOptions: RequestOptions(), data: null));

        await expectLater(vaultDataManagerService.getVaultDataFileConsumption(),
            throwsA(isA<Exception>()));
        verify(() => mockVaultDataManagerApiService.getRootNodeInfo())
            .called(1);
      });
    });
  });

  group('When renaming file', () {
    group('and it is renamed successfully', () {
      test('it calls api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.renameNode,
        ).thenAnswer((_) async =>
            Response<NodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.renameFile(
            nodeId: 'node_id', newName: 'new_name');

        verify(vaultDataManagerApiServiceMocks.renameNode).called(1);
      });
    });
  });

  group('When renaming folder', () {
    group('and it is renamed successfully', () {
      test('it calls api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.renameNode,
        ).thenAnswer((_) async =>
            Response<NodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.renameFolder(
            nodeId: 'node_id', newName: 'new_name');

        verify(vaultDataManagerApiServiceMocks.renameNode).called(1);
      });
    });
  });

  group('When scanning file', () {
    group('and it is passed successfully,', () {
      test('it calls api and encryption services methods once', () async {
        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: nodeInfoProfileOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks.getDekEncryptedByApiPublicKey,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.startScanFile,
        ).thenAnswer((_) async => Response<StartFileScanOK>(
            requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.scanFile('node_id');

        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.startScanFile).called(1);
      });
    });
  });

  group('When updating profile data', () {
    group('and it is updated successfully', () {
      test('it calls api and encryption services methods once', () async {
        when(
          vaultDataManagerEncryptionServiceMocks.generateDataEncryptionMaterial,
        ).thenAnswer((_) async => dataEncryptionMaterial);

        when(
          vaultDataManagerApiServiceMocks.updateProfileData,
        ).thenAnswer((_) async => Response<UpdateProfileDataOK>(
            requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.updateProfileData(
            profileId: profileId, profileData: profileData);

        verify(vaultDataManagerEncryptionServiceMocks
                .generateDataEncryptionMaterial)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.updateProfileData).called(1);
      });
    });
  });

  group('When updating profile metadata', () {
    group('and it is updated successfully', () {
      test('it calls api service method once', () async {
        when(
          vaultDataManagerApiServiceMocks.renameNode,
        ).thenAnswer((_) async =>
            Response<NodeDto>(requestOptions: RequestOptions(path: '')));

        await vaultDataManagerService.updateProfileMetadata(
          id: profileId,
          name: 'name',
          description: 'description',
        );

        verify(vaultDataManagerApiServiceMocks.renameNode).called(1);
      });
    });
  });

  group('When downloading file', () {
    group('and it is downloaded successfully,', () {
      test('it calls api and encryption services methods once and return file',
          () async {
        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoFileOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks.getDekEncryptedByApiPublicKey,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoFileOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks
              .decryptDekByWalletCryptoMaterial,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(vaultDataManagerApiServiceMocks.downloadNodeContents)
            .thenAnswer((_) async => Response(
                  requestOptions: RequestOptions(path: ''),
                  data: nodeContent,
                ));

        final result =
            await vaultDataManagerService.downloadFile(nodeId: nodeId);

        expect(result, isNotEmpty);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithDek).called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .decryptDekByWalletCryptoMaterial)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.downloadNodeContents).called(1);
      });
    });

    group('and it fails with getting node info,', () {
      test('it throws exception and never call download node contents method',
          () async {
        when(
          () => mockVaultDataManagerApiService.getNodeInfo(
            nodeId: nodeId,
          ),
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoFileOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks.getDekEncryptedByApiPublicKey,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          () => mockVaultDataManagerApiService.getNodeInfo(
            nodeId: nodeId,
            dekEncryptedByVfsPublicKey: List.filled(5, 0),
          ),
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: null,
            ));

        await expectLater(
          vaultDataManagerService.downloadFile(nodeId: nodeId),
          throwsA(
            isA<TdkException>().having(
              (e) => e.code,
              'code',
              TdkExceptionType.fileInfoNotFound.code,
            ),
          ),
        );

        verify(() => mockVaultDataManagerApiService.getNodeInfo(nodeId: nodeId))
            .called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(1);
        verify(() => mockVaultDataManagerApiService.getNodeInfo(
              nodeId: nodeId,
              dekEncryptedByVfsPublicKey: List.filled(5, 0),
            )).called(1);
        verifyNever(vaultDataManagerEncryptionServiceMocks
            .decryptDekByWalletCryptoMaterial);
      });
    });

    group('and it fails with getting edek,', () {
      test('it throws exception and never call download node contents method',
          () async {
        when(
          () => mockVaultDataManagerApiService.getNodeInfo(
            nodeId: nodeId,
          ),
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoFileOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks.getDekEncryptedByApiPublicKey,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          () => mockVaultDataManagerApiService.getNodeInfo(
            nodeId: nodeId,
            dekEncryptedByVfsPublicKey: List.filled(5, 0),
          ),
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoFileWithoutEdekOk,
            ));

        await expectLater(
          vaultDataManagerService.downloadFile(nodeId: nodeId),
          throwsA(
            isA<TdkException>().having(
              (e) => e.code,
              'code',
              TdkExceptionType.dataEncryptionKeyNotFound.code,
            ),
          ),
        );

        verify(() => mockVaultDataManagerApiService.getNodeInfo(nodeId: nodeId))
            .called(1);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(1);
        verify(() => mockVaultDataManagerApiService.getNodeInfo(
              nodeId: nodeId,
              dekEncryptedByVfsPublicKey: List.filled(5, 0),
            )).called(1);
        verifyNever(vaultDataManagerEncryptionServiceMocks
            .decryptDekByWalletCryptoMaterial);
      });
    });
  });

  group('When getting child nodes', () {
    group('and they exist,', () {
      test('it calls api service method once and return list of nodes',
          () async {
        when(() => mockVaultDataManagerApiService.getChildrenByNodeId(any()))
            .thenAnswer((_) async => Response<ListNodeChildrenOK>(
                  requestOptions: RequestOptions(path: ''),
                  data: listNodeChildrenOK,
                ));

        final result =
            await vaultDataManagerService.getChildNodes(nodeId: nodeId);

        expect(result, isNotNull);
        expect(result?.length, 1);
        verify(() => mockVaultDataManagerApiService.getChildrenByNodeId(any()))
            .called(1);
      });
    });
  });

  group('When getting digital credentials', () {
    group('and they exists,', () {
      test(
          'it calls vault data manager api service get verifiable credentials nodes method once and other api and encryption services methods as many times as nodes length (2) and return list of digital credentials',
          () async {
        when(
          vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes,
        ).thenAnswer((_) async => Response<ListNodeChildrenOK>(
              requestOptions: RequestOptions(path: ''),
              data: listNodeChildrenVCOK,
            ));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks
              .decryptDekByWalletCryptoMaterial,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.downloadNodeContents,
        ).thenAnswer((_) async => Response(
              requestOptions: RequestOptions(path: ''),
              data: nodeContent,
            ));

        final result =
            await vaultDataManagerService.getDigitalCredentials(profileId);

        expect(result, isNotEmpty);
        expect(result.length, 2);
        verify(vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .decryptDekByWalletCryptoMaterial)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.downloadNodeContents).called(2);
      });
    });

    group('and it fails to download verifiable credentials,', () {
      test('it throws exception', () async {
        when(
          vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes,
        ).thenAnswer((_) async => Response<ListNodeChildrenOK>(
              requestOptions: RequestOptions(path: ''),
              data: listNodeChildrenVCOK,
            ));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        when(
          vaultDataManagerEncryptionServiceMocks
              .decryptDekByWalletCryptoMaterial,
        ).thenAnswer((_) async => List.filled(5, 0));

        when(
          vaultDataManagerApiServiceMocks.downloadNodeContents,
        ).thenAnswer((_) => throw Exception('Something went wrong'));

        await expectLater(
          vaultDataManagerService.getDigitalCredentials(profileId),
          throwsA(
            isA<TdkException>().having(
              (e) => e.code,
              'code',
              TdkExceptionType.failedToGetVerifiableCredentials.code,
            ),
          ),
        );

        verify(vaultDataManagerApiServiceMocks.getVerifiableCredentialsNodes)
            .called(1);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .getDekEncryptedByApiPublicKey)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithDek).called(2);
        verify(vaultDataManagerEncryptionServiceMocks
                .decryptDekByWalletCryptoMaterial)
            .called(2);
        verify(vaultDataManagerApiServiceMocks.downloadNodeContents).called(2);
      });
    });
  });

  group('When getting node info', () {
    group('and it exists,', () {
      test('it calls api service method once and return node', () async {
        when(
          vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek,
        ).thenAnswer((_) async => Response<GetDetailedNodeInfoOK>(
              requestOptions: RequestOptions(path: ''),
              data: getNodeInfoVcOk,
            ));

        final result = await vaultDataManagerService.getNodeInfo(nodeId);

        expect(result, isNotNull);
        verify(vaultDataManagerApiServiceMocks.getNodeInfoWithoutDek).called(1);
      });
    });
  });
}
