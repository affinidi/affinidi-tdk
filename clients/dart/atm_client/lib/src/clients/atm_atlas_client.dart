import 'dart:async';

import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../atm_client.dart';
import '../extensions/did_manager_extention.dart';

class AtmAtlasClient extends AtmServiceClient {
  AtmAtlasClient({
    required super.didManager,
    required super.mediatorClient,
    required super.atmServiceDidDocument,
    super.clientOptions = const ClientOptions(),
  });

  static Future<AtmAtlasClient> init({
    required DidManager didManager,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
        clientOptions.atlasDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    return AtmAtlasClient(
      didManager: didManager,
      atmServiceDidDocument: atlasDidDocument,
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

    final responseMessage = await sendServiceMessage(
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

  Future<void> connect({required String accessToken}) async {
    await mediatorClient.connect(
      atmServiceDidDocument: atmServiceDidDocument,
      accessToken: accessToken,
    );
  }
}
