import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

import '../common/client_options.dart';

class DidcommMediatorClient extends MediatorClient {
  final AuthorizationProvider authorizationProvider;
  final DidManager didManager;
  final ClientOptions clientOptions;

  final _pendingRequests = <String, Completer<PlainTextMessage>>{};

  DidcommMediatorClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    required this.authorizationProvider,
    required this.didManager,
    required this.clientOptions,
    super.forwardMessageOptions,
    super.webSocketOptions,
  });

  Future<PlainTextMessage> waitForMessage({
    required String threadId,
  }) async {
    final completer = Completer<PlainTextMessage>();
    _pendingRequests[threadId] = completer;

    return completer.future.timeout(clientOptions.requestTimeout);
  }

  Future<void> packAndSendMessage({
    required PlainTextMessage message,
  }) async {
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

    final matchedKeyPairs =
        senderDidDocument.matchKeysInKeyAgreement(otherDidDocuments: [
      mediatorDidDocument,
      recipientDidDocument,
    ]);

    if (matchedKeyPairs.isEmpty) {
      throw Exception(
        'No matching key agreement keys found for the mediator and the recipient.',
      );
    }

    final senderDidKeyId = matchedKeyPairs.first;

    final packed = await DidcommMessage.packIntoEncryptedMessage(
      PlainTextMessage.fromJson({
        ...message.toJson(),
        'from': senderDidDocument.id,
      }),
      recipientDidDocuments: [recipientDidDocument],
      keyWrappingAlgorithm: KeyWrappingAlgorithm.ecdh1Pu,
      encryptionAlgorithm: EncryptionAlgorithm.a256cbc,
      keyPair: await didManager.getKeyPairByDidKeyId(senderDidKeyId),
      didKeyId: senderDidKeyId,
    );

    final forwardMessage = ForwardMessage(
      id: const Uuid().v4(),
      to: [mediatorDidDocument.id],
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
