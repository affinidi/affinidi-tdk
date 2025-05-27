import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:built_value/json_object.dart';
import 'package:dio/dio.dart';

import '../affinidi_tdk_vault_data_manager.dart';
import 'dto/error_response.dart';
import 'extensions/dio_extension.dart';
import 'extensions/tdk_exception_extension.dart';
import 'helpers/retry_helper.dart';

/// A service class that implements the [VaultDataManagerApiServiceInterface].
/// This class provides the API service layer for managing vault data operations.
class VaultDataManagerApiService
    implements VaultDataManagerApiServiceInterface {
  /// A constant representing the base64-encoded string of the root node ID.
  static const rootNodeIdBase64Encoded = 'NzY3ZjY=';

  /// This constant is used as an identifier for the root node in the data structure.
  static const vcRootNodeIdUtf8Encoded = '1dbbb';

  /// The URL pointing to the profile template schema.
  static const profileTemplateUrl =
      'https://schema.affinidi.io/profile-template/template.json';

  final Dio _dio;
  final FilesApi _filesApi;
  final NodesApi _nodesApi;
  final ConfigApi _configApi;
  final ProfileDataApi _profileDataApi;
  final AccountsApi _accountsApi;
  final CryptographyService _cryptographyService = CryptographyService();

  /// Creates an instance of [VaultDataManagerApiService].
  VaultDataManagerApiService({
    required AffinidiTdkVaultDataManagerClient apiClient,
    Dio? dio,
  })  : _dio = dio ?? Dio(),
        _filesApi = apiClient.getFilesApi(),
        _nodesApi = apiClient.getNodesApi(),
        _configApi = apiClient.getConfigApi(),
        _profileDataApi = apiClient.getProfileDataApi(),
        _accountsApi = apiClient.getAccountsApi();

  @override
  Future<Response<CreateNodeOK>> createFile({
    required String parentFolderId,
    required String fileName,
    required Uint8List file,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    CancelToken? cancelToken,
  }) async {
    final edekInfo = EdekInfoBuilder()
      ..edek = base64.encode(dekEncryptedByWalletCryptoMaterial)
      ..dekekId = walletCryptoMaterialHash;

    final createNodeInput = CreateNodeInputBuilder()
      ..name = fileName
      ..type = NodeType.FILE
      ..parentNodeId = parentFolderId
      ..dek = base64.encode(dekEncryptedByVfsPublicKey)
      ..edekInfo = edekInfo;

    final createNodeResponse =
        await _createNode(createNodeInput: createNodeInput.build());

    final isNodeCreated = createNodeResponse.data is CreateNodeOK;

    if (!isNodeCreated) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Unable to create file.',
            code: TdkExceptionType.unableToCreateNode.code,
          ),
          StackTrace.current);
    }

    final hasPropertiesForForFileUpload =
        createNodeResponse.data?.url != null &&
            createNodeResponse.data?.fields != null;

    if (!hasPropertiesForForFileUpload) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to retrieve properties to upload the file.',
          code: TdkExceptionType.missingPropertiesForFileUpload.code,
        ),
        StackTrace.current,
      );
    }

    final uploadUrl = createNodeResponse.data!.url!;
    final uploadFields = createNodeResponse.data!.fields!;

    final fileData = FormData.fromMap({
      ...uploadFields.toMap(),
      'file': MultipartFile.fromBytes(file, filename: fileName),
    });

    await _uploadFile(
      uploadUrl: uploadUrl,
      data: fileData,
    );

    return createNodeResponse;
  }

  @override
  Future<Response<CreateNodeOK>> uploadVerifiableCredential({
    required String profileId,
    required String verifiableCredentialName,
    required Uint8List verifiableCredentialBlob,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    CancelToken? cancelToken,
  }) async {
    final edekInfo = EdekInfoBuilder()
      ..edek = base64.encode(dekEncryptedByWalletCryptoMaterial)
      ..dekekId = walletCryptoMaterialHash;

    final createNodeInput = CreateNodeInputBuilder()
      ..name = verifiableCredentialName
      ..type = NodeType.VC
      ..parentNodeId = _getVcRootIdByProfileId(profileId)
      ..dek = base64.encode(dekEncryptedByVfsPublicKey)
      ..edekInfo = edekInfo;

    final createNodeResponse = await _createNode(
      createNodeInput: createNodeInput.build(),
      cancelToken: cancelToken,
    );

    final isNodeCreated = createNodeResponse.data is CreateNodeOK;

    if (!isNodeCreated) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to create node for verifiable credential.',
          code: TdkExceptionType.unableToCreateNode.code,
        ),
        StackTrace.current,
      );
    }

    final hasPropertiesForForFileUpload =
        createNodeResponse.data?.url != null &&
            createNodeResponse.data?.fields != null;

    if (!hasPropertiesForForFileUpload) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Unable to retrieve properties to upload the verifiable credential.',
          code: TdkExceptionType.missingPropertiesForFileUpload.code,
        ),
        StackTrace.current,
      );
    }

    final uploadUrl = createNodeResponse.data!.url!;
    final uploadFields = createNodeResponse.data!.fields!;

    final fileData = FormData.fromMap({
      ...uploadFields.toMap(),
      'file': MultipartFile.fromBytes(verifiableCredentialBlob),
    });

    await _uploadFile(
      uploadUrl: uploadUrl,
      data: fileData,
    );

    return createNodeResponse;
  }

  @override
  Future<Response<ListNodeChildrenOK>> getVerifiableCredentialsNodes({
    required String profileId,
    CancelToken? cancelToken,
  }) async {
    return getChildrenByNodeId(
      _getVcRootIdByProfileId(
        profileId,
      ),
      cancelToken,
    );
  }

  @override
  Future<Response<CreateNodeOK>> createFolder({
    required String name,
    required String parentNodeId,
    CancelToken? cancelToken,
  }) async {
    final createFolderInput = CreateNodeInputBuilder()
      ..name = name
      ..type = NodeType.FOLDER
      ..parentNodeId = parentNodeId;

    return _createNode(
      createNodeInput: createFolderInput.build(),
      cancelToken: cancelToken,
    );
  }

  Future<Response<CreateNodeOK>> _createNode({
    required CreateNodeInput createNodeInput,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _nodesApi.createNode(
        createNodeInput: createNodeInput,
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to create node.',
          code: TdkExceptionType.unableToCreateNode.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  Future<Response> _uploadFile({
    required String uploadUrl,
    required dynamic data,
  }) async {
    try {
      final response = await _dio.fetch<dynamic>(RequestOptions(
        method: 'POST',
        path: uploadUrl,
        data: data,
        headers: {'Content-Type': 'application/octet-stream'},
      ));

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to upload file.',
          code: TdkExceptionType.unableToUploadFile.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<ListNodeChildrenOK>> getChildrenByNodeId(String nodeId,
      [CancelToken? cancelToken]) async {
    try {
      return await _nodesApi.listNodeChildren(
        nodeId: nodeId,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get children for $nodeId.',
          code: TdkExceptionType.unableToGetNodeChildren.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<GetDetailedNodeInfoOK>> getNodeInfo({
    required String nodeId,
    List<int>? dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  }) async {
    try {
      return await _nodesApi.getDetailedNodeInfo(
        nodeId: nodeId,
        dek: dekEncryptedByVfsPublicKey != null
            ? base64.encode(dekEncryptedByVfsPublicKey)
            : null,
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get node info for $nodeId.',
          code: TdkExceptionType.unableToGetNodeInfo.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<GetScannedFileInfoOK>> getScannedFileInfo({
    required String scannedFileJobId,
    CancelToken? cancelToken,
  }) async {
    try {
      return _filesApi.getScannedFileInfo(
        scannedFileJobId: scannedFileJobId,
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get scanned file info for $scannedFileJobId.',
          code: TdkExceptionType.unableToGetScannedFileInfo.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<ListScannedFilesOK>> getAllScannedFiles({
    CancelToken? cancelToken,
  }) async {
    try {
      return _filesApi.listScannedFiles(
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get all scanned files.',
          code: TdkExceptionType.unableToGetScannedFiles.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<StartFileScanOK>> startFileScan({
    required String nodeId,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  }) async {
    try {
      final scanFileInput = StartFileScanInputBuilder()
        ..dek = base64.encode(dekEncryptedByVfsPublicKey);

      return _filesApi.startFileScan(
        nodeId: nodeId,
        startFileScanInput: scanFileInput.build(),
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to start file scan for $nodeId',
          code: TdkExceptionType.unableToScanNode.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<UpdateProfileDataOK>> updateProfileData({
    required String profileNodeId,
    required Map profileData,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  }) async {
    try {
      final updateProfileDataInput = UpdateProfileDataInputBuilder()
        ..dek = base64.encode(dekEncryptedByVfsPublicKey)
        ..data = JsonObject(profileData);

      return _profileDataApi.updateProfileData(
        nodeId: profileNodeId,
        updateProfileDataInput: updateProfileDataInput.build(),
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to update profile data for $profileNodeId',
          code: TdkExceptionType.unableToUpdateProfileData.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<ListRootNodeChildrenOK>> getListOfProfiles({
    CancelToken? cancelToken,
  }) async {
    try {
      return _nodesApi.listRootNodeChildren(
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get list of profiles',
          code: TdkExceptionType.unableToGetProfiles.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<CreateNodeOK>> createProfile({
    required String profileName,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    String? profileDescription,
    String? profilePictureURI,
    CancelToken? cancelToken,
  }) async {
    final edekInfo = EdekInfoBuilder()
      ..edek = base64.encode(dekEncryptedByWalletCryptoMaterial)
      ..dekekId = walletCryptoMaterialHash;

    final createNodeInput = CreateNodeInputBuilder()
      ..name = profileName
      ..description = profileDescription
      ..type = NodeType.PROFILE
      ..parentNodeId = rootNodeIdBase64Encoded
      ..dek = base64.encode(dekEncryptedByVfsPublicKey)
      ..metadata = jsonEncode({
        'pictureURI': profilePictureURI,
      })
      ..edekInfo = edekInfo;

    return _createNode(
      createNodeInput: createNodeInput.build(),
      cancelToken: cancelToken,
    );
  }

  @override
  Future<Response<NodeDto>> renameNode({
    required String nodeId,
    String? newName,
    String? newDescription,
    String? newPictureURI,
    CancelToken? cancelToken,
  }) async {
    try {
      final updateNodeInput = UpdateNodeInputBuilder()
        ..name = newName
        ..description = newDescription
        ..metadata = jsonEncode({
          'pictureURI': newPictureURI,
        });

      return _nodesApi.updateNode(
        nodeId: nodeId,
        updateNodeInput: updateNodeInput.build(),
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to rename node for $nodeId',
          code: TdkExceptionType.unableToEditNode.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<DeleteNodeDto>> deleteNodeById({
    required String nodeId,
    CancelToken? cancelToken,
  }) async {
    try {
      return await RetryHelper.retry(
        () => _nodesApi.deleteNode(
          nodeId: nodeId,
          cancelToken: cancelToken,
        ),
        retryIf: (error) {
          return error is DioException && error.isPendingUploadError;
        },
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to delete node for $nodeId',
          code: TdkExceptionType.unableToDeleteNode.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response> getProfileTemplate({
    CancelToken? cancelToken,
  }) async {
    try {
      return _dio.get(
        profileTemplateUrl,
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get profile template',
          code: TdkExceptionType.unableToGetProfileTemplate.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<InitNodesOK>> initVaultDataManagerSystem({
    CancelToken? cancelToken,
  }) async {
    try {
      // ignore: deprecated_member_use
      return _nodesApi.initNodes(
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to init vault data manager system',
          code: TdkExceptionType.unableToInitVaultDataManagerSystem.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Map<String, dynamic>> getVaultDataManagerPublicKey() async {
    try {
      final vautlUrl = VaultUtils.fetchElementsVaultApiUrl();
      final absoluteUrl = '$vautlUrl/vfs/.well-known/jwks.json';

      final response = await _dio.get<dynamic>(
        absoluteUrl,
      );

      final data = response.data as Map<String, dynamic>;
      final jwks = (data['keys'] as List).first;
      return jwks as Map<String, dynamic>;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get vault data manager public key',
          code: TdkExceptionType.unableToGetVaultDataManagerPublicKey.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<GetDetailedNodeInfoOK>> getRootNodeInfo({
    CancelToken? cancelToken,
  }) {
    return getNodeInfo(
      nodeId: rootNodeIdBase64Encoded,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<Response<QueryProfileDataOK>> getProfileData({
    required String profileNodeId,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  }) async {
    try {
      return _profileDataApi.queryProfileData(
        nodeId: profileNodeId,
        dek: base64.encode(dekEncryptedByVfsPublicKey),
        cancelToken: cancelToken,
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get profile data for $profileNodeId',
          code: TdkExceptionType.unableToGetProfileData.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @pragma('vm:prefer-inline')
  String _getVcRootIdByProfileId(String profileId) => base64.encode(utf8.encode(
      '${utf8.decode(base64.decode(profileId))}#$vcRootNodeIdUtf8Encoded'));

  @override
  Future<Response> downloadNodeContents({
    required String downloadUrl,
    required List<int> dek,
    CancelToken? cancelToken,
  }) async {
    try {
      return _dio.fetch(
        RequestOptions(
          method: 'GET',
          baseUrl: downloadUrl,
          responseType: ResponseType.bytes,
          cancelToken: cancelToken,
          headers: {
            'x-amz-server-side-encryption-customer-algorithm': 'AES256',
            'x-amz-server-side-encryption-customer-key': base64.encode(dek),
            'x-amz-server-side-encryption-customer-key-MD5':
                _cryptographyService.createMd5Base64(bytes: dek),
          },
        ),
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to download node contents',
          code: TdkExceptionType.unableToGetNodeInfo.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<GetConfigOK>> getConfig({
    CancelToken? cancelToken,
  }) {
    try {
      return _configApi.getConfig();
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get config',
          code: TdkExceptionType.unableToDownloadConfig.code,
          originalMessage: e.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<CreateAccountOK>> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    Map<String, Object>? metadata,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final createAccountInput = CreateAccountInputBuilder()
        ..accountIndex = accountIndex
        ..accountDid = accountDid
        ..didProof = didProof
        ..metadata = metadata != null ? JsonObject(metadata) : null;

      final response = await _accountsApi.createAccount(
        createAccountInput: createAccountInput.build(),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (error, stackTrace) {
      if (error is DioException &&
          error.response?.data != null &&
          error.response?.data is Map<String, dynamic>) {
        final errorResponse = ErrorResponse.fromJson(
            error.response!.data as Map<String, dynamic>);
        Error.throwWithStackTrace(
            TdkExceptionExtension.fromErrorResponse(errorResponse), stackTrace);
      }

      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to create account.',
          code: TdkExceptionType.unableToCreateAccount.code,
          originalMessage: error.toString(),
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<ListAccountsDto>> getAccounts({
    int? limit,
    String? exclusiveStartKey,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _accountsApi.listAccounts(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Unable to get accounts.',
          code: TdkExceptionType.unableToGetAccounts.code,
        ),
        stackTrace,
      );
    }
  }

  @override
  Future<Response<DeleteAccountDto>> deleteAccount({
    required int accountIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final response = await _accountsApi.deleteAccount(
        accountIndex: accountIndex,
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
      );

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Unable to delete account.',
            code: TdkExceptionType.unableToDeleteAccount.code,
          ),
          stackTrace);
    }
  }

  @override
  Future<Response<UpdateAccountDto>> updateAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    Map<String, Object>? metadata,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    try {
      final updateAccountInput = UpdateAccountInputBuilder()
        ..name = 'Hello'
        ..description = 'Description'
        ..alias = 'Alias'
        ..accountDid = accountDid
        ..didProof = didProof
        ..metadata = metadata != null ? JsonObject(metadata) : null;

      final response = await _accountsApi.updateAccount(
        accountIndex: accountIndex,
        updateAccountInput: updateAccountInput.build(),
        cancelToken: cancelToken,
        headers: headers,
        extra: extra,
        validateStatus: validateStatus,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return response;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
          TdkException(
            message: 'Unable to update account.',
            code: TdkExceptionType.unableToUpdateAccount.code,
          ),
          stackTrace);
    }
  }
}
