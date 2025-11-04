import 'dart:async';
import 'dart:convert';

import 'package:ssi/ssi.dart';

import '../../affinidi_tdk_mediator_didcomm_client.dart';

/// A mock implementation of a DIDComm mediator for testing purposes.
///
/// This class simulates a mediator that can receive and forward DIDComm messages
/// between clients. It provides an in-memory implementation that doesn't require
/// an actual network connection.
class MockMediator {
  /// The DID document representing this mediator's identity.
  final DidDocument didDocument;

  /// The DID manager used to manage the mediator's decentralized identifier.
  final DidManager didManager;

  /// Stream controller for handling incoming DIDComm message requests.
  final requestController = StreamController<DidcommMessage>();

  /// Map of DID identifiers to their response stream controllers.
  ///
  /// Each client connected to the mediator has a dedicated response controller
  /// keyed by their DID.
  final responseControllers =
      <String, StreamController<Map<String, dynamic>>>{};

  /// Map of connected client DID managers to their mock client instances.
  final clients = <DidManager, MockMediatorDidcommClient>{};

  /// Creates a new instance of [MockMediator].
  ///
  /// [didManager] The DID manager for this mediator.
  /// [didDocument] The DID document representing this mediator.
  MockMediator({
    required this.didManager,
    required this.didDocument,
  });

  /// Initializes and returns a new [MockMediator] instance with a fresh DID.
  ///
  /// This factory method creates a mediator with a peer DID, generates
  /// appropriate keys, and sets up service endpoints.
  ///
  /// [keyType] The type of cryptographic key to generate for the mediator.
  ///
  /// Returns a fully initialized [MockMediator] ready for use.
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

  /// Starts listening for incoming DIDComm messages and forwards them to clients.
  ///
  /// This method sets up a stream listener that processes incoming forward messages,
  /// unpacks them, extracts attached messages, and routes them to the appropriate
  /// client based on the recipient DID.
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

  /// Stops all active connections and closes stream controllers.
  ///
  /// This method should be called when the mediator is no longer needed to
  /// properly clean up resources and close all active streams.
  Future<void> stopConnections() async {
    await requestController.close();

    for (final controller in responseControllers.values) {
      await controller.close();
    }
  }

  /// Registers a new client with this mediator.
  ///
  /// Creates a [MockMediatorDidcommClient] for the given DID manager and sets up
  /// the necessary stream controllers for bidirectional communication.
  ///
  /// [clientDidManager] The DID manager representing the client to be added.
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

    final client = MockMediatorDidcommClient(
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

/// A mock implementation of [MediatorDidcommClient] for testing purposes.
///
/// This class provides an in-memory implementation of a DIDComm client connected
/// to a [MockMediator]. Messages are sent and received through stream controllers
/// rather than over a network.
class MockMediatorDidcommClient extends MediatorDidcommClient {
  /// Stream controller for sending outgoing messages to the mediator.
  final StreamController<DidcommMessage> requestController;

  /// Stream for receiving incoming messages from the mediator.
  final Stream<Map<String, dynamic>> responseStream;

  /// Creates a new instance of [MockMediatorDidcommClient].
  ///
  /// [mediatorDidDocument] The DID document of the mediator.
  /// [didManager] The DID manager for this client.
  /// [keyPair] The key pair used for encryption/decryption.
  /// [didKeyId] The DID key identifier.
  /// [signer] The signer used for signing messages.
  /// [requestController] Stream controller for outgoing messages.
  /// [responseStream] Stream for incoming messages.
  MockMediatorDidcommClient({
    required super.mediatorDidDocument,
    required super.didManager,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    required this.requestController,
    required this.responseStream,
  });

  /// Sends a forward message through the mock mediator.
  ///
  /// Packs the message according to DIDComm specifications and adds it to
  /// the request stream for processing by the mediator.
  ///
  /// [message] The forward message to send.
  ///
  /// Returns the packed [DidcommMessage] that was sent.
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

  /// Listens for incoming messages from the mock mediator.
  ///
  /// Sets up a stream subscription that calls the provided callback whenever
  /// a message is received from the mediator.
  ///
  /// [onMessage] Callback function to handle received messages.
  /// [onError] Optional error handler for stream errors.
  /// [onDone] Optional callback when the stream closes.
  /// [cancelOnError] Whether to cancel the subscription on error.
  ///
  /// Returns a [StreamSubscription] that can be used to control the listener.
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
