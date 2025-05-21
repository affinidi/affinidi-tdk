import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_test_utilities/affinidi_tdk_test_utilities.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager/src/dto/error_response.dart';
import 'package:affinidi_tdk_vault_data_manager/src/exceptions/tdk_exception_type.dart';
import 'package:affinidi_tdk_vault_data_manager/src/extensions/tdk_exception_extension.dart';
import 'package:affinidi_tdk_vault_data_manager/src/helpers/retry_helper.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:test/test.dart';

import 'fixtures/api_service/file_response_fixtures.dart';
import 'fixtures/api_service/node_response_fixtures.dart';
import 'fixtures/api_service/test_data_fixtures.dart';

void main() {
  late VaultDataManagerApiServiceInterface vaultDataManagerApiService;
  final client = DioFixtures.client;
  late DioAdapter dioAdapter;
  late Dio uploadDio;
  late DioAdapter uploadDioAdapter;

  setUpAll(() {
    vaultDataManagerApiService = VaultDataManagerApiService(
      apiClient: AffinidiTdkVaultDataManagerClient(
        dio: client,
      ),
    );
  });

  setUp(() {
    dioAdapter = DioAdapterFixtures.adapter(client);
    uploadDio = Dio();
    uploadDioAdapter = DioAdapterFixtures.adapter(uploadDio);
    (vaultDataManagerApiService as VaultDataManagerApiService)
        .setDio(uploadDio);

    client.options.baseUrl = '';
  });

  tearDown(() {
    dioAdapter.reset();
    uploadDioAdapter.reset();
  });

  group('When retrieving list of profiles', () {
    group('and there are profiles available', () {
      test('it returns a list of profiles with correct data', () async {
        dioAdapter.mockRequestWithReply(
            url: '/v1/nodes',
            statusCode: 200,
            data: NodeResponseFixtures.profileList);
        final profilesResponse =
            await vaultDataManagerApiService.getListOfProfiles();
        expect(profilesResponse.data?.nodes?.toList().first.name, 'My profile');
      });
    });
    group('and there are no profiles available', () {
      test('it returns an empty list of profiles', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes',
          statusCode: 200,
          data: NodeResponseFixtures.emptyList,
        );
        final profilesResponse =
            await vaultDataManagerApiService.getListOfProfiles();
        expect(profilesResponse.data?.nodes, isEmpty);
      });
    });
  });

  group('When retrieving the profile details data', () {
    group('and the profile exists', () {
      test('it returns the profile with correct node ID', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/${NodeResponseFixtures.profileNodeId}',
          statusCode: 200,
          data: NodeResponseFixtures.profile,
        );

        final nodeInfoResponse = await vaultDataManagerApiService.getNodeInfo(
            nodeId: NodeResponseFixtures.profileNodeId);
        expect(nodeInfoResponse.data?.nodeId,
            equals(NodeResponseFixtures.profileNodeId));
      });
    });
  });

  group('When deleting a profile', () {
    group('and the profile is successfully deleted', () {
      test('it returns a success status code', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/${NodeResponseFixtures.profileNodeId}',
          statusCode: 202,
          data: {},
          httpMethod: HttpMethod.delete,
        );

        final nodeInfoResponse = await vaultDataManagerApiService
            .deleteNodeById(nodeId: NodeResponseFixtures.profileNodeId);
        expect(nodeInfoResponse.statusCode, equals(202));
      });
    });

    group('and the profile cannot be deleted', () {
      test('it throws an exception with unable to delete error', () async {
        final url = '/v1/nodes/${NodeResponseFixtures.profileNodeId}';
        dioAdapter.mockRequestWithException(
          url: url,
          statusCode: 409,
          data: NodeResponseFixtures.unableToHardDelete,
        );

        expect(
            () => vaultDataManagerApiService.deleteNodeById(
                nodeId: NodeResponseFixtures.profileNodeId),
            throwsException);
      });
    });
  });

  group('When scanning a file', () {
    group('and the scan job is successfully initiated', () {
      test('it returns the job ID and started status', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes/${NodeResponseFixtures.profileNodeId}/file/scan',
          statusCode: 200,
          data: FileResponseFixtures.scanJobStarted,
          httpMethod: HttpMethod.post,
        );

        final scanFileResponse = await vaultDataManagerApiService.startFileScan(
            nodeId: NodeResponseFixtures.profileNodeId,
            dekEncryptedByVfsPublicKey: TestDataFixtures.testDek);
        expect(
            scanFileResponse.data?.jobId,
            equals(
                'ff61913ffb889000a8fd8bfcb7a94c3f1fdef272c9f5aff93c4aeabda4e7c038'));
        expect(scanFileResponse.data?.status.toString(), equals('STARTED'));
      });
    });

    group('and the scan job fails to start', () {
      test('it throws an exception with server error', () async {
        dioAdapter.mockRequestWithException(
          url: '/v1/nodes/${NodeResponseFixtures.profileNodeId}/file/scan',
          statusCode: 500,
        );

        expect(
            () => vaultDataManagerApiService.startFileScan(
                nodeId: NodeResponseFixtures.profileNodeId,
                dekEncryptedByVfsPublicKey: TestDataFixtures.testDek),
            throwsException);
      });
    });
  });

  group('When retrieving the list of scanned files', () {
    group('and scanned files exist', () {
      test('it returns a list of completed scanned files', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/scanned-files/',
          statusCode: 200,
          data: FileResponseFixtures.scannedFilesList,
        );

        final scannedFilesResponse =
            await vaultDataManagerApiService.getAllScannedFiles();
        expect(scannedFilesResponse.data?.scannedFiles.first.status,
            equals('COMPLETED'));
      });
    });

    group('and no scanned files exist', () {
      test('it returns an empty list of scanned files', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/scanned-files/',
          statusCode: 200,
          data: FileResponseFixtures.emptyScannedFilesList,
        );

        final scannedFilesResponse =
            await vaultDataManagerApiService.getAllScannedFiles();
        expect(scannedFilesResponse.data?.scannedFiles, isEmpty);
      });
    });
  });

  group('When creating a file', () {
    group('and node creation fails', () {
      test('it throws an exception with unable to create node error', () async {
        dioAdapter.mockRequestWithException(
          url: '/v1/nodes',
          statusCode: 500,
          data: {'error': TestDataFixtures.internalServerError},
          httpMethod: HttpMethod.post,
        );

        expect(
          () => vaultDataManagerApiService.createFile(
            parentFolderId: NodeResponseFixtures.rootNodeId,
            fileName: FileResponseFixtures.testFileName,
            file: Uint8List.fromList([1, 2, 3]),
            dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
            dekEncryptedByWalletCryptoMaterial: TestDataFixtures.testDek,
            walletCryptoMaterialHash: TestDataFixtures.testHash,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToCreateNode,
          )),
        );
      });
    });

    group('and upload properties are missing', () {
      test('it throws an exception with missing properties error', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes',
          statusCode: 200,
          data: {
            'nodeId': NodeResponseFixtures.testNodeId,
            // Missing url and fields
          },
          httpMethod: HttpMethod.post,
        );

        expect(
          () => vaultDataManagerApiService.createFile(
            parentFolderId: NodeResponseFixtures.rootNodeId,
            fileName: FileResponseFixtures.testFileName,
            file: Uint8List.fromList([1, 2, 3]),
            dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
            dekEncryptedByWalletCryptoMaterial: TestDataFixtures.testDek,
            walletCryptoMaterialHash: TestDataFixtures.testHash,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.missingPropertiesForFileUpload,
          )),
        );
      });
    });

    group('and file upload fails', () {
      test('it throws an exception with unable to upload file error', () async {
        dioAdapter.mockRequestWithReply(
          url: '/v1/nodes',
          statusCode: 200,
          data: {
            'nodeId': NodeResponseFixtures.testNodeId,
            'url': TestDataFixtures.uploadUrl,
            'fields': TestDataFixtures.testUploadFields,
          },
          httpMethod: HttpMethod.post,
        );

        uploadDioAdapter.onPost(
          TestDataFixtures.uploadUrl,
          (server) => server.throws(
              500,
              DioException(
                requestOptions: RequestOptions(path: ''),
                error: TestDataFixtures.uploadFailed,
              )),
          data: Matchers.any,
        );

        expect(
          () => vaultDataManagerApiService.createFile(
            parentFolderId: NodeResponseFixtures.rootNodeId,
            fileName: FileResponseFixtures.testFileName,
            file: Uint8List.fromList([1, 2, 3]),
            dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
            dekEncryptedByWalletCryptoMaterial: TestDataFixtures.testDek,
            walletCryptoMaterialHash: TestDataFixtures.testHash,
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToUploadFile,
          )),
        );
      });
    });
  });

  group('When creating an account', () {
    test('it returns the created account data', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/accounts',
        statusCode: 200,
        data: {'accountIndex': 1, 'accountDid': TestDataFixtures.testDid},
        httpMethod: HttpMethod.post,
      );

      final result = await vaultDataManagerApiService.createAccount(
        accountIndex: 1,
        accountDid: TestDataFixtures.testDid,
        didProof: TestDataFixtures.testDidProof,
        metadata: {'name': 'Test Account'},
      );

      expect(result.data?.accountIndex, equals(1));
    });
  });

  group('When downloading node contents', () {
    test('it includes encryption headers in the request', () async {
      final dek = TestDataFixtures.testDek;
      final md5 =
          CryptographyService().createMd5Base64(bytes: Uint8List.fromList(dek));

      uploadDioAdapter.onGet(
        '',
        (server) => server.reply(200, Uint8List.fromList([1, 2, 3]), headers: {
          'x-amz-server-side-encryption-customer-algorithm': ['AES256'],
          'x-amz-server-side-encryption-customer-key': [base64.encode(dek)],
          'x-amz-server-side-encryption-customer-key-MD5': [md5],
        }),
      );

      final result = await vaultDataManagerApiService.downloadNodeContents(
        downloadUrl: TestDataFixtures.downloadUrl,
        dek: Uint8List.fromList(dek),
      );

      expect(result.data, equals(Uint8List.fromList([1, 2, 3])));
    });
  });

  group('When getting profile template', () {
    test('it fetches and returns the schema', () async {
      uploadDioAdapter.onGet(
        TestDataFixtures.schemaUrl,
        (server) => server.reply(200, {
          'person': {'type': 'object'}
        }),
        headers: {
          'Content-Type': ['application/json'],
        },
      );

      final response = await vaultDataManagerApiService.getProfileTemplate();
      final data = response.data as Map<String, dynamic>;
      final person = data['person'] as Map<String, dynamic>;
      expect(person['type'], equals('object'));
    });
  });

  group('When updating profile data', () {
    test('it successfully updates the profile data', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/nodes/${NodeResponseFixtures.rootNodeId}/profile-data',
        statusCode: 200,
        data: {
          'data': {'name': 'Updated'}
        },
        httpMethod: HttpMethod.patch,
      );

      final result = await vaultDataManagerApiService.updateProfileData(
        profileNodeId: NodeResponseFixtures.rootNodeId,
        profileData: {'name': 'Updated'},
        dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
      );

      final data = result.data?.data?.value as Map<String, dynamic>;
      expect(data['name'], equals('Updated'));
    });
  });

  group('When getting children by node ID', () {
    test('it returns the list of child nodes', () async {
      final nodeId = 'NzY3ZjYjMWRiYmI=';
      dioAdapter.onGet(
        '/v1/nodes/$nodeId/children',
        (server) => server.reply(200, TestDataFixtures.testChildrenData),
        queryParameters: {'limit': 10},
      );

      final result =
          await vaultDataManagerApiService.getChildrenByNodeId(nodeId);
      expect(result.data?.nodes?.length, equals(2));
    });
  });

  group('When uploading a verifiable credential', () {
    test('it uploads the VC and returns the node', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/nodes',
        statusCode: 200,
        data: {
          'nodeId': NodeResponseFixtures.testNodeId,
          'url': TestDataFixtures.uploadUrl,
          'fields': TestDataFixtures.testUploadFields,
        },
        httpMethod: HttpMethod.post,
      );

      uploadDioAdapter.onPost(
        TestDataFixtures.uploadUrl,
        (server) => server.reply(200, <String, dynamic>{}),
        data: Matchers.any,
      );

      final result =
          await vaultDataManagerApiService.uploadVerifiableCredential(
        profileId: NodeResponseFixtures.rootNodeId,
        verifiableCredentialName: FileResponseFixtures.testVcName,
        verifiableCredentialBlob: Uint8List.fromList([1, 2, 3]),
        dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
        dekEncryptedByWalletCryptoMaterial: TestDataFixtures.testDek,
        walletCryptoMaterialHash: TestDataFixtures.testHash,
      );

      expect(result.data?.nodeId, isNotNull);
    });
  });

  group('When getting verifiable credentials nodes', () {
    test('it returns the list of VC nodes', () async {
      final profileId = 'NzY3ZjYjMWRiYmI=';
      final nodeId = base64.encode(
          utf8.encode('${utf8.decode(base64.decode(profileId))}#1dbbb'));
      dioAdapter.onGet(
        '/v1/nodes/$nodeId/children',
        (server) => server.reply(200, TestDataFixtures.testVcData),
        queryParameters: {'limit': 10},
      );

      final result =
          await vaultDataManagerApiService.getVerifiableCredentialsNodes(
        profileId: profileId,
      );

      expect(result.data?.nodes?.length, equals(1));
      expect(result.data?.nodes?.first.type, equals(NodeType.VC));
    });
  });

  group('When creating a folder', () {
    test('it creates the folder and returns the node', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/nodes',
        statusCode: 200,
        data: {
          'nodeId': NodeResponseFixtures.testFolderId,
          'name': 'Test Folder',
          'nodeType': 'FOLDER',
        },
        httpMethod: HttpMethod.post,
      );

      final result = await vaultDataManagerApiService.createFolder(
        name: 'Test Folder',
        parentNodeId: NodeResponseFixtures.rootNodeId,
      );

      expect(result.data?.nodeId, equals(NodeResponseFixtures.testFolderId));
    });
  });

  group('When getting vault data manager public key', () {
    test('it returns the public key', () async {
      uploadDioAdapter.onGet(
        TestDataFixtures.jwksUrl,
        (server) => server.reply(200, {
          'keys': [
            {
              'kty': 'RSA',
              'kid': TestDataFixtures.testKid,
              'use': 'sig',
              'n': 'test-n',
              'e': 'AQAB',
            }
          ]
        }),
      );

      final result =
          await vaultDataManagerApiService.getVaultDataManagerPublicKey();
      expect(result['kid'], equals(TestDataFixtures.testKid));
    });
  });

  group('When getting root node info', () {
    test('it returns the root node information', () async {
      final nodeId = 'NzY3ZjY=';
      dioAdapter.mockRequestWithReply(
        url: '/v1/nodes/$nodeId',
        statusCode: 200,
        data: {
          'nodeId': nodeId,
          'name': 'Root Node',
          'nodeType': 'FOLDER',
          'status': 'CREATED',
          'createdAt': '2024-01-01T00:00:00Z',
          'modifiedAt': '2024-01-01T00:00:00Z',
          'createdBy': 'did:key:test',
          'modifiedBy': 'did:key:test',
          'consumerId': 'did:key:test',
          'fileCount': 0,
          'profileCount': 0,
          'folderCount': 0,
          'vcCount': 0,
          'schema': 'primary.schema',
          'type': 'FOLDER',
          'parentNodeId': 'root',
          'profileId': nodeId,
        },
      );

      final result = await vaultDataManagerApiService.getRootNodeInfo();
      expect(result.data?.nodeId, equals(nodeId));
    });
  });

  group('When getting profile data', () {
    test('it returns the profile data', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/nodes/NzY3ZjY=/profile-data',
        statusCode: 200,
        data: {
          'data': TestDataFixtures.testProfileData,
        },
      );

      final result = await vaultDataManagerApiService.getProfileData(
        profileNodeId: 'NzY3ZjY=',
        dekEncryptedByVfsPublicKey: TestDataFixtures.testDek,
      );

      final data = result.data?.data?.value as Map<String, dynamic>;
      expect(data['name'], equals('Test Profile'));
    });
  });

  group('When getting config', () {
    test('it returns the configuration data', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/config',
        statusCode: 200,
        data: TestDataFixtures.testConfigData,
      );

      final result = await vaultDataManagerApiService.getConfig();
      expect(result.data, isNotNull);
    });
  });

  group('When getting accounts', () {
    test('it returns the list of accounts', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/accounts',
        statusCode: 200,
        data: {
          'items': [
            {
              'accountIndex': 1,
              'accountDid': TestDataFixtures.testDid,
              'metadata': {'name': 'Test Account'},
            }
          ]
        },
      );

      final result = await vaultDataManagerApiService.getAccounts();
      expect(result.data, isNotNull);
    });
  });

  group('When deleting an account', () {
    test('it successfully deletes the account', () async {
      dioAdapter.mockRequestWithReply(
        url: '/v1/accounts/1',
        statusCode: 200,
        data: {
          'accountIndex': 1,
          'deleted': true,
        },
        httpMethod: HttpMethod.delete,
      );

      final result = await vaultDataManagerApiService.deleteAccount(
        accountIndex: 1,
      );

      expect(result.data?.accountIndex, equals(1));
    });
  });

  group('When handling errors', () {
    group('and the error response has details', () {
      test('it handles the error response with details', () async {
        dioAdapter.onPatch(
          '/v1/accounts/1',
          (server) => server.throws(
              400,
              DioExceptionFixtures.withStatusCode(400,
                  url: '/v1/accounts/1',
                  data: {
                    'name': 'BadRequestError',
                    'traceId': TestDataFixtures.testTraceId,
                    'message': TestDataFixtures.invalidRequest,
                    'details': [
                      {'issue': 'Invalid request'},
                      {'issue': 'Another issue'}
                    ]
                  })),
          data: Matchers.any,
          headers: {'content-type': 'application/json'},
        );

        expect(
          () => vaultDataManagerApiService.updateAccount(
            accountIndex: 1,
            accountDid: TestDataFixtures.testDid,
            didProof: TestDataFixtures.testDidProof,
            metadata: {'name': 'Updated Account'},
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToUpdateAccount,
          )),
        );
      });
    });

    group('and the error response has missing fields', () {
      test('it handles the error response with missing fields', () async {
        dioAdapter.onPatch(
          '/v1/accounts/1',
          (server) => server.throws(
              400,
              DioExceptionFixtures.withStatusCode(400,
                  url: '/v1/accounts/1',
                  data: {
                    'name': 'BadRequestError',
                    'message': TestDataFixtures.invalidRequest
                  })),
          data: Matchers.any,
          headers: {'content-type': 'application/json'},
        );

        expect(
          () => vaultDataManagerApiService.updateAccount(
            accountIndex: 1,
            accountDid: TestDataFixtures.testDid,
            didProof: TestDataFixtures.testDidProof,
            metadata: {'name': 'Updated Account'},
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToUpdateAccount,
          )),
        );
      });
    });

    group('and the error response has invalid details format', () {
      test('it handles the error response with invalid details format',
          () async {
        dioAdapter.onPatch(
          '/v1/accounts/1',
          (server) => server.throws(
              400,
              DioExceptionFixtures.withStatusCode(400,
                  url: '/v1/accounts/1',
                  data: {
                    'name': 'BadRequestError',
                    'traceId': TestDataFixtures.testTraceId,
                    'message': TestDataFixtures.invalidRequest,
                    'details': 'not an array'
                  })),
          data: Matchers.any,
          headers: {'content-type': 'application/json'},
        );

        expect(
          () => vaultDataManagerApiService.updateAccount(
            accountIndex: 1,
            accountDid: TestDataFixtures.testDid,
            didProof: TestDataFixtures.testDidProof,
            metadata: {'name': 'Updated Account'},
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToUpdateAccount,
          )),
        );
      });
    });

    group('and the error response has invalid detail item format', () {
      test('it handles the error response with invalid detail item format',
          () async {
        dioAdapter.onPatch(
          '/v1/accounts/1',
          (server) => server.throws(
              400,
              DioExceptionFixtures.withStatusCode(400,
                  url: '/v1/accounts/1',
                  data: {
                    'name': 'BadRequestError',
                    'traceId': TestDataFixtures.testTraceId,
                    'message': TestDataFixtures.invalidRequest,
                    'details': [
                      {'invalid': 'format'}
                    ]
                  })),
          data: Matchers.any,
          headers: {'content-type': 'application/json'},
        );

        expect(
          () => vaultDataManagerApiService.updateAccount(
            accountIndex: 1,
            accountDid: TestDataFixtures.testDid,
            didProof: TestDataFixtures.testDidProof,
            metadata: {'name': 'Updated Account'},
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToUpdateAccount,
          )),
        );
      });
    });
  });

  group('When creating error response', () {
    test('it creates instance from JSON', () {
      final json = {
        'name': 'AlreadyExistsError',
        'message': TestDataFixtures.invalidRequest,
      };
      final response = ErrorResponse.fromJson(json);
      expect(response.type.code, equals(TestDataFixtures.accountAlreadyExists));
      expect(response.message, equals(TestDataFixtures.invalidRequest));
    });

    test('it uses default type when name is missing', () {
      final json = {
        'message': TestDataFixtures.invalidRequest,
      };
      final response = ErrorResponse.fromJson(json);
      expect(response.type.code, equals(TestDataFixtures.failedToDecrypt));
      expect(response.message, equals(TestDataFixtures.invalidRequest));
    });
  });

  group('When creating TdkException from error response', () {
    test('it creates exception with error response data', () {
      final response = ErrorResponse(
        type: TdkExceptionType.accountAlreadyExists,
        message: TestDataFixtures.invalidRequest,
      );
      final exception = TdkExceptionExtension.fromErrorResponse(response);
      expect(exception.code, equals(TestDataFixtures.accountAlreadyExists));
      expect(exception.message, equals(TestDataFixtures.invalidRequest));
    });

    test('it handles null message', () {
      final response = ErrorResponse(
        type: TdkExceptionType.accountAlreadyExists,
        message: null,
      );
      final exception = TdkExceptionExtension.fromErrorResponse(response);
      expect(exception.code, equals(TestDataFixtures.accountAlreadyExists));
      expect(exception.message, equals(''));
    });
  });

  group('When retrying operations', () {
    group('and maxAttempts is invalid', () {
      test('it throws ArgumentError for zero maxAttempts', () async {
        await expectLater(
          () async {
            await RetryHelper.retry(
              () async => null,
              maxAttempts: 0,
            );
          },
          throwsA(isA<ArgumentError>()),
        );
      });

      test('it throws ArgumentError for negative maxAttempts', () async {
        await expectLater(
          () async {
            await RetryHelper.retry(
              () async => null,
              maxAttempts: -1,
            );
          },
          throwsA(isA<ArgumentError>()),
        );
      });
    });

    group('and delay parameters are negative', () {
      test('it handles negative initialDelay', () async {
        final result = await RetryHelper.retry(
          () async => null,
          initialDelay: const Duration(milliseconds: -1),
        );
        expect(result, isNull);
      });

      test('it handles negative maxDelay', () async {
        final result = await RetryHelper.retry(
          () async => null,
          maxDelay: const Duration(milliseconds: -1),
        );
        expect(result, isNull);
      });
    });

    group('and operation fails initially', () {
      test('it retries and succeeds after failure', () async {
        var attempts = 0;
        final result = await RetryHelper.retry(
          () async {
            attempts++;
            if (attempts < 2) {
              throw Exception('Failed');
            }
            return 'success';
          },
          maxAttempts: 3,
          initialDelay: const Duration(milliseconds: 100),
        );
        expect(result, equals('success'));
        expect(attempts, equals(2));
      });

      test('it uses custom retryIf predicate', () async {
        var attempts = 0;
        final result = await RetryHelper.retry(
          () async {
            attempts++;
            if (attempts < 2) {
              throw Exception('Failed');
            }
            return 'success';
          },
          maxAttempts: 3,
          initialDelay: const Duration(milliseconds: 100),
          retryIf: (error) =>
              error is Exception && error.toString().contains('Failed'),
        );
        expect(result, equals('success'));
        expect(attempts, equals(2));
      });

      test('it uses custom multiplier for delay', () async {
        var attempts = 0;
        final result = await RetryHelper.retry(
          () async {
            attempts++;
            if (attempts < 3) {
              throw Exception('Failed');
            }
            return 'success';
          },
          maxAttempts: 3,
          initialDelay: const Duration(milliseconds: 100),
          multiplier: 3,
        );
        expect(result, equals('success'));
        expect(attempts, equals(3));
      });
    });
  });

  group('When updating an account', () {
    test('it successfully updates the account data', () async {
      dioAdapter.onPut(
        '/v1/accounts/1',
        (server) => server.reply(200, {
          'accountIndex': 1,
          'accountDid': TestDataFixtures.testDid,
          'metadata': {'name': 'Updated Account'}
        }),
        data: {
          'name': 'Hello',
          'description': 'Description',
          'alias': 'Alias',
          'accountDid': TestDataFixtures.testDid,
          'didProof': TestDataFixtures.testDidProof,
          'metadata': {'name': 'Updated Account'}
        },
        headers: {'content-type': 'application/json'},
      );

      final result = await vaultDataManagerApiService.updateAccount(
        accountIndex: 1,
        accountDid: TestDataFixtures.testDid,
        didProof: TestDataFixtures.testDidProof,
        metadata: {'name': 'Updated Account'},
      );

      expect(result.data?.accountIndex, equals(1));
      expect(result.data?.accountDid, equals(TestDataFixtures.testDid));
      expect(result.data?.metadata?.value, equals({'name': 'Updated Account'}));
    });
  });

  group('When retrieving node info', () {
    group('and node info retrieval fails', () {
      test('it throws exception with unable to get node info error', () async {
        dioAdapter.onGet(
          '/v1/nodes/NzY3ZjYjV2dFR2U=',
          (server) => server.throws(
              500,
              DioException(
                requestOptions: RequestOptions(path: ''),
                response: Response(
                  requestOptions: RequestOptions(path: ''),
                  statusCode: 500,
                  data: {'error': TestDataFixtures.internalServerError},
                ),
              )),
        );

        expect(
          () => vaultDataManagerApiService.getNodeInfo(
            nodeId: 'NzY3ZjYjV2dFR2U=',
          ),
          throwsA(isA<TdkException>().having(
            (error) => error.code,
            'code',
            TestDataFixtures.unableToGetNodeInfo,
          )),
        );
      });
    });

    group('and dek is provided', () {
      test('it includes dek in the request', () async {
        final dek = TestDataFixtures.testDek;
        dioAdapter.onGet(
          '/v1/nodes/NzY3ZjYjV2dFR2U=',
          (server) => server.reply(200, NodeResponseFixtures.profile),
          queryParameters: {
            'dek': base64.encode(dek),
          },
        );

        final response = await vaultDataManagerApiService.getNodeInfo(
          nodeId: 'NzY3ZjYjV2dFR2U=',
          dekEncryptedByVfsPublicKey: dek,
        );

        expect(response.data?.nodeId, equals('NzY3ZjYjV2dFR2U='));
      });
    });
  });
}
