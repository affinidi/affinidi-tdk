import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';

/// Interface for service that interacts with the Vault Data Manager API
abstract interface class VaultDataManagerApiServiceInterface {
  /// Downloads content of a node, both file node and credential node for given [downloadUrl] and decrypted
  /// with given data encryption key [dek]
  Future<Response> downloadNodeContents({
    required String downloadUrl,
    required List<int> dek,
    CancelToken? cancelToken,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Upload a given [file] data in format of [Uint8List] to a given [parentFolderId] with given [fileName]
  /// and encrypted with given data encryption key
  Future<Response<CreateNodeOK>> createFile({
    required String parentFolderId,
    required String fileName,
    required Uint8List file,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    CancelToken? cancelToken,
    VaultProgressCallback? onSendProgress,
  });

  /// Upload a given [verifiableCredentialBlob] data in format of [Uint8List] to a given [profileId] with given [verifiableCredentialName]
  /// and encrypted with given data encryption key
  Future<Response<CreateNodeOK>> uploadVerifiableCredential({
    required String profileId,
    required String verifiableCredentialName,
    required Uint8List verifiableCredentialBlob,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    CancelToken? cancelToken,
  });

  /// Retrieves all the nodes that hold verifiable credentials for a given [profileId]
  Future<Response<ListNodeChildrenOK>> getVerifiableCredentialsNodes({
    required String profileId,
    int? limit,
    String? exclusiveStartItemId,
    CancelToken? cancelToken,
  });

  /// Creates a folder with given [name] within a given [parentNodeId]
  Future<Response<CreateNodeOK>> createFolder({
    required String name,
    required String parentNodeId,
    CancelToken? cancelToken,
  });

  /// Gets all the children nodes for a given [nodeId]
  Future<Response<ListNodeChildrenOK>> getChildrenByNodeId(
    String nodeId, {
    int? limit,
    String? exclusiveStartItemId,
    CancelToken? cancelToken,
  });

  /// Gets detailed information for a given [nodeId]
  Future<Response<GetDetailedNodeInfoOK>> getNodeInfo({
    required String nodeId,
    List<int>? dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  });

  /// Gets scanned file details for a given [scannedFileJobId]
  Future<Response<GetScannedFileInfoOK>> getScannedFileInfo({
    required String scannedFileJobId,
    CancelToken? cancelToken,
  });

  /// Gets all the scanned files
  Future<Response<ListScannedFilesOK>> getAllScannedFiles({
    int? limit,
    String? exclusiveStartItemId,
    CancelToken? cancelToken,
  });

  /// Enrolls a new file for scanning for given [nodeId] and encrypted with given data encryption key
  Future<Response<StartFileScanOK>> startFileScan({
    required String nodeId,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  });

  /// Updates profile data for a given [profileNodeId] with given [profileData] and encrypted with given data encryption key
  Future<Response<UpdateProfileDataOK>> updateProfileData({
    required String profileNodeId,
    required Map profileData,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  });

  /// Gets the list of all profiles
  Future<Response<ListRootNodeChildrenOK>> getListOfProfiles({
    CancelToken? cancelToken,
  });

  /// Gets the profile data for a given [profileNodeId] and decrypt it with given data encryption key [dekEncryptedByVfsPublicKey]
  Future<Response<QueryProfileDataOK>> getProfileData({
    required String profileNodeId,
    required List<int> dekEncryptedByVfsPublicKey,
    CancelToken? cancelToken,
  });

  /// Creates a new profile with given [profileName]
  ///
  /// Example:
  /// ```dart
  /// final dekGenerateModel = await _vaultFileSystemEncryptionService.generateDek();
  /// final response = await createProfile(
  ///  profileName: 'New profile',
  /// dekEncryptedByVfsPublicKey: dekGenerateModel.dekEncryptedByVfsPublicKey,
  /// dekEncryptedByWalletCryptoMaterial: dekGenerateModel.dekEncryptedByWalletCryptoMaterial,
  /// walletCryptoMaterialHash: dekGenerateModel.walletCryptoMaterialHash,
  /// profileDescription: 'New profile description',
  /// profilePictureURI: 'https://www.hosting.net/yourImage.jpg',
  /// );
  Future<Response<CreateNodeOK>> createProfile({
    required String profileName,
    required List<int> dekEncryptedByVfsPublicKey,
    required List<int> dekEncryptedByWalletCryptoMaterial,
    required String walletCryptoMaterialHash,
    String? profileDescription,
    String? profilePictureURI,
    CancelToken? cancelToken,
  });

  /// Updates the given node [nodeId] with given [newName], [newDescription] and [newPictureURI]
  Future<Response<NodeDto>> renameNode({
    required String nodeId,
    String? newName,
    String? newDescription,
    String? newPictureURI,
    CancelToken? cancelToken,
  });

  /// Deletes a node by a given [nodeId]
  Future<Response<DeleteNodeDto>> deleteNodeById({
    required String nodeId,
    CancelToken? cancelToken,
  });

  /// Gets the profile template. Default to https://schema.affinidi.io/profile-template/template.json.
  Future<Response> getProfileTemplate({
    CancelToken? cancelToken,
  });

  /// Initializes the Vault Data Manager system by creating the root node
  Future<Response<InitNodesOK>> initVaultDataManagerSystem({
    CancelToken? cancelToken,
  });

  /// Gets the public key of the Vault File System API that is used to encrypt the data encryption key
  Future<Map<String, dynamic>> getVaultDataManagerPublicKey();

  /// Gets root node info which can be used to determine the consumed space
  Future<Response<GetDetailedNodeInfoOK>> getRootNodeInfo({
    CancelToken? cancelToken,
  });

  /// Gets the configuration of the Vault Data Manager API
  Future<Response<GetConfigOK>> getConfig({
    CancelToken? cancelToken,
  });

  /// Gets accounts of associated profiles. Optionally provide [limit] and [exclusiveStartItemId].
  /// [limit] - Maximum number of accounts to fetch in a list
  /// [exclusiveStartItemId] - is primary key of the first item that this operation will evaluate.
  /// Use the value that was returned for lastEvaluatedKey in the previous operation.
  /// [exclusiveStartItemId] - The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  /// [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// [headers] - Can be used to add additional headers to the request
  /// [extra] - Can be used to add flags to the request
  /// [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<ListAccountsDto>> getAccounts({
    int? limit,
    String? exclusiveStartItemId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Creates account. With given [accountIndex], [accountDid], [didProof].
  /// [accountIndex] - positive integer used to identify account.
  /// [accountDid] - Decentralized identifier (DID) is type of identifier that enables verifiable, decentralized digital identity.
  /// [didProof] - JWT that proves ownership of profile DID
  /// [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// [headers] - Can be used to add additional headers to the request
  /// [extra] - Can be used to add flags to the request
  /// [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<CreateAccountOK>> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    Map<String, Object>? metadata,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Deletes an account for a given [accountIndex].
  /// [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// [headers] - Can be used to add additional headers to the request
  /// [extra] - Can be used to add flags to the request
  /// [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<DeleteAccountDto>> deleteAccount({
    required int accountIndex,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Updates an account for a given [accountIndex].
  /// [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// [headers] - Can be used to add additional headers to the request
  /// [extra] - Can be used to add flags to the request
  /// [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  Future<Response<UpdateAccountDto>> updateAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    Map<String, Object>? metadata,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    VaultProgressCallback? onSendProgress,
    VaultProgressCallback? onReceiveProgress,
  });
}
