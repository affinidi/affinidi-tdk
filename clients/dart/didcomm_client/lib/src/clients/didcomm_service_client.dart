import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../didcomm_client.dart';
import 'didcomm_mediator_client.dart';

abstract class DidcommServiceClient {
  final DidcommMediatorClient mediatorClient;
  final DidManager didManager;
  final ClientOptions clientOptions;

  final DidDocument serviceDidDocument;

  DidcommServiceClient({
    required this.didManager,
    required this.clientOptions,
    required this.mediatorClient,
    required this.serviceDidDocument,
  });

  Future<PlainTextMessage> sendServiceMessage(
    PlainTextMessage requestMessage,
  ) async {
    final responseMessageFuture = mediatorClient.waitForMessage(
      threadId: requestMessage.id,
    );

    await mediatorClient.packAndSendMessage(requestMessage);
    return await responseMessageFuture;
  }
}
