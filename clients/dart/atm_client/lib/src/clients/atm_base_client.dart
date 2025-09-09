import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../common/atm_mediator_client.dart';
import '../common/client_options.dart';

abstract class AtmBaseClient {
  final ClientOptions clientOptions;
  final AtmMediatorClient mediatorClient;
  final DidManager didManager;
  final DidDocument atmServiceDidDocument;

  AtmBaseClient({
    required this.mediatorClient,
    required this.didManager,
    required this.atmServiceDidDocument,
    this.clientOptions = const ClientOptions(),
  });

  Future<PlainTextMessage> sendMessage(
    PlainTextMessage requestMessage, {
    required String accessToken,
  }) async {
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

    final responseMessageFuture = mediatorClient.waitForMessage(
      messageType: '${requestMessage.type.toString()}/response',
      threadId: requestMessage.threadId ?? requestMessage.id,
      fromDid: atmServiceDidDocument.id,
      didManager: didManager,
      accessToken: accessToken,
      atmServiceDidDocument: atmServiceDidDocument,
      clientOptions: clientOptions,
    );

    await mediatorClient.sendMessage(
      forwardMessage,
      accessToken: accessToken,
    );

    return await responseMessageFuture;
  }
}
