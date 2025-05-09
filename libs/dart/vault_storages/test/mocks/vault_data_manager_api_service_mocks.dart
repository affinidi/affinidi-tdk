import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

class VaultDataManagerApiServiceMocks {
  VaultDataManagerApiServiceMocks(this.mockVaultDataManagerApiService);

  final MockVaultDataManagerApiService mockVaultDataManagerApiService;

  Future<Response<CreateNodeOK>> uploadVerifiableCredential() =>
      mockVaultDataManagerApiService.uploadVerifiableCredential(
        profileId: any(named: 'profileId'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
        dekEncryptedByWalletCryptoMaterial:
            any(named: 'dekEncryptedByWalletCryptoMaterial'),
        walletCryptoMaterialHash: any(named: 'walletCryptoMaterialHash'),
        verifiableCredentialName: any(named: 'verifiableCredentialName'),
        verifiableCredentialBlob: any(named: 'verifiableCredentialBlob'),
      );

  Future<Response<CreateNodeOK>> createFile() =>
      mockVaultDataManagerApiService.createFile(
        parentFolderId: any(named: 'parentFolderId'),
        fileName: any(named: 'fileName'),
        file: any(named: 'file'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
        dekEncryptedByWalletCryptoMaterial:
            any(named: 'dekEncryptedByWalletCryptoMaterial'),
        walletCryptoMaterialHash: any(named: 'walletCryptoMaterialHash'),
      );

  Future<Response<CreateNodeOK>> createFolder() =>
      mockVaultDataManagerApiService.createFolder(
        name: 'folder_name',
        parentNodeId: 'parent_node_id',
      );

  Future<Response<CreateNodeOK>> createProfile() =>
      mockVaultDataManagerApiService.createProfile(
        profileName: any(named: 'profileName'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
        dekEncryptedByWalletCryptoMaterial:
            any(named: 'dekEncryptedByWalletCryptoMaterial'),
        walletCryptoMaterialHash: any(named: 'walletCryptoMaterialHash'),
      );

  Future<Response<DeleteNodeDto>> deleteNodeById() =>
      mockVaultDataManagerApiService.deleteNodeById(
        nodeId: any(named: 'nodeId'),
      );

  Future<Response<ListNodeChildrenOK>> getVerifiableCredentialsNodes() =>
      mockVaultDataManagerApiService.getVerifiableCredentialsNodes(
        profileId: any(named: 'profileId'),
      );

  Future<Response<GetDetailedNodeInfoOK>> getNodeInfoWithoutDek() =>
      mockVaultDataManagerApiService.getNodeInfo(
        nodeId: any(named: 'nodeId'),
      );

  Future<Response<GetDetailedNodeInfoOK>> getNodeInfoWithDek() =>
      mockVaultDataManagerApiService.getNodeInfo(
        nodeId: any(named: 'nodeId'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
      );

  Future<Response<dynamic>> downloadNodeContents() =>
      mockVaultDataManagerApiService.downloadNodeContents(
        downloadUrl: any(named: 'downloadUrl'),
        dek: any(named: 'dek'),
      );

  Future<Response<QueryProfileDataOK>> getProfileData() =>
      mockVaultDataManagerApiService.getProfileData(
        profileNodeId: any(named: 'profileNodeId'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
      );

  Future<Response<GetScannedFileInfoOK>> getScannedFileInfo() =>
      mockVaultDataManagerApiService.getScannedFileInfo(
        scannedFileJobId: any(named: 'scannedFileJobId'),
      );

  Future<Response<NodeDto>> renameNode() =>
      mockVaultDataManagerApiService.renameNode(
        nodeId: any(named: 'nodeId'),
        newName: any(named: 'newName'),
        newDescription: any(named: 'newDescription'),
      );

  Future<Response<StartFileScanOK>> startScanFile() =>
      mockVaultDataManagerApiService.startFileScan(
        nodeId: any(named: 'nodeId'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
      );

  Future<Response<UpdateProfileDataOK>> updateProfileData() =>
      mockVaultDataManagerApiService.updateProfileData(
        profileNodeId: any(named: 'profileNodeId'),
        profileData: any(named: 'profileData'),
        dekEncryptedByVfsPublicKey: any(named: 'dekEncryptedByVfsPublicKey'),
      );
}
