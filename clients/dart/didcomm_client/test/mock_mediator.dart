import 'dart:async';
import 'dart:convert';

import 'package:affinidi_tdk_didcomm_client/src/clients/didcomm_mediator_client.dart';
import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

class MockMediator {
  final DidDocument didDocument;
  final DidManager didManager;
  final requestController = StreamController<DidcommMessage>();
  final responseControllers =
      <String, StreamController<Map<String, dynamic>>>{};
  final clients = <DidManager, MockDidcommMediatorClient>{};

  MockMediator({
    required this.didManager,
    required this.didDocument,
  });

  static Future<MockMediator> init({
    required KeyType keyType,
  }) async {
    final didManager = DidPeerManager(
      wallet: PersistentWallet(
        InMemoryKeyStore(),
      ),
      store: InMemoryDidStore(),
    );

    await didManager.addServiceEndpoint(
      ServiceEndpoint(
        id: 'mediator-endpoint',
        type: DidDocumentServiceType.didCommMessaging.value,
        serviceEndpoint: const StringEndpoint('https://mock.mediator'),
      ),
    );

    final keyPair = await didManager.wallet.generateKey(
      keyType: keyType,
    );

    await didManager.addVerificationMethod(keyPair.id);

    return MockMediator(
      didManager: didManager,
      didDocument: await didManager.getDidDocument(),
    );
  }

  Future<void> startConnections() async {
    requestController.stream.listen((message) async {
      final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
        message: message.toJson(),
        recipientDidManager: didManager,
        expectedMessageWrappingTypes: [
          // mock mediator supports anoncryptPlainText messages
          MessageWrappingType.anoncryptPlaintext,
          MessageWrappingType.authcryptPlaintext,
          MessageWrappingType.authcryptSignPlaintext,
          MessageWrappingType.anoncryptSignPlaintext,
          MessageWrappingType.anoncryptAuthcryptPlaintext,
        ],
      );

      final forwardMessage = ForwardMessage.fromJson(unpackedMessage.toJson());

      final attachment = forwardMessage.attachments!.first;
      final json = base64DecodeToUtf8(attachment.data!.base64!);
      final attachedMessage = jsonDecode(json) as Map<String, dynamic>;

      final responseController = responseControllers[forwardMessage.next];
      responseController?.add(attachedMessage);
    });
  }

  Future<void> stopConnections() async {
    await requestController.close();

    for (final controller in responseControllers.values) {
      await controller.close();
    }
  }

  Future<void> addClientForDidManager(
    DidManager clientDidManager,
  ) async {
    final clientDidDocument = await clientDidManager.getDidDocument();
    final clientDidKeyId = clientDidDocument.keyAgreement.first.id;

    final clientKeyPair = await clientDidManager.getKeyPairByDidKeyId(
      clientDidKeyId,
    );

    responseControllers[clientDidDocument.id] =
        StreamController<Map<String, dynamic>>();

    final client = MockDidcommMediatorClient(
      mediatorDidDocument: didDocument,
      didManager: clientDidManager,
      keyPair: clientKeyPair,
      didKeyId: clientDidKeyId,
      requestController: requestController,
      responseStream: responseControllers[clientDidDocument.id]!.stream,
      signer: await clientDidManager.getSigner(
        clientDidDocument.assertionMethod.first.id,
      ),
    );

    clients[clientDidManager] = client;
  }
}

class MockDidcommMediatorClient extends DidcommMediatorClient {
  final StreamController<DidcommMessage> requestController;
  final Stream<Map<String, dynamic>> responseStream;

  MockDidcommMediatorClient({
    required super.mediatorDidDocument,
    required super.didManager,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    required this.requestController,
    required this.responseStream,
  });

  @override
  Future<DidcommMessage> sendMessage(
    ForwardMessage message,
  ) async {
    final messageToSend = await packMessage(
      message,
      messageOptions: forwardMessageOptions,
    );

    requestController.add(messageToSend);
    return messageToSend;
  }

  @override
  StreamSubscription listenForIncomingMessages(
    void Function(Map<String, dynamic>) onMessage, {
    Function? onError,
    void Function({
      int? closeCode,
      String? closeReason,
    })? onDone,
    bool? cancelOnError,
  }) {
    return responseStream.listen(
      onMessage,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
