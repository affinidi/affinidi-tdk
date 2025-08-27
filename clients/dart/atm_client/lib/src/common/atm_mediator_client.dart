import 'dart:async';

import 'package:mediator_client/mediator_client.dart';
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

        if (unpackedMessage.from != atmServiceDidDocument.id) {
          return;
        }

        final messageType = unpackedMessage.type.toString();
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
          completer.completeError(error);
        }
      },
      onDone: () {
        for (var completer in _awaitingCompleters.values) {
          completer.completeError(Exception('Connection has been dropped'));
        }
      },
      accessToken: accessToken,
      cancelOnError: false,
    );
  }
}
