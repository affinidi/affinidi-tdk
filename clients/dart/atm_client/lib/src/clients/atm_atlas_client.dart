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

class AtmMessagingAtlasClient {
  final MediatorClient mediatorClient;
  final DidManager didManager;
  final DidDocument atmServiceDidDocument;
  final ClientOptions clientOptions;
  
  /// Active WebSocket subscription.
  StreamSubscription? _activeSubscription;
  
  /// Map of pending responses indexed by expected response type.
  final Map<String, Completer<PlainTextMessage>> _pendingResponses = {};
  
  /// Whether the WebSocket connection is established.
  bool _isConnected = false;
  
  /// The access token used for the current connection.
  String? _currentAccessToken;
  
  /// Whether the client is being disposed.
  bool _isDisposing = false;
  
  AtmMessagingAtlasClient({
    required this.mediatorClient,
    required this.didManager,
    required AtmServiceRegistry atmServiceRegistry,
    this.clientOptions = const ClientOptions(),
  }) : atmServiceDidDocument = atmServiceRegistry.atlasDidDocument;
  
  /// Ensures the WebSocket connection is established.
  Future<void> _ensureConnected(String accessToken) async {
    if (_isConnected && _currentAccessToken == accessToken) {
      return;
    }
    
    if (_isConnected && _currentAccessToken != accessToken) {
      await dispose();
      _isDisposing = false;
    }
    
    _currentAccessToken = accessToken;
    _activeSubscription = await mediatorClient.listenForIncomingMessages(
      _handleIncomingMessage,
      onError: _handleError,
      onDone: _handleConnectionClosed,
      accessToken: accessToken,
      cancelOnError: false,
    );
    _isConnected = true;
  }
  
  /// Handles incoming messages and routes them to pending responses.
  Future<void> _handleIncomingMessage(Map<String, dynamic> message) async {
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
        for (final completer in _pendingResponses.values) {
          if (!completer.isCompleted) {
            completer.completeError(
              Exception(
                'Security violation: Response sender ${unpackedMessage.from} '
                'does not match expected Atlas DID ${atmServiceDidDocument.id}',
              ),
            );
          }
        }
        _pendingResponses.clear();
        return;
      }
      
      final messageType = unpackedMessage.type.toString();
      
      for (final entry in _pendingResponses.entries) {
        if (messageType == entry.key) {
          entry.value.complete(unpackedMessage);
          _pendingResponses.remove(entry.key);
          break;
        }
      }
    } catch (e) {
      for (final completer in _pendingResponses.values) {
        if (!completer.isCompleted) {
          completer.completeError(e);
        }
      }
      _pendingResponses.clear();
    }
  }
  
  /// Handles WebSocket errors.
  void _handleError(Object error) {
    for (final completer in _pendingResponses.values) {
      if (!completer.isCompleted) {
        completer.completeError(error);
      }
    }
    _pendingResponses.clear();
    _isConnected = false;
  }
  
  /// Handles WebSocket connection closed.
  void _handleConnectionClosed() {
    if (!_isDisposing) {
      for (final completer in _pendingResponses.values) {
        if (!completer.isCompleted) {
          completer.completeError(
            Exception('Connection has been dropped'),
          );
        }
      }
    }
    _pendingResponses.clear();
    _isConnected = false;
  }
  
  /// Sends a message and waits for response.
  Future<PlainTextMessage> _sendMessage(
    PlainTextMessage requestMessage, {
    required String accessToken,
  }) async {
    await _ensureConnected(accessToken);
    
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
    
    final completer = Completer<PlainTextMessage>();
    final responseType = '${requestMessage.type.toString()}/response';
    _pendingResponses[responseType] = completer;
    
    await mediatorClient.sendMessage(
      forwardMessage,
      accessToken: accessToken,
    );
    
    try {
      return await completer.future.timeout(clientOptions.requestTimeout);
    } finally {
      _pendingResponses.remove(responseType);
    }
  }
  
  /// Disposes of the WebSocket connection and cleans up resources.
  Future<void> dispose() async {
    _isDisposing = true;
    _pendingResponses.clear();
    await _activeSubscription?.cancel();
    _activeSubscription = null;
    _isConnected = false;
    _currentAccessToken = null;
  }
  
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