import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
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
import 'client_options.dart';

/// Client for interacting with the ATM Atlas messaging service.
class AtmMessagingAtlasClient {
  /// Mediator client for message handling.
  final MediatorClient mediatorClient;

  /// DID manager for handling decentralized identifiers.
  final DidManager didManager;

  /// The ATM service DID document.
  final DidDocument atmServiceDidDocument;

  /// Client configuration options for timeouts and message expiration.
  final ClientOptions clientOptions;

  /// Creates an Atlas client with the specified mediator and registry.
  AtmMessagingAtlasClient({
    required this.mediatorClient,
    required this.didManager,
    required AtmServiceRegistry atmServiceRegistry,
    this.clientOptions = const ClientOptions(),
  }) : atmServiceDidDocument = atmServiceRegistry.atlasDidDocument;


  /// Sends a message and waits for response.
  Future<PlainTextMessage> _sendMessage(
    PlainTextMessage requestMessage, {
    required String accessToken,
  }) async {
    final completer = Completer<PlainTextMessage>();
    final responseType = '${requestMessage.type.toString()}/response';
    StreamSubscription? subscription;

    try {
      // Set up listener for the response
      subscription = await mediatorClient.listenForIncomingMessages(
        (message) async {
          try {
            final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
              message: message,
              recipientDidManager: didManager,
              expectedMessageWrappingTypes: [
                MessageWrappingType.authcryptSignPlaintext,
                MessageWrappingType.anoncryptSignPlaintext,
              ],
            );

            // Verify sender is Atlas DID
            if (unpackedMessage.from != atmServiceDidDocument.id) {
              if (!completer.isCompleted) {
                completer.completeError(
                  Exception(
                    'Security violation: Response sender ${unpackedMessage.from} '
                    'does not match expected Atlas DID ${atmServiceDidDocument.id}',
                  ),
                );
              }
              return;
            }

            // Check if this is the response we're waiting for
            if (unpackedMessage.type.toString() == responseType) {
              if (!completer.isCompleted) {
                completer.complete(unpackedMessage);
              }
            }
          } catch (e) {
            if (!completer.isCompleted) {
              completer.completeError(e);
            }
          }
        },
        onError: (Object error) {
          if (!completer.isCompleted) {
            completer.completeError(error);
          }
        },
        onDone: () {
          if (!completer.isCompleted) {
            completer.completeError(
              Exception('Connection closed before response received'),
            );
          }
        },
        accessToken: accessToken,
        cancelOnError: false,
      );

      // Package the message for Atlas
      final packagedMessageForAtmService =
          await DidcommMessage.packIntoSignedAndEncryptedMessages(
        requestMessage,
        recipientDidDocuments: [
          atmServiceDidDocument,
        ],
        keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
        encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
        keyPair: mediatorClient.keyPair,
        didKeyId: mediatorClient.didKeyId,
        signer: mediatorClient.signer,
      );

      final createdTime = DateTime.now().toUtc();
      final expiresTime = createdTime.add(clientOptions.messageExpiration);

      // Create forward message for mediator
      final forwardMessage = ForwardMessage(
        id: const Uuid().v4(),
        to: [mediatorClient.mediatorDidDocument.id],
        from: mediatorClient.signer.did,
        next: atmServiceDidDocument.id,
        expiresTime: expiresTime,
        attachments: [
          Attachment(
            mediaType: 'application/json',
            data: AttachmentData(
              base64: base64UrlEncodeNoPadding(
                packagedMessageForAtmService.toJsonBytes(),
              ),
            ),
          ),
        ],
      );

      // Send the message
      await mediatorClient.sendMessage(
        forwardMessage,
        accessToken: accessToken,
      );

      // Wait for response with timeout
      return await completer.future.timeout(clientOptions.requestTimeout);
    } finally {
      // Clean up subscription
      await subscription?.cancel();
    }
  }

  /// Disposes of resources.
  /// Note: Since each method call manages its own subscription,
  /// this method is now a no-op kept for backward compatibility.
  Future<void> dispose() async {
    // No-op - each method call manages its own subscription
  }

  /// Gets the list of mediator instances.
  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    required String accessToken,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestBody = <String, dynamic>{};
    if (limit != null) requestBody['limit'] = limit;
    if (exclusiveStartKey != null) {
      requestBody['exclusiveStartKey'] = exclusiveStartKey;
    }

    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
    );

    final responseMessage = await _sendMessage(
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

    final responseMessage = await _sendMessage(
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
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: {'mediatorId': mediatorId},
    );

    final responseMessage = await _sendMessage(
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
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: {'mediatorId': mediatorId},
    );

    final responseMessage = await _sendMessage(
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

    final responseMessage = await _sendMessage(
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

    final responseMessage = await _sendMessage(
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
  Future<GetMediatorsRequestsResponseMessage> getMediatorsRequests({
    required String accessToken,
    String? mediatorId,
    int? limit,
    String? exclusiveStartKey,
  }) async {
    final requestBody = <String, dynamic>{};
    if (mediatorId != null) requestBody['mediatorId'] = mediatorId;
    if (limit != null) requestBody['limit'] = limit;
    if (exclusiveStartKey != null) {
      requestBody['exclusiveStartKey'] = exclusiveStartKey;
    }

    final requestMessage = GetMediatorsRequestsMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
      body: requestBody,
    );

    final responseMessage = await _sendMessage(
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

  /// Gets CloudWatch metrics data for a mediator instance.
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

    final responseMessage = await _sendMessage(
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
