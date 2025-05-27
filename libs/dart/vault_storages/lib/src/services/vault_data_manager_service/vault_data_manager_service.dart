import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart'
    as vdm;
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart'
    hide NodeStatus, NodeType;
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:ssi/ssi.dart';

import '../../exceptions/tdk_exception_type.dart';
import '../../helpers/cancel_token_adapter.dart';
import '../../model/account.dart';
import '../../model/node.dart';
import '../../model/node_status.dart';
import '../../model/node_type.dart';
import '../../model/profile_data.dart';
import '../../model/recognized_profile_data.dart';
import '../../model/scanned_file.dart';
import '../../model/vault_consumption.dart';
import '../../model/vault_data_manager_profile.dart';
import 'vault_data_manager_service_interface.dart';

/// Implementation of [VaultDataManagerServiceInterface] that handles encrypted storage
/// operations using vault data manager services.
class VaultDataManagerService implements VaultDataManagerServiceInterface {
  /// Service for handling encryption operations
  late final vdm.VaultDataManagerEncryptionServiceInterface
      _vaultDataManagerEncryptionService;

  /// Service for API operations with the vault
  late final vdm.VaultDataManagerApiServiceInterface
      _vaultDataManagerApiService;

  /// Logger instance for error handling
  final Logger _logger;

  final Uint8List _encryptedKey;
  final KeyPair _keyPair;

  VaultDataManagerService._(
    this._vaultDataManagerEncryptionService,
    this._vaultDataManagerApiService, {
    Logger? logger,
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
  })  : _logger = logger ?? Logger.instance,
        _encryptedKey = encryptedDekek,
        _keyPair = keyPair;

  /// Creates a new instance of [VaultDataManagerService] for testing purposes.
  @visibleForTesting
  VaultDataManagerService(
    vdm.VaultDataManagerEncryptionServiceInterface
        vaultDataManagerEncryptionService,
    vdm.VaultDataManagerApiServiceInterface vaultDataManagerApiService, {
    Logger? logger,
    required Uint8List encryptedKey,
    required KeyPair keyPair,
  }) : this._(
          vaultDataManagerEncryptionService,
          vaultDataManagerApiService,
          encryptedDekek: encryptedKey,
          keyPair: keyPair,
        );

  /// Creates a new vault file system service instance with encryption.
  ///
  /// - [encryptedDekek] - encrypted kek of delegated profile
  /// - [keyPair] - keyPair of delegated profile
  static Future<VaultDataManagerService> create({
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
  }) async {
    final consumerAuthProvider =
        ConsumerAuthProvider(signer: keyPair.didSigner());
    return _create(
      encryptedDekek: encryptedDekek,
      keyPair: keyPair,
      authTokenHook: consumerAuthProvider.fetchConsumerToken,
    );
  }

  /// Creates a new vault file system service instance to access deletegated profile
  ///
  /// - [profileDid] - did of profile that grantee is accessing
  /// - [encryptedDekek] - encrypted kek of delegated profile
  /// - [keyPair] - keyPair of delegated profile
  static Future<VaultDataManagerService> createDelegated({
    required String profileDid,
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
  }) async {
    final consumerAuthProvider =
        ConsumerAuthProvider(signer: keyPair.didSigner());
    return _create(
      encryptedDekek: encryptedDekek,
      keyPair: keyPair,
      authTokenHook: () =>
          consumerAuthProvider.fetchDelegatedToken(profileDid: profileDid),
    );
  }

  static Future<VaultDataManagerService> _create({
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
    required Future<String?> Function() authTokenHook,
  }) async {
    final elementsVaultApiUrl =
        Environment.fetchEnvironment().elementsVaultApiUrl;
    final vaultDataManagerApiService = vdm.VaultDataManagerApiService(
        apiClient: AffinidiTdkVaultDataManagerClient(
      authTokenHook: authTokenHook,
      basePathOverride: '$elementsVaultApiUrl/vfs',
    ));

    final vfsPublicKey =
        await vaultDataManagerApiService.getVaultDataManagerPublicKey();

    final vaultDataManagerEncryptionService =
        vdm.VaultDataManagerEncryptionService(
      cryptographyService: CryptographyService(),
      jwk: vfsPublicKey,
    );

    final instance = VaultDataManagerService._(
      vaultDataManagerEncryptionService,
      vaultDataManagerApiService,
      encryptedDekek: encryptedDekek,
      keyPair: keyPair,
    );

    return instance;
  }

