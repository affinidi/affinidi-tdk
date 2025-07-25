import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';

import '../model/account.dart';
import '../model/node.dart';

import '../model/profile_data.dart';
import '../model/recognized_profile_data.dart';
import '../model/scanned_file.dart';
import '../model/vault_consumption.dart';
import '../model/vault_data_manager_profile.dart';

/// Interface for secure storage operations with encryption support.
///
/// Handles all direct interactions with the encrypted vault storage system,
abstract interface class VaultDataManagerServiceInterface {
  /// Initializes the vault data manager system.
  ///
  /// This method is deprecated as initialization is no longer obligatory.
  /// The system will initialize automatically when needed.
  @Deprecated('Initialization is not obligatory')
  Future<void> initialize();

  /// Retrieves all available profiles
  ///
  /// Example:
  /// ```dart
  /// final profiles = await vaultDataManagerService.getProfiles();
  /// ```
  Future<List<VaultDataManagerProfile>> getProfiles({
    VaultCancelToken? cancelToken,
  });

  /// Gets a list of child nodes for a given node
  ///
  /// [nodeId] - The ID of the node to get children for
  /// [limit] - Optional limit on the number of nodes to return
  /// [exclusiveStartItemId] - Optional ID to start pagination from. The item with this ID
  /// will be excluded from the results.
  /// [cancelToken] - Optional token to cancel the operation
  Future<PaginatedList<Node>> getChildNodes({
    required String nodeId,
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Creates a new profile
  ///
  /// - [name] (required) - name of the new profile.
  /// - [description] (optional) - description of the new profile.
  /// - [profilePictureURI] (optional) - profile picture url.
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.createProfile(
  ///   name: "your_profile_name",
  ///   description: "your_profile_description",
  ///   profilePictureURI: 'your_profile_picture_url',
  /// );
  /// ```
  Future<Response<CreateNodeOK>> createProfile({
    required String name,
    String? description,
    String? profilePictureURI,
    VaultCancelToken? cancelToken,
  });

  /// Updates profile metadata
  ///
  /// - [id] (required) - id of the profile
  /// - [name] (optional) - new name of the profile
  /// - [description] (optional) - new description of the profile
  /// - [profilePictureURI] (optional) - new profile picture URI
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.updateProfileMetadata(
  ///   id: 'your_profile_id',
  ///   name: 'updated_profile_name',
  ///   description: 'updated_profile_description',
  ///   profilePictureURI: 'updated_profile_picture_uri',
  /// );
  /// ```
  Future<void> updateProfileMetadata({
    required String id,
    String? name,
    String? description,
    String? profilePictureURI,
    VaultCancelToken? cancelToken,
  });

  /// Deletes a profile and all its contents
  ///
  /// - [profileId] - id of the profile
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.deleteProfile('your_profile_id');
  /// ```
  Future<void> deleteProfile(
    String profileId, {
    VaultCancelToken? cancelToken,
  });

  /// Retrieves structured data associated with a profile
  ///
  /// - [profileId] - id of the profile
  ///
  /// Return [ProfileData] - structured data associated with profile
  ///
  /// Example:
  /// ```dart
  /// final profileData = await vaultDataManagerService.getProfileData('your_profile_id');
  /// ```
  Future<ProfileData> getProfileData(
    String profileId, {
    VaultCancelToken? cancelToken,
  });

  /// Updates structured data for a profile
  ///
  /// - [profileId] (required) - id of the profile
  /// - [profileData] (required) - profile information that needs to be updated
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.updateProfileData(
  ///   profileId: 'your_profile_id',
  ///   profileData: profileData,
  /// );
  /// ```
  Future<void> updateProfileData({
    required String profileId,
    required ProfileData profileData,
    VaultCancelToken? cancelToken,
  });

  /// Initiates document scanning for a file
  ///
  /// - [nodeId] - id of the file
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.scanFile('your_file_node_id');
  /// ```
  Future<void> scanFile(
    String nodeId, {
    VaultCancelToken? cancelToken,
  });

  /// Retrieves list of scanned files
  ///
  /// Returns list of [ScannedFile] objects that represents a file that have been scanned
  ///
  /// Example:
  /// ```dart
  /// final scannedFiles = await vaultDataManagerService.getScannedFiles();
  /// ```
  Future<List<ScannedFile>> getScannedFiles({
    VaultCancelToken? cancelToken,
  });

  /// Gets recognized data from a scanned file
  ///
  /// - [fileToken] - file token that is equal ScannedFile.jobId
  ///
  /// Return [RecognizedProfileData] object that represent recognized data from the file
  /// organized into a profile structure.
  ///
  /// Example:
  /// ```dart
  /// final scannedFileInfo = await vaultDataManagerService.getScannedFileInfo('your_file_token');
  /// ```
  Future<RecognizedProfileData> getScannedFileInfo(
    String fileToken, {
    VaultCancelToken? cancelToken,
  });

  /// Creates a new folder
  Future<void> createFolder({
    required String folderName,
    required String parentNodeId,
    VaultCancelToken? cancelToken,
  });

  /// Creates a new file with encrypted content
  Future<void> createFile({
    required String fileName,
    required String parentFolderNodeId,
    required Uint8List data,
    VaultCancelToken? cancelToken,
    VaultProgressCallback? onSendProgress,
  });

  /// Downloads and decrypts file content
  ///
  /// - [nodeId] - id of the file
  ///
  /// Throws [TdkException] if cannot find file info
  /// Throws [TdkException] if cannot get data encryption key
  Future<List<int>> downloadFile({
    required String nodeId,
    VaultCancelToken? cancelToken,
    VaultProgressCallback? onReceiveProgress,
  });

  /// Renames a file
  Future<void> renameFile({
    required String nodeId,
    required String newName,
    VaultCancelToken? cancelToken,
  });

  /// Renames a folder
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
    VaultCancelToken? cancelToken,
  });

  /// Deletes a folder and its contents
  Future<void> deleteFolder(
    String nodeId, {
    VaultCancelToken? cancelToken,
  });

  /// Deletes a file
  Future<void> deleteFile(
    String nodeId, {
    VaultCancelToken? cancelToken,
  });

  /// Retrieves node information
  Future<Node> getNodeInfo(
    String nodeId, {
    VaultCancelToken? cancelToken,
  });

  /// Gets all verifiable credentials for a profile
  Future<List<DigitalCredential>> getClaimedCredentialsByProfile(
    String profileId, {
    VaultCancelToken? cancelToken,
  });

  /// Gets digital credentials for a profile
  ///
  /// [profileId] - The ID of the profile to get credentials for
  /// [limit] - Optional limit on the number of credentials to return
  /// [exclusiveStartItemId] - Optional ID to start pagination from. The item with this ID
  /// will be excluded from the results.
  /// [cancelToken] - Optional token to cancel the operation
  Future<PaginatedList<DigitalCredential>> getDigitalCredentials(
    String profileId, {
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Adds a verifiable credential to a profile
  Future<void> addVerifiableCredentialToProfile({
    required String profileId,
    required VerifiableCredential verifiableCredential,
    VaultCancelToken? cancelToken,
  });

  /// Deletes a claimed credential
  Future<void> deleteClaimedCredential({
    required String nodeId,
    VaultCancelToken? cancelToken,
  });

  /// Gets storage consumption information
  ///
  /// Return [VaultFileConsumption] object that represents storage consumption information for the vault
  ///
  /// Throws [TdkException] if storage consumption is null
  ///
  /// Example:
  /// ```dart
  /// final fileConsumption = await vaultDataManagerService.getVaultDataFileConsumption();
  /// ```
  Future<VaultFileConsumption> getVaultDataFileConsumption({
    VaultCancelToken? cancelToken,
  });

  /// Gets accounts of associated profiles. Optionally provide [limit] and [exclusiveStartItemId].
  /// [exclusiveStartItemId] - is primary key of the first item that this operation will evaluate.
  /// Use the value that was returned for lastEvaluatedItemId in the previous operation.
  Future<List<Account>> getAccounts({
    int? limit,
    String? exclusiveStartItemId,
    VaultCancelToken? cancelToken,
  });

  /// Creates account. With given [accountIndex], [accountDid], [didProof].
  /// [accountIndex] - positive integer used to identify account.
  /// [accountDid] - Decentralized identifier (DID) is type of identifier that enables verifiable, decentralized digital identity.
  /// [didProof] - JWT that proves ownership of profile DID
  Future<void> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
    VaultCancelToken? cancelToken,
  });

  /// Deletes an account for a given [accountIndex].
  Future<void> deleteAccount({
    required int accountIndex,
    VaultCancelToken? cancelToken,
  });

  /// Updates an account for a given [accountIndex].
  Future<void> updateAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
    VaultCancelToken? cancelToken,
  });
}
