import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../messages/atlas/deploy_instance/deploy_instance_request_message.dart';
import '../messages/atlas/deploy_instance/deploy_instance_response_message.dart';
import '../messages/atlas/destroy_instance/destroy_instance_request_message.dart';
import '../messages/atlas/destroy_instance/destroy_instance_response_message.dart';
import '../messages/atlas/get_instance_metadata/get_instance_metadata_request_message.dart';
import '../messages/atlas/get_instance_metadata/get_instance_metadata_response_message.dart';
import '../messages/atlas/get_instances_list/get_instances_list_request_message.dart';
import '../messages/atlas/get_instances_list/get_instances_list_response_message.dart';
import '../messages/atlas/get_requests/get_requests_request_message.dart';
import '../messages/atlas/get_requests/get_requests_response_message.dart';
import '../messages/atlas/update_instance_configuration/update_instance_configuration_request_message.dart';
import '../messages/atlas/update_instance_configuration/update_instance_configuration_response_message.dart';
import '../messages/atlas/update_instance_deployment/update_instance_deployment_request_message.dart';
import '../messages/atlas/update_instance_deployment/update_instance_deployment_response_message.dart';
import '../models/request_bodies/deploy_mediator_instance_options.dart';
import '../models/request_bodies/deploy_mpx_instance_options.dart';
import '../models/request_bodies/deploy_tr_instance_options.dart';
import '../models/request_bodies/get_instance_requests_request_options.dart';
import '../models/request_bodies/get_instances_list_request_options.dart';
import '../models/request_bodies/update_instance_configuration_options.dart';
import '../models/request_bodies/update_mediator_instance_deployment_options.dart';
import '../models/request_bodies/update_mpx_instance_deployment_options.dart';
import '../models/request_bodies/update_tr_instance_deployment_options.dart';
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

  /// Gets the list of mediator instances.
  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetInstancesListMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: GetInstancesListRequestOptions(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ),
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
  Future<DeployInstanceResponseMessage> deployMediatorInstance({
    required DeployMediatorInstanceOptions options,
  }) async {
    final requestMessage = DeployInstanceRequestMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: options,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DeployInstanceResponseMessage.mediator(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Deploys a new MPX (Meeting Place) instance.
  Future<DeployInstanceResponseMessage> deployMpxInstance({
    required DeployMpxInstanceOptions options,
  }) async {
    final requestMessage = DeployInstanceRequestMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: options,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DeployInstanceResponseMessage.meetingPlace(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Deploys a new Trust Registry instance.
  Future<DeployInstanceResponseMessage> deployTrInstance({
    required DeployTrInstanceOptions options,
  }) async {
    final requestMessage = DeployInstanceRequestMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: options,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DeployInstanceResponseMessage.trustRegistry(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Gets the metadata for a specific mediator instance.
  Future<GetMediatorInstanceMetadataResponseMessage>
      getMediatorInstanceMetadata({
    required String mediatorId,
  }) async {
    final requestMessage = GetInstanceMetadataRequestMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: mediatorId,
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

  /// Gets the metadata for a specific MPX instance.
  Future<GetMpxInstanceMetadataResponseMessage> getMpxInstanceMetadata({
    required String mpxId,
  }) async {
    final requestMessage = GetInstanceMetadataRequestMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: mpxId,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetMpxInstanceMetadataResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the metadata for a specific Trust Registry instance.
  Future<GetTrInstanceMetadataResponseMessage> getTrInstanceMetadata({
    required String trId,
  }) async {
    final requestMessage = GetInstanceMetadataRequestMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: trId,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetTrInstanceMetadataResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Destroys a mediator instance.
  Future<DestroyInstanceResponseMessage> destroyMediatorInstance({
    required String mediatorId,
  }) async {
    final requestMessage = DestroyInstanceRequestMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: mediatorId,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DestroyInstanceResponseMessage.mediator(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Destroys an MPX instance.
  Future<DestroyInstanceResponseMessage> destroyMpxInstance({
    required String mpxId,
  }) async {
    final requestMessage = DestroyInstanceRequestMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: mpxId,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DestroyInstanceResponseMessage.meetingPlace(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Destroys a Trust Registry instance.
  Future<DestroyInstanceResponseMessage> destroyTrInstance({
    required String trId,
  }) async {
    final requestMessage = DestroyInstanceRequestMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      instanceId: trId,
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return DestroyInstanceResponseMessage.trustRegistry(
      id: responseMessage.id,
      from: responseMessage.from!,
      to: responseMessage.to!,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body!,
    );
  }

  /// Updates the deployment configuration of a mediator instance.
  Future<UpdateMediatorInstanceDeploymentResponseMessage>
      updateMediatorInstanceDeployment({
    required String mediatorId,
    required UpdateMediatorInstanceDeploymentOptions options,
  }) async {
    final requestMessage = UpdateInstanceDeploymentRequestMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      mediatorId: mediatorId,
      options: options,
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

  /// Updates the deployment configuration of an MPX instance.
  Future<UpdateMediatorInstanceDeploymentResponseMessage>
      updateMpxInstanceDeployment({
    required String mpxId,
    required UpdateMpxInstanceDeploymentOptions options,
  }) async {
    final requestMessage = UpdateInstanceDeploymentRequestMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      mpxId: mpxId,
      options: options,
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

  /// Updates the deployment configuration of a Trust Registry instance.
  Future<UpdateMediatorInstanceDeploymentResponseMessage>
      updateTrInstanceDeployment({
    required String trId,
    required UpdateTrInstanceDeploymentOptions options,
  }) async {
    final requestMessage = UpdateInstanceDeploymentRequestMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      trId: trId,
      options: options,
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
    required UpdateInstanceConfigurationOptions configurationData,
  }) async {
    final requestMessage = UpdateInstanceConfigurationRequestMessage.mediator(
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
    final requestMessage = GetRequestsMessage.mediator(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: GetInstanceRequestsRequestOptions(
        instanceId: mediatorId,
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ),
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

  /// Gets the requests for MPX instances.
  Future<GetMpxRequestsResponseMessage> getMpxRequests({
    String? mpxId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetRequestsMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: GetInstanceRequestsRequestOptions(
        instanceId: mpxId,
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetMpxRequestsResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the requests for Trust Registry instances.
  Future<GetTrRequestsResponseMessage> getTrRequests({
    String? trId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetRequestsMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: GetInstanceRequestsRequestOptions(
        instanceId: trId,
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetTrRequestsResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the list of MPX instances.
  Future<GetMpxInstancesListResponseMessage> getMpxInstancesList({
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetInstancesListMessage.meetingPlace(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      options: GetInstancesListRequestOptions(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetMpxInstancesListResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  /// Gets the list of Trust Registry instances.
  Future<GetTrInstancesListResponseMessage> getTrInstancesList({
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestMessage = GetInstancesListMessage.trustRegistry(
      id: const Uuid().v4(),
      to: [serviceDidDocument.id],
      body: GetInstancesListRequestOptions(
        limit: limit,
        exclusiveStartKey: exclusiveStartKey,
      ).toJson(),
    );

    final responseMessage = await sendServiceMessage(
      requestMessage,
    );

    return GetTrInstancesListResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }
}
