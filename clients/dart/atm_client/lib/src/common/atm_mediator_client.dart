import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../common/client_options.dart';

class AtmMediatorClient extends MediatorClient {
  final _pendingRequests = <String, Completer<PlainTextMessage>>{};
  StreamSubscription? _subscription;
  Future<void>? _lock;

  AtmMediatorClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    super.forwardMessageOptions,
    super.webSocketOptions,
  });

  Future<PlainTextMessage> waitForMessage({
    required String threadId,
    required String accessToken,
    required DidManager didManager,
    required DidDocument atmServiceDidDocument,
    required ClientOptions clientOptions,
  }) async {
    final completer = Completer<PlainTextMessage>();

    _pendingRequests[threadId] = completer;

    await _handleSubscription(
      didManager: didManager,
      accessToken: accessToken,
      atmServiceDidDocument: atmServiceDidDocument,
      clientOptions: clientOptions,
    );

    return completer.future.timeout(clientOptions.requestTimeout);
  }

  Future<StreamSubscription> listenForIncomingMessagesAndFetchMissing(
    void Function(Map<String, dynamic>) onMessage, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
    String? accessToken,
  }) async {
    final controller = StreamController<Map<String, dynamic>>();

    final mediatorSubscription = await listenForIncomingMessages(
      controller.add,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
      accessToken: accessToken,
    );

    controller.onPause = mediatorSubscription.pause;
    controller.onResume = mediatorSubscription.resume;
    controller.onCancel = mediatorSubscription.cancel;

    final controllerSubscription = controller.stream.listen(onMessage);

    // we need to return subscription ASAP so we fetch missing messages on background
    unawaited(
      fetchMessagesStartingFrom(
        accessToken: accessToken,
      ).then((messages) {
        for (final message in messages) {
          controller.add(message);
        }
      }).catchError((Object error) async {
        controller.addError(error);
      }),
    );

    return controllerSubscription;
  }

  Future<void> _handleSubscription({
    required DidManager didManager,
    required String accessToken,
    required DidDocument atmServiceDidDocument,
    required ClientOptions clientOptions,
  }) async {
    if (_lock != null) {
      await _lock;
    }

    if (_subscription != null) {
      return;
    }

    _subscription = await listenForIncomingMessages(
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
          atmServiceDidDocument.id,
        ];

        if (!expectedSenders.contains(unpackedMessage.from)) {
          return;
        }

        final messageType = unpackedMessage.type.toString();

        if (messageType ==
            'https://didcomm.org/report-problem/2.0/problem-report') {
          _handleProblemReport(unpackedMessage);
          return;
        }

        final threadId = unpackedMessage.threadId;
        if (threadId == null || !_pendingRequests.containsKey(threadId)) {
          return;
        }

        final completer = _pendingRequests[threadId]!;

        if (unpackedMessage.from != atmServiceDidDocument.id) {
          return;
        }

        _pendingRequests.remove(threadId);
        completer.complete(unpackedMessage);
        if (_pendingRequests.isEmpty) {
          _subscription = null;
          _lock = disconnect();
          await _lock;
          _lock = null;
        }
      },
      onError: (Object error) {
        for (var completer in _pendingRequests.values) {
          completer.completeError(error);
        }
        _pendingRequests.clear();
        _subscription = null;
      },
      onDone: () {
        for (var completer in _pendingRequests.values) {
          completer.completeError(Exception('Connection has been dropped'));
        }
        _pendingRequests.clear();
        _subscription = null;
      },
      accessToken: accessToken,
      cancelOnError: false,
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
      if (_pendingRequests.isEmpty) {
        _subscription = null;
        _lock = disconnect();
        _lock?.then((_) => _lock = null);
      }
    }
  }
}
