import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:test/test.dart';
import 'package:affinidi_tdk_consumer_auth_provider/affinidi_tdk_consumer_auth_provider.dart';
import 'package:affinidi_tdk_vault_data_manager_client/affinidi_tdk_vault_data_manager_client.dart';
import 'package:affinidi_tdk_cryptography/affinidi_tdk_cryptography.dart';
import 'package:affinidi_tdk_vault_data_manager_encryption_service/vault_data_manager_encryption_service.dart';

import 'environment.dart';

const rootNodeIdBase64Encoded = 'NzY3ZjY=';
const vfsSalt =
    '031b96f9b4641f508702c03b5643fd5de8d90465fdb0bdf6abe5d6c1c8a667a8';

Future<Map<String, dynamic>> getVaultDataManagerPublicKey() async {
  final Dio dio = Dio();
  final absoluteUrl =
      "${AffinidiTdkVaultDataManagerClient.basePath}/.well-known/jwks.json";
  final response = await dio.get(absoluteUrl);
  final jwks = (response.data['keys'] as List).first;
  return jwks;
}

void main() {
  group('Vault Data Manager Client Integration Tests', () {
    late NodesApi nodesApi;
    late Map<String, dynamic> vfsPublicKey;
    late VaultDataManagerEncryptionService vaultDataManagerEncryptionService;

    setUp(() async {
      final env = getVaultEnvironment();
      final consumerAuthProvider = ConsumerAuthProvider(seed: env.seed);
      final apiClient = AffinidiTdkVaultDataManagerClient(
        authTokenHook: consumerAuthProvider.fetchConsumerToken,
      );
      nodesApi = apiClient.getNodesApi();

      vfsPublicKey = await getVaultDataManagerPublicKey();
      vaultDataManagerEncryptionService = VaultDataManagerEncryptionService(
        cryptographyService: CryptographyService(),
        jwk: vfsPublicKey,
        encryptionKey: env.seedHexEncoded,
        encryptionKeyNonce: utf8.encode(vfsSalt),
      );
    });

    test('CRUDL Root Nodes', () async {
      // get list of profiles
      var initialProfiles = (await nodesApi.listRootNodeChildren()).data;
      expect(initialProfiles, isNotNull);
      expect(initialProfiles!.nodes, isNotNull);

      // add a new profile
      final dekGenerateModel =
          await vaultDataManagerEncryptionService.generateDataEncryptionMaterial();
      final edekInfoBuilder = EdekInfoBuilder()
        ..edek =
            base64.encode(dekGenerateModel.dekEncryptedByWalletCryptoMaterial)
        ..dekekId = dekGenerateModel.walletCryptoMaterialHash;
      final createNodeInputBuilder = CreateNodeInputBuilder()
        ..name = 'Test Node'
        ..type = NodeType.PROFILE
        ..parentNodeId = rootNodeIdBase64Encoded
        ..edekInfo = edekInfoBuilder
        ..dek = base64.encode(dekGenerateModel.dekEncryptedByVfsPublicKey);
      final newProfile = (await nodesApi.createNode(
              createNodeInput: createNodeInputBuilder.build()))
          .data;
      expect(newProfile, isNotNull);
      expect(newProfile!.nodeId, isNotNull);

      // get details of new profile
      final nodeDetails =
          (await nodesApi.getDetailedNodeInfo(nodeId: newProfile.nodeId)).data;
      expect(nodeDetails, isNotNull);
      expect(nodeDetails!.nodeId, equals(newProfile.nodeId));
      expect(nodeDetails.name, equals(createNodeInputBuilder.name));
      expect(nodeDetails.type, equals(createNodeInputBuilder.type));
      expect(nodeDetails.parentNodeId,
          equals(createNodeInputBuilder.parentNodeId));
      expect(nodeDetails.edekInfo, isNotNull);
      expect(nodeDetails.edekInfo!.edek, equals(edekInfoBuilder.edek));

      // update profile
      final updateNodeInput = UpdateNodeInputBuilder()
        ..name = 'Updated Test Node'
        ..description = 'Updated description'
        ..metadata = jsonEncode({
          'pictureURI': 'https://example.com/picture.jpg',
        });
      final updatedProfile = (await nodesApi.updateNode(
              nodeId: newProfile.nodeId,
              updateNodeInput: updateNodeInput.build()))
          .data;
      expect(updatedProfile, isNotNull);
      expect(updatedProfile!.nodeId, equals(newProfile.nodeId));
      expect(updatedProfile.name, equals(updateNodeInput.name));
      expect(updatedProfile.description, equals(updateNodeInput.description));
      expect(updatedProfile.metadata, equals(updateNodeInput.metadata));

      // get updated list of profiles
      var updatedProfiles = (await nodesApi.listRootNodeChildren()).data;
      expect(updatedProfiles, isNotNull);
      expect(updatedProfiles!.nodes, isNotNull);
      expect(updatedProfiles.nodes!.length,
          equals(initialProfiles.nodes!.length + 1));
      final updatedProfileFromList = updatedProfiles.nodes!
          .firstWhere((node) => node.nodeId == newProfile.nodeId);
      expect(updatedProfileFromList, isNotNull);
      expect(updatedProfileFromList.nodeId, equals(newProfile.nodeId));
      expect(updatedProfileFromList.name, equals(updateNodeInput.name));
      expect(updatedProfileFromList.description,
          equals(updateNodeInput.description));
      expect(updatedProfileFromList.metadata, equals(updateNodeInput.metadata));

      // delete profile
      await nodesApi.deleteNode(nodeId: newProfile.nodeId);
      updatedProfiles = (await nodesApi.listRootNodeChildren()).data;
      expect(updatedProfiles, isNotNull);
      expect(updatedProfiles!.nodes, isNotNull);
      expect(
          updatedProfiles.nodes!.length, equals(initialProfiles.nodes!.length));
      expect(
          updatedProfiles.nodes!
              .any((node) => node.nodeId == newProfile.nodeId),
          isFalse);
    });
  });
}
