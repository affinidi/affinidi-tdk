import 'dart:typed_data';

import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault/affinidi_tdk_vault.dart';
import 'package:affinidi_tdk_vault/src/digital_credential.dart';

import 'package:affinidi_tdk_vault_data_manager_client/src/model/create_node_ok.dart';
import 'package:affinidi_tdk_vault_flutter_utils/storages/storage_interface.dart';

import 'package:dio/src/response.dart';

import '../../../affinidi_tdk_vault_storages.dart';

/// VaultData

class VaultData {
  final List<Profile> profiles;
  final List<DigitalCredential> digitalCredentials;

  VaultData({
    required this.profiles,
    required this.digitalCredentials,
  });
  factory VaultData.fromJson(Map<String, dynamic> json) {
    return VaultData(
      profiles: (json['profiles'] as List)
          .map((profile) => Profile.fromJson(profile as Map<String, dynamic>))
          .toList(),
      digitalCredentials: json['digitalCredentials']
          .map((digitalCredential) => DigitalCredential.fromJson(
              digitalCredential as Map<String, dynamic>))
          .toList() as List<DigitalCredential>,
    );
  }
}

class EdgeVaultDataManagerService implements VaultDataManagerServiceInterface {
  late final CryptographyService _cryptographyService = CryptographyService();
  late final StorageInterface _storage;

  late final VaultData _vaultData;

  EdgeVaultDataManagerService({
    required Uint8List encryptionKey,
    Uint8List? encryptedData,
  });

  @override
  Future<void> addVerifiableCredentialToProfile({
    required String profileId,
    required VerifiableCredential verifiableCredential,
  }) {
    // TODO: implement addVerifiableCredentialToProfile
    throw UnimplementedError();
  }

  @override
  Future<void> createAccount({
    required int accountIndex,
    required String accountDid,
    required String didProof,
    required AccountMetadata metadata,
  }) {
    // TODO: implement createAccount
    throw UnimplementedError();
  }

  @override
  Future<void> createFile(
      {required String fileName,
      required String parentFolderNodeId,
      required Uint8List data}) {
    // TODO: implement createFile
    throw UnimplementedError();
  }

  @override
  Future<void> createFolder(
      {required String folderName, required String parentNodeId}) {
    // TODO: implement createFolder
    throw UnimplementedError();
  }

  @override
  Future<Response<CreateNodeOK>> createProfile(
      {required String name,
      required String description,
      String? profilePictureURI}) {
    // TODO: implement createProfile
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAccount({required int accountIndex}) {
    // TODO: implement deleteAccount
    throw UnimplementedError();
  }

  @override
  Future<void> deleteClaimedCredential({required String nodeId}) {
    // TODO: implement deleteClaimedCredential
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFile(String nodeId) {
    // TODO: implement deleteFile
    throw UnimplementedError();
  }

  @override
  Future<void> deleteFolder(String nodeId) {
    // TODO: implement deleteFolder
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProfile(String profileId) {
    // TODO: implement deleteProfile
    throw UnimplementedError();
  }

  @override
  Future<List<int>> downloadFile({required String nodeId}) {
    // TODO: implement downloadFile
    throw UnimplementedError();
  }

  @override
  Future<List<Account>> getAccounts({int? limit, String? exclusiveStartKey}) {
    // TODO: implement getAccounts
    throw UnimplementedError();
  }

  @override
  Future<List<Node>?> getChildNodes({required String nodeId}) {
    // TODO: implement getChildNodes
    throw UnimplementedError();
  }

  @override
  Future<List<DigitalCredential>> getClaimedCredentialsByProfile(
      String profileId) {
    // TODO: implement getClaimedCredentialsByProfile
    throw UnimplementedError();
  }

  @override
  Future<List<DigitalCredential>> getDigitalCredentials(String profileId) {
    // TODO: implement getDigitalCredentials
    throw UnimplementedError();
  }

  @override
  Future<Node> getNodeInfo(String nodeId) {
    // TODO: implement getNodeInfo
    throw UnimplementedError();
  }

  @override
  Future<ProfileData> getProfileData(String profileId) {
    // TODO: implement getProfileData
    throw UnimplementedError();
  }

  @override
  Future<List<VaultDataManagerProfile>> getProfiles() {
    // TODO: implement getProfiles
    throw UnimplementedError();
  }

  @override
  Future<RecognizedProfileData> getScannedFileInfo(String fileToken) {
    // TODO: implement getScannedFileInfo
    throw UnimplementedError();
  }

  @override
  Future<List<ScannedFile>> getScannedFiles() {
    // TODO: implement getScannedFiles
    throw UnimplementedError();
  }

  @override
  Future<VaultFileConsumption> getVaultDataFileConsumption() {
    // TODO: implement getVaultDataFileConsumption
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  Future<void> renameFile({required String nodeId, required String newName}) {
    // TODO: implement renameFile
    throw UnimplementedError();
  }

  @override
  Future<void> renameFolder({required String nodeId, required String newName}) {
    // TODO: implement renameFolder
    throw UnimplementedError();
  }

  @override
  Future<void> scanFile(String nodeId) {
    // TODO: implement scanFile
    throw UnimplementedError();
  }

  @override
  Future<void> updateAccount(
      {required int accountIndex,
      required String accountDid,
      required String didProof,
      required AccountMetadata metadata}) {
    // TODO: implement updateAccount
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfileData(
      {required String profileId, required ProfileData profileData}) {
    // TODO: implement updateProfileData
    throw UnimplementedError();
  }

  @override
  Future<void> updateProfileMetadata(
      {required String id,
      String? name,
      String? description,
      String? profilePictureURI}) {
    // TODO: implement updateProfileMetadata
    throw UnimplementedError();
  }
}
