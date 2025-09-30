import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import 'atm_base_client.dart';

abstract class AtmServiceClient extends AtmBaseClient {
  final DidDocument atmServiceDidDocument;

  AtmServiceClient({
    required super.didManager,
    required super.clientOptions,
    required super.mediatorClient,
    required this.atmServiceDidDocument,
  });

  Future<PlainTextMessage> sendServiceMessage(
    PlainTextMessage requestMessage, {
    required String accessToken,
  }) async {
    final responseMessageFuture = mediatorClient.waitForMessage(
      threadId: requestMessage.id,
      accessToken: accessToken,
    );

    await sendMessage(
      requestMessage,
      recipientDidDocument: atmServiceDidDocument,
      accessToken: accessToken,
    );

    return await responseMessageFuture;
  }
}
