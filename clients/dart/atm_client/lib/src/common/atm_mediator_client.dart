import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../atm_client.dart';

// TODO: add unit tests
class AtmMediatorClient extends MediatorClient {
  final _awaitingCompleters = <String, Completer<PlainTextMessage>>{};
  StreamSubscription? _subscription;
  Future? _lock;

  AtmMediatorClient({
    required super.mediatorDidDocument,
    required super.keyPair,
    required super.didKeyId,
    required super.signer,
    super.forwardMessageOptions,
    super.webSocketOptions,
  });

  Future<PlainTextMessage> waitForMessage({
    // TODO: use parent ID instead when available on DIDComm Gateway
    required String messageType,
    required String accessToken,
    required DidManager didManager,
    required DidDocument atmServiceDidDocument,
    required ClientOptions clientOptions,
  }) async {
    final completer = Completer<PlainTextMessage>();
    _awaitingCompleters[messageType] = completer;

    await _handleSubscription(
      didManager: didManager,
      accessToken: accessToken,
      atmServiceDidDocument: atmServiceDidDocument,
    );

    return completer.future.timeout(clientOptions.requestTimeout);
  }

  Future<void> _handleSubscription({
    required DidManager didManager,
    required String accessToken,
    required DidDocument atmServiceDidDocument,
  }) async {
    if (_lock != null) {
      await _lock;
    }

    if (_subscription != null) {
      return;
    }

    // TODO: update DIDComm Dart package to terminate the current websockets channel
    // when calling listenForIncomingMessages
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

        // TODO: make type URLs static in DIDComm package to avoid this
        // TODO: use correlation IDs when available so we process a specific request/response pair

        if (messageType ==
            'https://didcomm.org/report-problem/2.0/problem-report') {
          final problemReport = ProblemReportMessage.fromJson(
            unpackedMessage.toJson(),
          );

          for (var completer in _awaitingCompleters.values) {
            // TODO: revisit, if we should throw an exception with problem report inside?
            completer.completeError(problemReport);
          }

          // TODO: temporary untile we have correlation IDs
          // ---
          _awaitingCompleters.clear();

          _subscription = null;
          _lock = disconnect();

          // prevent new subscriptions while disconnecting
          await _lock;
          _lock = null;
          // ---
        }

        final completer = _awaitingCompleters[messageType];

        if (completer == null) {
          return;
        }

        _awaitingCompleters.remove(messageType);
        completer.complete(unpackedMessage);

        if (_awaitingCompleters.isEmpty) {
          _subscription = null;
          _lock = disconnect();

          // prevent new subscriptions while disconnecting
          await _lock;
          _lock = null;
        }
      },
      onError: (Object error) {
        // TODO: decide if remove all completers or just the relevant one
        for (var completer in _awaitingCompleters.values) {
          // TODO: decide if we should delete massage on mediator
          completer.completeError(error);
        }
      },
      onDone: () {
        for (var completer in _awaitingCompleters.values) {
          // TODO: decide if we should delete massage on mediator
          completer.completeError(Exception('Connection has been dropped'));
        }
      },
      accessToken: accessToken,
      cancelOnError: false,
    );
  }
}
