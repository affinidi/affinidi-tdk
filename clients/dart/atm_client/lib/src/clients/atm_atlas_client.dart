import 'dart:async';

import 'package:uuid/uuid.dart';

import '../atm_service_registry.dart';
import '../messages/get_mediator_instances_list_message.dart';
import 'atm_base_client.dart';
import 'client_options.dart';

class AtmAtlasClient extends AtmBaseClient {
  AtmAtlasClient({
    required super.mediatorClient,
    required super.didManager,
    required AtmServiceRegistry atmServiceRegistry,
    super.clientOptions = const ClientOptions(),
  }) : super(
          atmServiceDidDocument: atmServiceRegistry.atlasDidDocument,
        );

  Future<GetMediatorInstancesListResponseMessage> getMediatorInstancesList({
    required String accessToken,
  }) async {
    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: mediatorClient.signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
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
}
