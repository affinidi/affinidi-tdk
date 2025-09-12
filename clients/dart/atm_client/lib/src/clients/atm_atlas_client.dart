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
    final request = GetMediatorInstancesListRequest(
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );

    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();

    final requestMessage = GetMediatorInstancesListMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      threadId: messageId,
    );

    requestMessage['query_params'] = request.toJson();

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
    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = DeployMediatorInstanceMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: deploymentData?.toJson() ?? {},
      threadId: messageId,
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
    final request = GetMediatorInstanceMetadataRequest(
      mediatorId: mediatorId,
    );
    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = GetMediatorInstanceMetadataMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: request.toJson(),
      threadId: messageId,
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
    final request = DestroyMediatorInstanceRequest(
      mediatorId: mediatorId,
    );
    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = DestroyMediatorInstanceMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: request.toJson(),
      threadId: messageId,
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
    required String mediatorId,
    UpdateMediatorInstanceDeploymentRequest? deploymentData,
  }) async {
    final request = deploymentData ?? UpdateMediatorInstanceDeploymentRequest(
      mediatorId: mediatorId,
    );

    if (deploymentData != null && deploymentData.mediatorId != mediatorId) {
      throw ArgumentError('mediatorId in request does not match parameter');
    }

    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = UpdateMediatorInstanceDeploymentMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: request.toJson(),
      threadId: messageId,
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
    required String mediatorId,
    UpdateMediatorInstanceConfigurationRequest? configurationData,
  }) async {
    final request = configurationData ?? UpdateMediatorInstanceConfigurationRequest(
      mediatorId: mediatorId,
    );

    if (configurationData != null && configurationData.mediatorId != mediatorId) {
      throw ArgumentError('mediatorId in request does not match parameter');
    }

    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = UpdateMediatorInstanceConfigurationMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: request.toJson(),
      threadId: messageId,
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
    final request = GetMediatorRequestsRequest(
      mediatorId: mediatorId,
      limit: limit,
      exclusiveStartKey: exclusiveStartKey,
    );

    final createdTime = DateTime.now().toUtc();
    final messageId = const Uuid().v4();
    final requestMessage = GetMediatorRequestsMessage(
      id: messageId,
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
      body: request.toJson(),
      threadId: messageId,
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
