import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../../didcomm_client.dart';
import '../common/didcomm_mediator_client.dart';

abstract class DidcommBaseClient {
  final DidcommMediatorClient mediatorClient;
  final DidManager didManager;
  final ClientOptions clientOptions;

  DidcommBaseClient({
    required this.didManager,
    required this.clientOptions,
    required this.mediatorClient,
  });

  Future<void> sendMessage(
    PlainTextMessage requestMessage, {
    required DidDocument recipientDidDocument,
  }) async {
    final packagedMessage =
        await DidcommMessage.packIntoSignedAndEncryptedMessages(
      requestMessage,
      recipientDidDocuments: [
        recipientDidDocument,
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
      next: recipientDidDocument.id,
      expiresTime: expiresTime,
      attachments: [
        Attachment(
          mediaType: 'application/json',
          data: AttachmentData(
            base64: base64UrlEncodeNoPadding(
              packagedMessage.toJsonBytes(),
            ),
          ),
        ),
      ],
    );

    await mediatorClient.sendMessage(
      forwardMessage,
    );
  }
}
