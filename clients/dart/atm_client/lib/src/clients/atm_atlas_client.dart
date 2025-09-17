import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../common/atm_mediator_client.dart';

class AtmAtlasClient extends AtmBaseClient {
  AtmAtlasClient({
    required super.mediatorClient,
    required super.didManager,
    required super.atmServiceDidDocument,
    super.clientOptions = const ClientOptions(),
  });

  static Future<AtmAtlasClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait([
      UniversalDIDResolver.defaultResolver.resolveDid(
        clientOptions.mediatorDid,
      ),
      UniversalDIDResolver.defaultResolver.resolveDid(
        clientOptions.atlasDid,
      ),
    ]);

    final didDocument = await didManager.getDidDocument();
    final signer = await didManager.getSigner(
      didDocument.authentication.first.id,
    );

    final matchedDidKeyIds = didDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        mediatorDidDocument,
        atlasDidDocument,
      ],
    );

    // TODO: improve error message to specify which key pair are supported by mediator/Atlas
    if (matchedDidKeyIds.isEmpty) {
      throw Exception(
        'No matching keys found between our DID Document and mediator/Atlas',
      );
    }

    final mediatorClient = AtmMediatorClient(
      mediatorDidDocument: mediatorDidDocument,
      keyPair: await didManager.getKeyPairByDidKeyId(
        matchedDidKeyIds.first,
      ),
      didKeyId: matchedDidKeyIds.first,
      signer: signer,
      forwardMessageOptions: const ForwardMessageOptions(
        shouldSign: true,
        shouldEncrypt: true,
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      ),
      webSocketOptions: const WebSocketOptions(
        statusRequestMessageOptions: StatusRequestMessageOptions(
          shouldSend: true,
          shouldSign: true,
          shouldEncrypt: true,
        ),
        liveDeliveryChangeMessageOptions: LiveDeliveryChangeMessageOptions(
          shouldSend: true,
          shouldSign: true,
          shouldEncrypt: true,
        ),
      ),
    );

    return AtmAtlasClient(
      mediatorClient: mediatorClient,
      didManager: didManager,
      atmServiceDidDocument: atlasDidDocument,
      clientOptions: clientOptions,
    );
  }

  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    required String accessToken,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: GetMediatorInstancesListRequest(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ).toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorInstancesListResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  Future<AuthenticationTokens> authenticate({
    EncryptionAlgorithm encryptionAlgorithm = EncryptionAlgorithm.a256cbc,
  }) async {
    return await mediatorClient.authenticate(
      encryptionAlgorithm: encryptionAlgorithm,
    );
  }

  /// Deploys a new mediator instance.
  Future<DeployMediatorInstanceResponseMessage> deployMediatorInstance({
    required String accessToken,
    DeployMediatorInstanceRequest? deploymentData,
  }) async {
    final requestMessage = DeployMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: deploymentData?.toJson() ?? {},
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return DeployMediatorInstanceResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the metadata for a specific mediator instance.
  Future<GetMediatorInstanceMetadataResponseMessage>
      getMediatorInstanceMetadata({
    required String accessToken,
    required String mediatorId,
  }) async {
    final requestMessage = GetMediatorInstanceMetadataMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: GetMediatorInstanceMetadataRequest(
        mediatorId: mediatorId,
      ).toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorInstanceMetadataResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Destroys a mediator instance.
  Future<DestroyMediatorInstanceResponseMessage> destroyMediatorInstance({
    required String accessToken,
    required String mediatorId,
  }) async {
    final requestMessage = DestroyMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: DestroyMediatorInstanceRequest(
        mediatorId: mediatorId,
      ).toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return DestroyMediatorInstanceResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Updates the deployment configuration of a mediator instance.
  Future<UpdateMediatorInstanceDeploymentResponseMessage>
      updateMediatorInstanceDeployment({
    required String accessToken,
    required UpdateMediatorInstanceDeploymentRequest deploymentData,
  }) async {
    final requestMessage = UpdateMediatorInstanceDeploymentMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: deploymentData.toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return UpdateMediatorInstanceDeploymentResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Updates the configuration of a mediator instance.
  Future<UpdateMediatorInstanceConfigurationResponseMessage>
      updateMediatorInstanceConfiguration({
    required String accessToken,
    required UpdateMediatorInstanceConfigurationRequest configurationData,
  }) async {
    final requestMessage = UpdateMediatorInstanceConfigurationMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: configurationData.toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return UpdateMediatorInstanceConfigurationResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the requests for mediators.
  Future<GetMediatorRequestsResponseMessage> getMediatorRequests({
    required String accessToken,
    String? mediatorId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetMediatorRequestsMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      body: GetMediatorRequestsRequest(
        mediatorId: mediatorId,
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ).toJson(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorRequestsResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }
}
