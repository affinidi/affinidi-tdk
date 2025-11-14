import 'dart:async';

import 'package:affinidi_tdk_didcomm_mediator_client/affinidi_tdk_didcomm_mediator_client.dart';
import 'package:ssi/ssi.dart';
import 'package:uuid/uuid.dart';

abstract class DidcommServiceClient extends DidcommMediatorClient {
  final DidDocument serviceDidDocument;

  final _pendingRequests = <String, Completer<PlainTextMessage>>{};

  DidcommServiceClient({
    required super.didManager,
    required super.clientOptions,
    required this.serviceDidDocument,
    required super.mediatorDidDocument,
    required super.authorizationProvider,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
  }) {
    _linkRequestsAndResponses(
      serviceDidDocument: serviceDidDocument,
    );
  }

  Future<PlainTextMessage> waitForMessage({
    required String threadId,
  }) async {
    final completer = Completer<PlainTextMessage>();
    _pendingRequests[threadId] = completer;

    return completer.future.timeout(clientOptions.requestTimeout);
  }

  Future<PlainTextMessage> sendServiceMessage(
    PlainTextMessage requestMessage,
  ) async {
    final responseMessageFuture = waitForMessage(
      threadId: requestMessage.id,
    );

    await packAndSendMessage(requestMessage);
    return await responseMessageFuture;
  }

  Future<void> configureAcl() async {
    final ownDidDocument = await didManager.getDidDocument();

    final accessListAddMessage = AccessListAddMessage(
      id: const Uuid().v4(),
      from: ownDidDocument.id,
      to: [mediatorDidDocument.id],
      theirDids: [serviceDidDocument.id],
      expiresTime: DateTime.now().add(clientOptions.messageExpiration),
    );

    await sendAclManagementMessage(
      accessListAddMessage,
    );
  }

  void _linkRequestsAndResponses({
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
