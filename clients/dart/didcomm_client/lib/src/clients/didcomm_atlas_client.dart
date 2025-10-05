import 'dart:async';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../extensions/did_manager_extention.dart';

class DidcommAtlasClient extends DidcommServiceClient {
  DidcommAtlasClient({
    required super.didManager,
    required super.mediatorClient,
    required super.serviceDidDocument,
    super.clientOptions = const ClientOptions(),
  });

  static Future<DidcommAtlasClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
        clientOptions.atlasDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return DidcommAtlasClient(
      didManager: didManager,
      serviceDidDocument: atlasDidDocument,
      clientOptions: clientOptions,
      mediatorClient: await didManager.getMediatorClient(
        mediatorDidDocument: mediatorDidDocument,
        recipientDidDocuments: [
          atlasDidDocument,
        ],
      ),
    );
  }

  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: GetMediatorInstancesListRequest(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ).toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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

  /// Deploys a new mediator instance.
  Future<DeployMediatorInstanceResponseMessage> deployMediatorInstance({
    DeployMediatorInstanceRequest? deploymentData,
  }) async {
    final requestMessage = DeployMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: deploymentData?.toJson() ?? {},
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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
    required String mediatorId,
  }) async {
    final requestMessage = GetMediatorInstanceMetadataMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: GetMediatorInstanceMetadataRequest(
        mediatorId: mediatorId,
      ).toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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
    required String mediatorId,
  }) async {
    final requestMessage = DestroyMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: DestroyMediatorInstanceRequest(
        mediatorId: mediatorId,
      ).toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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
    required UpdateMediatorInstanceDeploymentRequest deploymentData,
  }) async {
    final requestMessage = UpdateMediatorInstanceDeploymentMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: deploymentData.toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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
    required UpdateMediatorInstanceConfigurationRequest configurationData,
  }) async {
    final requestMessage = UpdateMediatorInstanceConfigurationMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: configurationData.toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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
    String? mediatorId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetMediatorRequestsMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [serviceDidDocument.id],
      body: GetMediatorRequestsRequest(
        mediatorId: mediatorId,
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ).toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
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

  // TODO: run it by default in the parent constructor
  void linkRequestsAndResponses() {
    mediatorClient.linkRequestsAndResponses(
      serviceDidDocument: serviceDidDocument,
    );
  }
}
