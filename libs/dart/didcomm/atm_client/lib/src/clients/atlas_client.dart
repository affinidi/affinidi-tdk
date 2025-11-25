import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../messages/atlas/deploy_mediator_instance_message.dart';
import '../messages/atlas/destroy_mediator_instance_message.dart';
import '../messages/atlas/get_mediator_instance_metadata_message.dart';
import '../messages/atlas/get_mediator_instances_list_message.dart';
import '../messages/atlas/get_mediator_requests_message.dart';
import '../messages/atlas/update_mediator_instance_configuration_message.dart';
import '../messages/atlas/update_mediator_instance_deployment_message.dart';
import '../models/request_bodies/base_deploy_instance_request.dart';
import '../models/request_bodies/base_destroy_instance_request.dart';
import '../models/request_bodies/base_get_instance_metadata_request.dart';
import '../models/request_bodies/base_get_instance_requests_request.dart';
import '../models/request_bodies/base_get_instances_list_request.dart';
import '../models/request_bodies/base_update_instance_configuration_request.dart';
import '../models/request_bodies/base_update_instance_deployment_request.dart';
import 'service_client.dart';

/// DIDComm client for interacting with the Affinidi Atlas service.
class DidcommAtlasClient extends DidcommServiceClient {
  /// Creates a [DidcommAtlasClient] instance.
  DidcommAtlasClient({
    required super.didManager,
    required super.serviceDidDocument,
    super.clientOptions = const AffinidiClientOptions(),
    required super.mediatorDidDocument,
    required super.authorizationProvider,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
  });

  /// Initializes a [DidcommAtlasClient] instance.
  /// 
  /// [didManager] required for managing DIDs and keys.
  /// [authorizationProvider] is optional; if not provided an [AffinidiAuthorizationProvider] will be created.
  /// [clientOptions] configures client behavior
  static Future<DidcommAtlasClient> init({
    required DidManager didManager,
    AuthorizationProvider? authorizationProvider,
    AffinidiClientOptions clientOptions = const AffinidiClientOptions(),
  }) async {
    final [mediatorDidDocument, atlasDidDocument] = await Future.wait(
      [
        clientOptions.mediatorDid,
        clientOptions.atlasDid,
      ].map(UniversalDIDResolver.defaultResolver.resolveDid),
    );

    final mediatorClient = await DidcommMediatorClient.init(
      didManager: didManager,
      mediatorDidDocument: mediatorDidDocument,
      clientOptions: clientOptions,
      authorizationProvider: authorizationProvider ??
          await AffinidiAuthorizationProvider.init(
            didManager: didManager,
            mediatorDidDocument: mediatorDidDocument,
          ),
    );

    final client = DidcommAtlasClient(
      didManager: mediatorClient.didManager,
      clientOptions: mediatorClient.clientOptions,
      mediatorDidDocument: mediatorClient.mediatorDidDocument,
      authorizationProvider: mediatorClient.authorizationProvider,
      keyPair: mediatorClient.keyPair,
      didKeyId: mediatorClient.didKeyId,
      signer: mediatorClient.signer,
      serviceDidDocument: atlasDidDocument,
    );

    await client.configureAcl();
    return client;
  }

  /// Gets the list of deployed mediator instances.
  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      body: BaseGetInstancesListRequest.mediator(
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
    BaseDeployInstanceRequest? deploymentData,
  }) async {
    final requestMessage = DeployMediatorInstanceMessage(
      id: const Uuid().v4(),
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
      to: [serviceDidDocument.id],
      body: BaseGetInstanceMetadataRequest.mediator(
        instanceId: mediatorId,
     
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
      to: [serviceDidDocument.id],
      body: BaseDestroyInstanceRequest.mediator(
        instanceId: mediatorId,
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
    required BaseUpdateInstanceDeploymentRequest deploymentData,
  }) async {
    final requestMessage = UpdateMediatorInstanceDeploymentMessage(
      id: const Uuid().v4(),
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
    required BaseUpdateInstanceConfigurationRequest configurationData,
  }) async {
    final requestMessage = UpdateMediatorInstanceConfigurationMessage(
      id: const Uuid().v4(),
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
      to: [serviceDidDocument.id],
      body: BaseGetInstanceRequestsRequest.mediator(
        instanceId: mediatorId,
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
}
