import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import 'client_options.dart';

abstract class AtmBaseClient {
  final ClientOptions clientOptions;
  final MediatorClient mediatorClient;
  final DidManager didManager;
  final DidDocument atmServiceDidDocument;
  final DidSigner signer;
  final KeyPair keyPair;
  final String didKeyId;

  AtmBaseClient({
    required this.mediatorClient,
    required this.didManager,
    required this.atmServiceDidDocument,
    required this.signer,
    required this.keyPair,
    required this.didKeyId,
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
      keyPair: keyPair,
      didKeyId: didKeyId,
      signer: signer,
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

    final completer = Completer<PlainTextMessage>();

    await mediatorClient.listenForIncomingMessages(
      (message) async {
        if (completer.isCompleted) {
          return;
        }

        final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
          message: message,
          recipientDidManager: didManager,
          expectedMessageWrappingTypes: [
            MessageWrappingType.authcryptSignPlaintext,
            MessageWrappingType.anoncryptSignPlaintext,
          ],
        );

        // TODO: use parent ID instead when available on DIDComm Gateway
        if (unpackedMessage.type.toString() ==
            '${requestMessage.type.toString()}/response') {
          completer.complete(unpackedMessage);
          await mediatorClient.disconnect();
        }
      },
      onError: completer.completeError,
      onDone: () {
        if (!completer.isCompleted) {
          completer.completeError(
            Exception('Connection has been dropped'),
          );
        }
      },
      accessToken: accessToken,
      cancelOnError: false,
    );

    await mediatorClient.sendMessage(
      forwardMessage,
      accessToken: accessToken,
    );

    return completer.future.timeout(clientOptions.requestTimeout);
  }
}
