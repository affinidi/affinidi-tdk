import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../common/client_options.dart';

/// A DIDComm v2 client for interacting with a mediator service using DID-based secure messaging.
///
/// Extends [MediatorClient] to provide:
/// - DID and key management for secure communication
/// - Packing and sending encrypted messages to a mediator or recipient
/// - Request/response linking with timeouts and error handling
/// - Flexible configuration via [ClientOptions]
///
/// Example usage:
/// ```dart
/// final client = await DidcommMediatorClient.init(
///   didManager: myDidManager,
///   mediatorDidDocument: mediatorDoc,
/// );
/// await client.packAndSendMessage(message: myMessage);
/// final response = await client.waitForMessage(threadId: myThreadId);
/// ```
class DidcommMediatorClient extends MediatorClient {
  /// The DID manager for managing DIDs and keys.
  final DidManager didManager;

  /// The client options for configuring timeouts and message forwarding.
  final ClientOptions clientOptions;

  final _pendingRequests = <String, Completer<PlainTextMessage>>{};

  /// Creates a [DidcommMediatorClient] instance.
  DidcommMediatorClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    required this.didManager,
    this.clientOptions = const ClientOptions(),
    super.authorizationProvider,
    super.forwardMessageOptions,
    super.webSocketOptions,
  });

  /// Initializes a [DidcommMediatorClient] asynchronously.
  ///
  /// [didManager] is required for DID operations.
  /// [mediatorDidDocument] is the mediator's DID document.
  /// [authorizationProvider] is optional.
  /// [clientOptions] configures timeouts and forwarding.
  static Future<DidcommMediatorClient> init({
    required DidManager didManager,
    required DidDocument mediatorDidDocument,
    AuthorizationProvider? authorizationProvider,
    ClientOptions clientOptions = const ClientOptions(),
  }) async {
    final tmpParent = await MediatorClient.init(
      mediatorDidDocument: mediatorDidDocument,
      didManager: didManager,
    );

    return DidcommMediatorClient(
      didManager: didManager,
      clientOptions: clientOptions,
      mediatorDidDocument: mediatorDidDocument,
      keyPair: tmpParent.keyPair,
      didKeyId: tmpParent.didKeyId,
      signer: tmpParent.signer,
      authorizationProvider: authorizationProvider,
      forwardMessageOptions: clientOptions.forwardMessageOptions,
      webSocketOptions: clientOptions.webSocketOptions,
    );
  }

  /// Waits for a message with the given [threadId].
  /// Returns a [PlainTextMessage] when received or throws on timeout.
  Future<PlainTextMessage> waitForMessage({
    required String threadId,
  }) async {
    final completer = Completer<PlainTextMessage>();
    _pendingRequests[threadId] = completer;

    return completer.future.timeout(clientOptions.requestTimeout);
  }

  /// Packs and sends a [PlainTextMessage] to the mediator and recipient.
  /// Throws if the message is invalid or recipient cannot be resolved.
  Future<void> packAndSendMessage(
    PlainTextMessage message,
  ) async {
    if (message.to == null) {
      throw ArgumentError.notNull('message.to');
    }

    if (message.to!.length > 1) {
      throw UnsupportedError(
        'Only one recipient is supported at this moment. Please update message.to header accordingly.',
      );
    }

    if (message.from != null) {
      throw ArgumentError(
        'message.from must be null. It will be filled automatically.',
        'message.from',
      );
    }

    final senderDidDocument = await didManager.getDidDocument();

    final recipientDidDocument =
        await UniversalDIDResolver.defaultResolver.resolveDid(
      message.to!.first,
    );

    final matchedKeyPairs = senderDidDocument.matchKeysInKeyAgreement(
      otherDidDocuments: [
        recipientDidDocument,
      ],
    );

    if (matchedKeyPairs.isEmpty) {
      throw Exception(
        'No matching key agreement keys found for the mediator and the recipient.',
      );
    }

    final senderDidKeyId = matchedKeyPairs.first;

    // TODO: add configuration for envelope type
    final packed = await DidcommMessage.packIntoEncryptedMessage(
      PlainTextMessage.fromJson({
        ...message.toJson(),
        'from': senderDidDocument.id,
      }),
      recipientDidDocuments: [recipientDidDocument],
      // TODO: move to configuration
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      keyPair: await didManager.getKeyPairByDidKeyId(senderDidKeyId),
      didKeyId: senderDidKeyId,
    );

    final forwardMessageOptions = clientOptions.forwardMessageOptions;

    final forwardFrom = forwardMessageOptions.shouldEncrypt &&
            forwardMessageOptions.keyWrappingAlgorithm ==
                KeyWrappingAlgorithm.ecdh1Pu
        ? senderDidDocument.id
        : null;

    final forwardMessage = ForwardMessage(
      id: const Uuid().v4(),
      to: [mediatorDidDocument.id],
      from: forwardFrom,
      next: recipientDidDocument.id,
      expiresTime: DateTime.now().toUtc().add(
            clientOptions.messageExpiration,
          ),
      attachments: [
        Attachment(
          mediaType: 'application/json',
          data: AttachmentData(
            base64: base64UrlEncodeNoPadding(
              packed.toJsonBytes(),
            ),
          ),
        ),
      ],
    );

    await sendMessage(
      forwardMessage,
    );
  }

  // TODO: run it by default in the constructor
  /// Links requests and responses by listening for incoming messages.
  /// Handles problem reports and matches responses to pending requests.
  /// [serviceDidDocument] is used to validate sender.
  void linkRequestsAndResponses({
    required DidDocument serviceDidDocument,
  }) {
    listenForIncomingMessages(
      (message) async {
        final unpackedMessage = await DidcommMessage.unpackToPlainTextMessage(
          message: message,
          recipientDidManager: didManager,
          expectedMessageWrappingTypes: [
            MessageWrappingType.authcryptSignPlaintext,
            MessageWrappingType.anoncryptSignPlaintext,
          ],
        );

        final expectedSenders = [
          mediatorDidDocument.id,
          serviceDidDocument.id,
        ];

        if (!expectedSenders.contains(unpackedMessage.from)) {
          return;
        }

        if (unpackedMessage.type == ProblemReportMessage.messageType) {
          _handleProblemReport(unpackedMessage);
          return;
        }

        final threadId = unpackedMessage.threadId;
        if (threadId == null || !_pendingRequests.containsKey(threadId)) {
          return;
        }

        final completer = _pendingRequests[threadId]!;

        if (unpackedMessage.from != serviceDidDocument.id) {
          return;
        }

        _pendingRequests.remove(threadId);
        completer.complete(unpackedMessage);
      },
      onError: (Object error) {
        for (var completer in _pendingRequests.values) {
          completer.completeError(error);
        }
        _pendingRequests.clear();
      },
      onDone: ({int? closeCode, String? closeReason}) {
        for (var completer in _pendingRequests.values) {
          completer.completeError(Exception('Connection has been dropped'));
        }
        _pendingRequests.clear();
      },
    );
  }

  /// Handles incoming problem reports and completes the corresponding pending request with an error.
  void _handleProblemReport(PlainTextMessage problemMessage) {
    final problemReport =
        ProblemReportMessage.fromJson(problemMessage.toJson());

    final parentThreadId = problemReport.parentThreadId;
    if (parentThreadId == null) {
      throw ArgumentError('ProblemReport missing parentThreadId');
    }

    if (_pendingRequests.containsKey(parentThreadId)) {
      final completer = _pendingRequests.remove(parentThreadId)!;
      completer.completeError(problemReport);
    }
  }
}