  @override
  Future<void> addVerifiableCredentialToProfile({
    required String profileId,
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  }) async {
    final verifiableCredentialBlob =
        utf8.encode(jsonEncode(verifiableCredential));
    final dekGenerateModel =
        await _vaultDataManagerEncryptionService.generateDataEncryptionMaterial(
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );
    final verifiableCredentialName =
        _getVerifiableCredentialName(verifiableCredential);

    await _vaultDataManagerApiService.uploadVerifiableCredential(
      profileId: profileId,
      verifiableCredentialName: verifiableCredentialName,
      verifiableCredentialBlob: verifiableCredentialBlob,
      dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByApiPublicKey,
      dekEncryptedByWalletCryptoMaterial:
          dekGenerateModel.dekEncryptedByWalletCryptoMaterial,
      walletCryptoMaterialHash: dekGenerateModel.walletCryptoMaterialHash,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> createFile({
    required String fileName,
    required String parentFolderNodeId,
    required Uint8List data,
    VaultCancelToken? cancelToken,
  }) async {
    final dekGenerateModel =
        await _vaultDataManagerEncryptionService.generateDataEncryptionMaterial(
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    await _vaultDataManagerApiService.createFile(
      parentFolderId: parentFolderNodeId,
      fileName: fileName,
      file: data,
      dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByApiPublicKey,
      dekEncryptedByWalletCryptoMaterial:
          dekGenerateModel.dekEncryptedByWalletCryptoMaterial,
      walletCryptoMaterialHash: dekGenerateModel.walletCryptoMaterialHash,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> createFolder({
    required String folderName,
    required String parentNodeId,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.createFolder(
      name: folderName,
      parentNodeId: parentNodeId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<Response<CreateNodeOK>> createProfile({
    required String name,
    String? description,
    String? profilePictureURI,
    VaultCancelToken? cancelToken,
  }) async {
    final dekGenerateModel =
        await _vaultDataManagerEncryptionService.generateDataEncryptionMaterial(
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    return await _vaultDataManagerApiService.createProfile(
      profileName: name,
      profileDescription: description,
      profilePictureURI: profilePictureURI,
      dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByApiPublicKey,
      dekEncryptedByWalletCryptoMaterial:
          dekGenerateModel.dekEncryptedByWalletCryptoMaterial,
      walletCryptoMaterialHash: dekGenerateModel.walletCryptoMaterialHash,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> deleteClaimedCredential({
    required String nodeId,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.deleteNodeById(
      nodeId: nodeId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> deleteFile(
    String nodeId, {
    VaultCancelToken? cancelToken,
  }) async {
    try {
      await _vaultDataManagerApiService.deleteNodeById(
        nodeId: nodeId,
        cancelToken:
            cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
      );
    } on TdkException catch (e, stackTrace) {
      if (e.code == vdm.TdkExceptionType.unableToDeleteNode.code) {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to delete $nodeId file',
            code: TdkExceptionType.unableToDeleteFile.code,
          ),
          stackTrace,
        );
      }
      rethrow;
    }
  }

  @override
  Future<void> deleteFolder(
    String nodeId, {
    VaultCancelToken? cancelToken,
  }) async {
    try {
      await _vaultDataManagerApiService.deleteNodeById(
        nodeId: nodeId,
        cancelToken:
            cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
      );
    } on TdkException catch (e, stackTrace) {
      if (e.code == vdm.TdkExceptionType.unableToDeleteNode.code) {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to delete $nodeId folder',
            code: TdkExceptionType.unableToDeleteFolder.code,
          ),
          stackTrace,
        );
      }
      rethrow;
    }
  }

  @override
  Future<void> deleteProfile(
    String profileId, {
    VaultCancelToken? cancelToken,
  }) async {
    try {
      await _vaultDataManagerApiService.deleteNodeById(
        nodeId: profileId,
        cancelToken:
            cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
      );
    } on TdkException catch (e, stackTrace) {
      if (e.code == vdm.TdkExceptionType.unableToDeleteNode.code) {
        Error.throwWithStackTrace(
          TdkException(
            message: 'Failed to delete $profileId profile',
            code: TdkExceptionType.unableToDeleteProfile.code,
          ),
          stackTrace,
        );
      }
      rethrow;
    }
  }

  @override
  Future<List<DigitalCredential>> getClaimedCredentialsByProfile(
    String profileId, {
    VaultCancelToken? cancelToken,
  }) async {
    final verifiableCredentialNodesResponse =
        await _vaultDataManagerApiService.getVerifiableCredentialsNodes(
      profileId: profileId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final nodesResponse =
        verifiableCredentialNodesResponse.data?.nodes?.toList();

    final nodes = nodesResponse!
        .map<Node>((nodeResponse) => Node(
              name: nodeResponse.name,
              nodeId: nodeResponse.nodeId,
              status: NodeStatus.values.byName(
                nodeResponse.status.name,
              ),
              metadata: nodeResponse.metadata != null
                  ? Metadata.fromJson(jsonDecode(nodeResponse.metadata!)
                      as Map<String, dynamic>)
                  : null,
              description: nodeResponse.description,
              createdAt: nodeResponse.createdAt,
              modifiedAt: nodeResponse.modifiedAt,
              createdBy: nodeResponse.createdBy,
              modifiedBy: nodeResponse.modifiedBy,
              consumerId: nodeResponse.consumerId,
              fileCount: nodeResponse.fileCount,
              profileCount: nodeResponse.profileCount,
              folderCount: nodeResponse.folderCount,
              profileId: nodeResponse.profileId,
              type: NodeType.values.byName(nodeResponse.type.name),
            ))
        .where((node) => node.status == NodeStatus.CREATED)
        .toList();

    final verifiableCredentials = await Future.wait(
      nodes.map<Future<DigitalCredential>>((node) async {
        final verifiableCredential =
            await _getVerifiableCredentialByNodeIdFromCloud(
          nodeId: node.nodeId,
          cancelToken: cancelToken,
        );
        return DigitalCredential(
            verifiableCredential: verifiableCredential, id: node.nodeId);
      }),
      eagerError: cancelToken != null,
    ).catchError((Object error) {
      _logger.log(LogLevel.severe, error);
      return <DigitalCredential>[];
    });

    return verifiableCredentials;
  }

  Future<VerifiableCredential> _getVerifiableCredentialByNodeIdFromCloud({
    required String nodeId,
    VaultCancelToken? cancelToken,
  }) async {
    final verifiableCredentialRawData = await downloadFile(
      nodeId: nodeId,
      cancelToken: cancelToken,
    );
    final verifiableCredential = UniversalParser.parse(
        utf8.decode(verifiableCredentialRawData) as Object);

    return verifiableCredential;
  }

  @override
  Future<ProfileData> getProfileData(
    String profileId, {
    VaultCancelToken? cancelToken,
  }) async {
    final nodeInfoResponse = await _vaultDataManagerApiService.getNodeInfo(
      nodeId: profileId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final encryptedDekBase64 = nodeInfoResponse.data?.edekInfo?.edek;

    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
            encryptedDekBase64: encryptedDekBase64!,
            encryptionKey: await _keyPair.decrypt(_encryptedKey));
    final profileDataResponse =
        await _vaultDataManagerApiService.getProfileData(
      profileNodeId: profileId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final profilePerson = profileDataResponse.data?.data;

    return ProfileData.fromJson(
        jsonDecode(profilePerson.toString()) as Map<String, dynamic>);
  }

  @override
  Future<List<VaultDataManagerProfile>> getProfiles({
    VaultCancelToken? cancelToken,
  }) async {
    final profilesResponse =
        await _vaultDataManagerApiService.getListOfProfiles(
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final profileNodes = profilesResponse.data?.nodes?.toList() ?? [];

    final profiles = profileNodes
        .map<VaultDataManagerProfile>((nodeResponse) => VaultDataManagerProfile(
              id: nodeResponse.nodeId,
              name: nodeResponse.name,
              description: nodeResponse.description,
              pictureURI: nodeResponse.metadata != null
                  ? Metadata.fromJson(jsonDecode(nodeResponse.metadata!)
                          as Map<String, dynamic>)
                      .pictureURI
                  : '',
            ))
        .toList();

    return profiles;
  }

  @override
  Future<RecognizedProfileData> getScannedFileInfo(
    String fileToken, {
    VaultCancelToken? cancelToken,
  }) async {
    final scannedFileInfoResponse =
        await _vaultDataManagerApiService.getScannedFileInfo(
      scannedFileJobId: fileToken,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final scannedFileInfo = scannedFileInfoResponse.data?.data;

    return RecognizedProfileData.fromJson(
        jsonDecode(scannedFileInfo.toString()) as Map<String, dynamic>);
  }

  @override
  Future<List<ScannedFile>> getScannedFiles({
    VaultCancelToken? cancelToken,
  }) async {
    final scannedFilesResponse =
        await _vaultDataManagerApiService.getAllScannedFiles(
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final scannedFilesData = scannedFilesResponse.data?.scannedFiles;

    final scannedFiles = scannedFilesData!
        .map<ScannedFile>((scannedFile) => ScannedFile(
              name: scannedFile.name,
              status: scannedFile.status,
              createdAt: scannedFile.createdAt,
              jobId: scannedFile.jobId,
              profileId: scannedFile.profileId,
              nodeId: scannedFile.nodeId,
            ))
        .toList();

    return scannedFiles;
  }

  @override
  Future<VaultFileConsumption> getVaultDataFileConsumption({
    VaultCancelToken? cancelToken,
  }) async {
    final nodeInfoResponse = await _vaultDataManagerApiService.getRootNodeInfo(
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final consumedFileStorage = nodeInfoResponse.data?.consumedFileStorage;

    if (consumedFileStorage == null) {
      Error.throwWithStackTrace(
        TdkException(
          message:
              'Failed to get consumed file storage, missing required consumedFileStorage',
          code: TdkExceptionType.nullConsumedFileStorage.code,
        ),
        StackTrace.current,
      );
    }

    return VaultFileConsumption.fromBytes(consumedFileStorage);
  }

  @override
  Future<void> renameFile({
    required String nodeId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: nodeId,
      newName: newName,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: nodeId,
      newName: newName,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> scanFile(
    String nodeId, {
    VaultCancelToken? cancelToken,
  }) async {
    final nodeInfo = await _vaultDataManagerApiService.getNodeInfo(
      nodeId: nodeId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final encryptedDekBase64 = nodeInfo.data?.edekInfo?.edek;
    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
            encryptedDekBase64: encryptedDekBase64!,
            encryptionKey: await _keyPair.decrypt(_encryptedKey));

    await _vaultDataManagerApiService.startFileScan(
      nodeId: nodeId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> updateProfileData({
    required String profileId,
    required ProfileData profileData,
    VaultCancelToken? cancelToken,
  }) async {
    final dekGenerateModel =
        await _vaultDataManagerEncryptionService.generateDataEncryptionMaterial(
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    await _vaultDataManagerApiService.updateProfileData(
      profileNodeId: profileId,
      profileData: profileData.toJson(),
      dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByApiPublicKey,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> updateProfileMetadata({
    required String id,
    String? name,
    String? description,
    String? profilePictureURI,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: id,
      newName: name,
      newDescription: description,
      newPictureURI: profilePictureURI,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<List<int>> downloadFile({
    required String nodeId,
    VaultCancelToken? cancelToken,
  }) async {
    final commonNodeInfoResponse =
        await _vaultDataManagerApiService.getNodeInfo(
            nodeId: nodeId,
            cancelToken: cancelToken != null
                ? CancelTokenAdapter.from(cancelToken)
                : null);
    final commonNodeEdek = commonNodeInfoResponse.data?.edekInfo?.edek;
    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
      encryptedDekBase64: commonNodeEdek!,
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    final nodeInfoResponse = await _vaultDataManagerApiService.getNodeInfo(
      nodeId: nodeId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final nodeInfo = nodeInfoResponse.data;

    if (nodeInfo == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to get file info',
          code: TdkExceptionType.fileInfoNotFound.code,
        ),
        StackTrace.current,
      );
    }

    final downloadUrl = nodeInfo.getUrl;
    if (downloadUrl == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to get file details, missing url',
          code: TdkExceptionType.fileInfoNotFound.code,
        ),
        StackTrace.current,
      );
    }

    if (nodeInfo.edekInfo?.edek == null) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to get data encryption key, missing required edek',
          code: TdkExceptionType.dataEncryptionKeyNotFound.code,
        ),
        StackTrace.current,
      );
    }
    final encryptedDekBase64 = nodeInfo.edekInfo!.edek;

    final dek = await _vaultDataManagerEncryptionService.decryptDek(
      encryptedDek: base64.decode(encryptedDekBase64),
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    final fileResponse = await _vaultDataManagerApiService.downloadNodeContents(
      downloadUrl: downloadUrl,
      dek: dek,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final file = fileResponse.data as List<int>;

    return file;
  }

  @Deprecated('Initialization of Vault File System is not obligatory')
  @override
  Future<void> initialize() async {
    await _vaultDataManagerApiService.initVaultDataManagerSystem();
  }

  String _getVerifiableCredentialName(
      VerifiableCredential verifiableCredential) {
    return verifiableCredential.type.last;
  }

  @override
  Future<List<Node>?> getChildNodes({
    required String nodeId,
    VaultCancelToken? cancelToken,
  }) async {
    final nodesResponse = await _vaultDataManagerApiService.getChildrenByNodeId(
        nodeId,
        cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null);
    final nodesDto = nodesResponse.data?.nodes?.toList();

    final childNodes = nodesDto?.map((nodesDto) {
      return Node(
        name: nodesDto.name,
        description: nodesDto.description,
        status: NodeStatus.values.byName(nodesDto.status.name),
        createdAt: nodesDto.createdAt,
        modifiedAt: nodesDto.modifiedAt,
        createdBy: nodesDto.createdBy,
        modifiedBy: nodesDto.modifiedBy,
        consumerId: nodesDto.consumerId,
        fileCount: nodesDto.fileCount,
        profileCount: nodesDto.profileCount,
        folderCount: nodesDto.folderCount,
        profileId: nodesDto.profileId,
        type: NodeType.values.byName(nodesDto.type.name),
        nodeId: nodesDto.nodeId,
      );
    }).toList();

    return childNodes;
  }

  @override
  Future<List<DigitalCredential>> getDigitalCredentials(
    String profileId, {
    VaultCancelToken? cancelToken,
  }) async {
    final verifiableCredentialNodesResponse =
        await _vaultDataManagerApiService.getVerifiableCredentialsNodes(
      profileId: profileId,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final nodesResponse =
        verifiableCredentialNodesResponse.data?.nodes?.toList();

    final nodes = nodesResponse!
        .map<Node>((nodeResponse) => Node(
              name: nodeResponse.name,
              nodeId: nodeResponse.nodeId,
              status: NodeStatus.values.byName(
                nodeResponse.status.name,
              ),
              metadata: nodeResponse.metadata != null
                  ? Metadata.fromJson(jsonDecode(nodeResponse.metadata!)
                      as Map<String, dynamic>)
                  : null,
              description: nodeResponse.description,
              createdAt: nodeResponse.createdAt,
              modifiedAt: nodeResponse.modifiedAt,
              createdBy: nodeResponse.createdBy,
              modifiedBy: nodeResponse.modifiedBy,
              consumerId: nodeResponse.consumerId,
              fileCount: nodeResponse.fileCount,
              profileCount: nodeResponse.profileCount,
              folderCount: nodeResponse.folderCount,
              profileId: nodeResponse.profileId,
              type: NodeType.values.byName(nodeResponse.type.name),
            ))
        .where((node) => node.status == NodeStatus.CREATED)
        .toList();

    final verifiableCredentials = await Future.wait(
      nodes.map<Future<DigitalCredential>>((node) async {
        return DigitalCredential(
          id: node.nodeId,
          verifiableCredential: await _getVerifiableCredentialByNodeIdFromCloud(
            nodeId: node.nodeId,
          ),
        );
      }),
      eagerError: cancelToken != null,
    ).catchError((error) {
      Error.throwWithStackTrace(
        TdkException(
          message: 'Failed to get verifiable credentials',
          code: TdkExceptionType.failedToGetVerifiableCredentials.code,
        ),
        StackTrace.current,
      );
    });

    return verifiableCredentials;
  }

  @override
  Future<Node> getNodeInfo(
    String nodeId, {
    VaultCancelToken? cancelToken,
  }) async {
    final nodeInfoResponse = await _vaultDataManagerApiService.getNodeInfo(
        nodeId: nodeId,
        cancelToken:
            cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null);

    final nodeInfoData = nodeInfoResponse.data!;

    final node = Node(
      name: nodeInfoData.name,
      nodeId: nodeInfoData.nodeId,
      status: NodeStatus.values.byName(nodeInfoData.status.name),
      metadata: nodeInfoData.metadata != null
          ? Metadata.fromJson(
              jsonDecode(nodeInfoData.metadata!) as Map<String, dynamic>)
          : null,
      description: nodeInfoData.description,
      createdAt: nodeInfoData.createdAt,
      modifiedAt: nodeInfoData.modifiedAt,
      createdBy: nodeInfoData.createdBy,
      modifiedBy: nodeInfoData.modifiedBy,
      consumerId: nodeInfoData.consumerId,
      fileCount: nodeInfoData.fileCount,
      profileCount: nodeInfoData.profileCount,
      folderCount: nodeInfoData.folderCount,
      profileId: nodeInfoData.profileId,
      type: NodeType.values.byName(nodeInfoData.type.name),
    );

    return node;
  }

  @override
  Future<void> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.createAccount(
      accountIndex: accountIndex,
      accountDid: accountDid,
      didProof: didProof,
      metadata: metadata.toJson(),
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<void> deleteAccount({
    required int accountIndex,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.deleteAccount(
      accountIndex: accountIndex,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }

  @override
  Future<List<Account>> getAccounts({
    int? limit,
    String? exclusiveStartKey,
    VaultCancelToken? cancelToken,
  }) async {
    final accountsResponse = await _vaultDataManagerApiService.getAccounts(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );

    final records = accountsResponse.data?.records;

    if (records == null) {
      return [];
    }
    final accounts = records
        .map(
          (record) => Account(
              accountIndex: record.accountIndex,
              accountDid: record.accountDid,
              accountMetadata: AccountMetadata.fromJson(
                  record.metadata!.asMap as Map<String, dynamic>)),
        )
        .toList();

    return accounts;
  }

  @override
  Future<void> updateAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
    VaultCancelToken? cancelToken,
  }) async {
    await _vaultDataManagerApiService.updateAccount(
      accountIndex: accountIndex,
      accountDid: accountDid,
      didProof: didProof,
      metadata: metadata.toJson(),
      cancelToken:
          cancelToken != null ? CancelTokenAdapter.from(cancelToken) : null,
    );
  }
}

/// Extension methods for helping generating a DidSigner from a KeyPair.
extension _KeyPairDidSigner on KeyPair {
  /// Returns a DidSigner constructed using the KeyPair
  ///
  /// [signatureScheme] defaults to [SignatureScheme.ecdsa_secp256k1_sha256]
  ///
  DidSigner didSigner({
    SignatureScheme signatureScheme = SignatureScheme.ecdsa_secp256k1_sha256,
  }) {
    final didDocument = DidKey.generateDocument(publicKey);
    return DidSigner(
      didDocument: didDocument,
      didKeyId: didDocument.verificationMethod.first.id,
      keyPair: this,
      signatureScheme: signatureScheme,
    );
  }
}
