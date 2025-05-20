import 'dart:convert';
import 'dart:typed_data';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager/affinidi_tdk_vault_data_manager.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart'
    hide NodeStatus, NodeType;
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:ssi/ssi.dart';

import '../../exceptions/tdk_exception_type.dart';
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
  late final VaultDataManagerEncryptionServiceInterface
      _vaultDataManagerEncryptionService;

  /// Service for API operations with the vault
  late final VaultDataManagerApiServiceInterface _vaultDataManagerApiService;

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
    VaultDataManagerEncryptionServiceInterface
        vaultDataManagerEncryptionService,
    VaultDataManagerApiServiceInterface vaultDataManagerApiService, {
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
  /// - [didSigner] - A signer that uses a key pair associated with a DID document to sign data.
  /// - [encryptedDekek] - encrypted kek of delegated profile
  static Future<VaultDataManagerService> create({
    required DidSigner didSigner,
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
  }) async {
    final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);
    final elementsVaultApiUrl =
        Environment.fetchEnvironment().elementsVaultApiUrl;
    final vaultDataManagerApiService = VaultDataManagerApiService(
        apiClient: AffinidiTdkVaultDataManagerClient(
      authTokenHook: consumerAuthProvider.fetchConsumerToken,
      basePathOverride: '$elementsVaultApiUrl/vfs',
    ));

    final vfsPublicKey =
        await vaultDataManagerApiService.getVaultDataManagerPublicKey();

    final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
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

  /// Creates a new vault file system service instance to access deletegated profile
  ///
  /// - [didSigner] - A signer that uses a key pair associated with a DID document to sign data.
  /// - [profileDid] - did of profile that grantee is accessing
  /// - [encryptedDekek] - encrypted kek of delegated profile
  static Future<VaultDataManagerService> createDelegated({
    required DidSigner didSigner,
    required String profileDid,
    required Uint8List encryptedDekek,
    required KeyPair keyPair,
  }) async {
    final consumerAuthProvider = ConsumerAuthProvider(signer: didSigner);
    final vaultDataManagerApiService = VaultDataManagerApiService(
        apiClient: AffinidiTdkVaultDataManagerClient(
      authTokenHook: () =>
          consumerAuthProvider.fetchDelegatedToken(profileDid: profileDid),
    ));

    final vfsPublicKey =
        await vaultDataManagerApiService.getVaultDataManagerPublicKey();

    final vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
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
    );
  }

  @override
  Future<void> createFile(
      {required String fileName,
      required String parentFolderNodeId,
      required Uint8List data}) async {
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
    );
  }

  @override
  Future<void> createFolder(
      {required String folderName, required String parentNodeId}) async {
    await _vaultDataManagerApiService.createFolder(
      name: folderName,
      parentNodeId: parentNodeId,
    );
  }

  @override
  Future<Response<CreateNodeOK>> createProfile({
    required String name,
    String? description,
    String? profilePictureURI,
  }) async {
    // List all profiles before creating new one so the root node has been created
    await _vaultDataManagerApiService.getListOfProfiles();

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
    );
  }

  @override
  Future<void> deleteClaimedCredential({required String nodeId}) async {
    await _vaultDataManagerApiService.deleteNodeById(
      nodeId: nodeId,
    );
  }

  @override
  Future<void> deleteFile(String nodeId) async {
    await _vaultDataManagerApiService.deleteNodeById(
      nodeId: nodeId,
    );
  }

  @override
  Future<void> deleteFolder(String nodeId) async {
    await _vaultDataManagerApiService.deleteNodeById(
      nodeId: nodeId,
    );
  }

  @override
  Future<void> deleteProfile(String profileId) async {
    await _vaultDataManagerApiService.deleteNodeById(
      nodeId: profileId,
    );
  }

  @override
  Future<List<DigitalCredential>> getClaimedCredentialsByProfile(
      String profileId) async {
    final verifiableCredentialNodesResponse = await _vaultDataManagerApiService
        .getVerifiableCredentialsNodes(profileId: profileId);

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
                nodeId: node.nodeId);
        return DigitalCredential(
            verifiableCredential: verifiableCredential, id: node.nodeId);
      }),
    ).catchError((Object error) {
      _logger.log(LogLevel.severe, error);
      return <DigitalCredential>[];
    });

    return verifiableCredentials;
  }

  Future<VerifiableCredential> _getVerifiableCredentialByNodeIdFromCloud({
    required String nodeId,
  }) async {
    final verifiableCredentialRawData = await downloadFile(nodeId: nodeId);
    final verifiableCredential = UniversalParser.parse(
        utf8.decode(verifiableCredentialRawData) as Object);

    return verifiableCredential;
  }

  @override
  Future<ProfileData> getProfileData(String profileId) async {
    final nodeInfoResponse =
        await _vaultDataManagerApiService.getNodeInfo(nodeId: profileId);

    final encryptedDekBase64 = nodeInfoResponse.data?.edekInfo?.edek;

    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
            encryptedDekBase64: encryptedDekBase64!,
            encryptionKey: await _keyPair.decrypt(_encryptedKey));
    final profileDataResponse =
        await _vaultDataManagerApiService.getProfileData(
      profileNodeId: profileId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
    );

    final profilePerson = profileDataResponse.data?.data;

    return ProfileData.fromJson(
        jsonDecode(profilePerson.toString()) as Map<String, dynamic>);
  }

  @override
  Future<List<VaultDataManagerProfile>> getProfiles() async {
    final profilesResponse =
        await _vaultDataManagerApiService.getListOfProfiles();

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
  Future<RecognizedProfileData> getScannedFileInfo(String fileToken) async {
    final scannedFileInfoResponse = await _vaultDataManagerApiService
        .getScannedFileInfo(scannedFileJobId: fileToken);

    final scannedFileInfo = scannedFileInfoResponse.data?.data;

    return RecognizedProfileData.fromJson(
        jsonDecode(scannedFileInfo.toString()) as Map<String, dynamic>);
  }

  @override
  Future<List<ScannedFile>> getScannedFiles() async {
    final scannedFilesResponse =
        await _vaultDataManagerApiService.getAllScannedFiles();

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
  Future<VaultFileConsumption> getVaultDataFileConsumption() async {
    final nodeInfoResponse =
        await _vaultDataManagerApiService.getRootNodeInfo();

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
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: nodeId,
      newName: newName,
    );
  }

  @override
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: nodeId,
      newName: newName,
    );
  }

  @override
  Future<void> scanFile(String nodeId) async {
    final nodeInfo =
        await _vaultDataManagerApiService.getNodeInfo(nodeId: nodeId);

    final encryptedDekBase64 = nodeInfo.data?.edekInfo?.edek;
    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
            encryptedDekBase64: encryptedDekBase64!,
            encryptionKey: await _keyPair.decrypt(_encryptedKey));

    await _vaultDataManagerApiService.startFileScan(
      nodeId: nodeId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
    );
  }

  @override
  Future<void> updateProfileData({
    required String profileId,
    required ProfileData profileData,
  }) async {
    final dekGenerateModel =
        await _vaultDataManagerEncryptionService.generateDataEncryptionMaterial(
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    await _vaultDataManagerApiService.updateProfileData(
      profileNodeId: profileId,
      profileData: profileData.toJson(),
      dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByApiPublicKey,
    );
  }

  @override
  Future<void> updateProfileMetadata({
    required String id,
    String? name,
    String? description,
    String? profilePictureURI,
  }) async {
    await _vaultDataManagerApiService.renameNode(
      nodeId: id,
      newName: name,
      newDescription: description,
      newPictureURI: profilePictureURI,
    );
  }

  @override
  Future<List<int>> downloadFile({required String nodeId}) async {
    final commonNodeInfoResponse =
        await _vaultDataManagerApiService.getNodeInfo(nodeId: nodeId);
    final commonNodeEdek = commonNodeInfoResponse.data?.edekInfo?.edek;
    final dekEncryptedByVfsPublicKey =
        await _vaultDataManagerEncryptionService.getDekEncryptedByApiPublicKey(
      encryptedDekBase64: commonNodeEdek!,
      encryptionKey: await _keyPair.decrypt(_encryptedKey),
    );

    final nodeInfoResponse = await _vaultDataManagerApiService.getNodeInfo(
      nodeId: nodeId,
      dekEncryptedByVfsPublicKey: dekEncryptedByVfsPublicKey,
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
  Future<List<Node>?> getChildNodes({required String nodeId}) async {
    final nodesResponse =
        await _vaultDataManagerApiService.getChildrenByNodeId(nodeId);
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
      String profileId) async {
    final verifiableCredentialNodesResponse = await _vaultDataManagerApiService
        .getVerifiableCredentialsNodes(profileId: profileId);

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
  Future<Node> getNodeInfo(String nodeId) async {
    final nodeInfoResponse =
        await _vaultDataManagerApiService.getNodeInfo(nodeId: nodeId);

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
  }) async {
    await _vaultDataManagerApiService.createAccount(
      accountIndex: accountIndex,
      accountDid: accountDid,
      didProof: didProof,
      metadata: metadata.toJson(),
    );
  }

  @override
  Future<void> deleteAccount({required int accountIndex}) async {
    await _vaultDataManagerApiService.deleteAccount(accountIndex: accountIndex);
  }

  @override
  Future<List<Account>> getAccounts(
      {int? limit, String? exclusiveStartKey}) async {
    final accountsResponse = await _vaultDataManagerApiService.getAccounts(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
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
  }) async {
    await _vaultDataManagerApiService.updateAccount(
      accountIndex: accountIndex,
      accountDid: accountDid,
      didProof: didProof,
      metadata: metadata.toJson(),
    );
  }
}
