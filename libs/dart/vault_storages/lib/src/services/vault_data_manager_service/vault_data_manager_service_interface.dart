import 'dart:typed_data';

import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import '../../model/account.dart';
import '../../model/node.dart';
import '../../model/profile_data.dart';
import '../../model/recognized_profile_data.dart';
import '../../model/scanned_file.dart';
import '../../model/vault_consumption.dart';
import '../../model/vault_data_manager_profile.dart';

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
  Future<List<VaultDataManagerProfile>> getProfiles();

  /// Gets child nodes for the specified node
  Future<List<Node>?> getChildNodes({
    required String nodeId,
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
    required String description,
    String? profilePictureURI,
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
  });

  /// Deletes a profile and all its contents
  ///
  /// - [profileId] - id of the profile
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.deleteProfile('your_profile_id');
  /// ```
  Future<void> deleteProfile(String profileId);

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
  Future<ProfileData> getProfileData(String profileId);

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
  });

  /// Initiates document scanning for a file
  ///
  /// - [nodeId] - id of the file
  ///
  /// Example:
  /// ```dart
  /// await vaultDataManagerService.scanFile('your_file_node_id');
  /// ```
  Future<void> scanFile(String nodeId);

  /// Retrieves list of scanned files
  ///
  /// Returns list of [ScannedFile] objects that represents a file that have been scanned
  ///
  /// Example:
  /// ```dart
  /// final scannedFiles = await vaultDataManagerService.getScannedFiles();
  /// ```
  Future<List<ScannedFile>> getScannedFiles();

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
  Future<RecognizedProfileData> getScannedFileInfo(String fileToken);

  /// Creates a new folder
  Future<void> createFolder({
    required String folderName,
    required String parentNodeId,
  });

  /// Creates a new file with encrypted content
  Future<void> createFile({
    required String fileName,
    required String parentFolderNodeId,
    required Uint8List data,
  });

  /// Downloads and decrypts file content
  ///
  /// - [nodeId] - id of the file
  ///
  /// Throws [TdkException] if cannot find file info
  /// Throws [TdkException] if cannot get data encryption key
  Future<List<int>> downloadFile({
    required String nodeId,
  });

  /// Renames a file
  Future<void> renameFile({
    required String nodeId,
    required String newName,
  });

  /// Renames a folder
  Future<void> renameFolder({
    required String nodeId,
    required String newName,
  });

  /// Deletes a folder and its contents
  Future<void> deleteFolder(String nodeId);

  /// Deletes a file
  Future<void> deleteFile(String nodeId);

  /// Retrieves node information
  Future<Node> getNodeInfo(String nodeId);

  /// Gets all verifiable credentials for a profile
  Future<List<DigitalCredential>> getClaimedCredentialsByProfile(
      String profileId);

  /// Gets all digital credentials with their nodes for a profile
  ///
  /// - [profileId] - id of the profile
  ///
  /// Return list of [DigitalCredential]
  ///
  /// Throws [TdkException] when cannot get verifiable credentials
  Future<List<DigitalCredential>> getDigitalCredentials(String profileId);

  /// Adds a verifiable credential to a profile
  Future<void> addVerifiableCredentialToProfile({
    required String profileId,
    required VerifiableCredential verifiableCredential,
  });

  /// Deletes a claimed credential
  Future<void> deleteClaimedCredential({
    required String nodeId,
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
  Future<VaultFileConsumption> getVaultDataFileConsumption();

  /// Gets accounts of associated profiles. Optionally provide [limit] and [exclusiveStartKey].
  /// [exclusiveStartKey] - is primary key of the first item that this operation will evaluate.
  /// Use the value that was returned for lastEvaluatedKey in the previous operation.
  Future<List<Account>> getAccounts({
    int? limit,
    String? exclusiveStartKey,
  });

  /// Creates account. With given [accountIndex], [accountDid], [didProof].
  /// [accountIndex] - positive integer used to identify account.
  /// [accountDid] - Decentralized identifier (DID) is type of identifier that enables verifiable, decentralized digital identity.
  /// [didProof] - // TODO: come up with simple explanation according to https://www.w3.org/TR/did-1.0/#verification-material;
  Future<void> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
  });

  /// Deletes an account for a given [accountIndex].
  Future<void> deleteAccount({
    required int accountIndex,
  });

  /// Updates an account for a given [accountIndex].
  Future<void> updateAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
  });
}
