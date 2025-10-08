import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import 'didcomm_base_client.dart';

abstract class DidcommServiceClient extends DidcommBaseClient {
  final DidDocument serviceDidDocument;

  DidcommServiceClient({
    required super.didManager,
    required super.clientOptions,
    required super.mediatorClient,
    required this.serviceDidDocument,
  });

  Future<PlainTextMessage> sendServiceMessage(
    PlainTextMessage requestMessage,
  ) async {
    final responseMessageFuture = mediatorClient.waitForMessage(
      threadId: requestMessage.id,
    );

    await sendMessage(
      requestMessage,
      recipientDidDocument: serviceDidDocument,
    );

    return await responseMessageFuture;
  }
}
