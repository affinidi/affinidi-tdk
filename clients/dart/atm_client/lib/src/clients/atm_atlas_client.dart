import 'dart:async';

import 'package:uuid/uuid.dart';

import '../atm_service_registry.dart';
import '../messages/ama/deploy_mediator_instance_message.dart';
import '../messages/ama/destroy_mediator_instance_message.dart';
import '../messages/ama/get_mediator_cloudwatch_metric_data_message.dart';
import '../messages/ama/get_mediator_instance_metadata_message.dart';
import '../messages/ama/get_mediator_instances_list_message.dart';
import '../messages/ama/get_mediators_requests_message.dart';
import '../messages/ama/update_mediator_instance_configuration_message.dart';
import '../messages/ama/update_mediator_instance_deployment_message.dart';
import 'atm_base_client.dart';
import 'client_options.dart';

class AtmMessagingAtlasClient extends AtmBaseClient {
  AtmMessagingAtlasClient({
    required super.mediatorClient,
    required super.didManager,
    required AtmServiceRegistry atmServiceRegistry,
    super.clientOptions = const ClientOptions(),
  }) : super(
          atmServiceDidDocument: atmServiceRegistry.atlasDidDocument,
        );

  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    required String accessToken,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestBody = <String, dynamic>{};
    if (limit != null) requestBody['limit'] = limit;
    if (exclusiveStartKey != null)
      requestBody['exclusiveStartKey'] = exclusiveStartKey;

    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
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

  Future<DeployMediatorInstanceResponseMessage> deployMediatorInstance({
    required String accessToken,
    Map<String, dynamic>? deploymentData,
  }) async {
    final requestMessage = DeployMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: deploymentData ?? {},
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

  Future<GetMediatorInstanceMetadataResponseMessage>
      getMediatorInstanceMetadata({
    required String accessToken,
    required String mediatorId,
  }) async {
    final requestMessage = GetMediatorInstanceMetadataMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: {'mediatorId': mediatorId},
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

  Future<DestroyMediatorInstanceResponseMessage> destroyMediatorInstance({
    required String accessToken,
    required String mediatorId,
  }) async {
    final requestMessage = DestroyMediatorInstanceMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: {'mediatorId': mediatorId},
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

  Future<UpdateMediatorInstanceDeploymentResponseMessage>
      updateMediatorInstanceDeployment({
    required String accessToken,
    required String mediatorId,
    Map<String, dynamic>? deploymentData,
  }) async {
    final requestBody = <String, dynamic>{'mediatorId': mediatorId};
    if (deploymentData != null) {
      requestBody.addAll(deploymentData);
    }

    final requestMessage = UpdateMediatorInstanceDeploymentMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
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

  Future<UpdateMediatorInstanceConfigurationResponseMessage>
      updateMediatorInstanceConfiguration({
    required String accessToken,
    required String mediatorId,
    Map<String, dynamic>? configurationData,
  }) async {
    final requestBody = <String, dynamic>{'mediatorId': mediatorId};
    if (configurationData != null) {
      requestBody.addAll(configurationData);
    }

    final requestMessage = UpdateMediatorInstanceConfigurationMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
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

  Future<GetMediatorsRequestsResponseMessage> getMediatorsRequests({
    required String accessToken,
    String? mediatorId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestBody = <String, dynamic>{};
    if (mediatorId != null) requestBody['mediatorId'] = mediatorId;
    if (limit != null) requestBody['limit'] = limit;
    if (exclusiveStartKey != null)
      requestBody['exclusiveStartKey'] = exclusiveStartKey;

    final requestMessage = GetMediatorsRequestsMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorsRequestsResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }

  Future<GetMediatorCloudwatchMetricDataResponseMessage>
      getMediatorCloudwatchMetricData({
    required String accessToken,
    required String mediatorId,
    required String metricId,
    String? startDate,
    String? endDate,
    int? period,
  }) async {
    final requestBody = <String, dynamic>{
      'mediatorId': mediatorId,
      'metricId': metricId,
    };
    if (startDate != null) requestBody['startDate'] = startDate;
    if (endDate != null) requestBody['endDate'] = endDate;
    if (period != null) requestBody['period'] = period;

    final requestMessage = GetMediatorCloudwatchMetricDataMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return GetMediatorCloudwatchMetricDataResponseMessage(
      id: responseMessage.id,
      from: responseMessage.from,
      to: responseMessage.to,
      createdTime: responseMessage.createdTime,
      expiresTime: responseMessage.expiresTime,
      body: responseMessage.body,
    );
  }
}
