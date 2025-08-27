import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
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
  }) async {
    final createdTime = DateTime.now().toUtc();

    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: createdTime,
      expiresTime: createdTime.add(clientOptions.messageExpiration),
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
