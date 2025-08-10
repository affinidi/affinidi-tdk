import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
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
    required super.signer,
    required super.keyPair,
    required super.didKeyId,
    super.clientOptions = const ClientOptions(),
  }) : super(
          atmServiceDidDocument: atmServiceRegistry.atlasDidDocument,
        );

  Future<PlainTextMessage> getMediatorInstancesList({
    required String accessToken,
  }) async {
    final requestMessage = GetMediatorInstancesListMessage(
      id: const Uuid().v4(),
      from: signer.did,
      to: [atmServiceDidDocument.id],
      createdTime: DateTime.now().toUtc(),
      expiresTime: DateTime.now().add(clientOptions.messageExpiration).toUtc(),
    );

    final responseMessage = await sendMessage(
      requestMessage,
      accessToken: accessToken,
    );

    return responseMessage;
  }
}
