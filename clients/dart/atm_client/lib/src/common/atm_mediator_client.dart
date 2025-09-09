import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';
import 'package:ssi/ssi.dart';

import '../../atm_client.dart';
import 'pending_request.dart';

class AtmMediatorClient extends MediatorClient {
  final _pendingRequests = <String, PendingRequest>{};
  final _legacyFallbackMap = <String, PendingRequest>{};
  final _metrics = ThreadingMetrics();
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

  /// Get threading metrics.
  ThreadingMetrics get metrics => _metrics;

  Future<PlainTextMessage> waitForMessage({
    required String messageType,
    required String threadId,
    required String fromDid,
    required String accessToken,
    required DidManager didManager,
    required DidDocument atmServiceDidDocument,
    required ClientOptions clientOptions,
  }) async {
    final completer = Completer<PlainTextMessage>();
    final timeoutAt = DateTime.now().add(clientOptions.requestTimeout);

    final pendingRequest = PendingRequest(
      expectedResponseType: messageType,
      fromDid: fromDid,
      completer: completer,
      timeoutAt: timeoutAt,
    );

    // Track by threadId if threading is enabled
    if (clientOptions.preferThreading) {
      _pendingRequests[threadId] = pendingRequest;

      // Also add to legacy fallback map for backward compatibility
      final legacyKey = '$messageType:$fromDid';
      _legacyFallbackMap[legacyKey] = pendingRequest;
    } else {
      // Legacy mode: only use type:from correlation
      final legacyKey = '$messageType:$fromDid';
      _legacyFallbackMap[legacyKey] = pendingRequest;
    }

    await _handleSubscription(
      didManager: didManager,
      accessToken: accessToken,
      atmServiceDidDocument: atmServiceDidDocument,
      clientOptions: clientOptions,
    );

    return completer.future.timeout(clientOptions.requestTimeout);
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

        // Handle problem reports
        if (messageType ==
            'https://didcomm.org/report-problem/2.0/problem-report') {
          _handleProblemReport(
            unpackedMessage,
            clientOptions,
          );
          return;
        }

        // Try to correlate by threadId first
        final threadId = unpackedMessage.threadId;
        PendingRequest? pendingRequest;

        if (threadId != null && _pendingRequests.containsKey(threadId)) {
          // Found by threadId
          pendingRequest = _pendingRequests[threadId];
          if (clientOptions.enableThreadingMetrics) {
            _metrics.incrementWithThreadId();
          }
        } else {
          // Try legacy fallback
          final legacyKey = '$messageType:${unpackedMessage.from}';
          if (_legacyFallbackMap.containsKey(legacyKey)) {
            pendingRequest = _legacyFallbackMap[legacyKey];
            if (clientOptions.enableThreadingMetrics) {
              _metrics.incrementWithoutThreadId();
              _metrics.incrementLegacyFallback();
            }
            // TODO: Log deprecation warning with proper logging framework
            // '[DEPRECATION] Response without threadId received. Using legacy {type, from} fallback.'
          }
        }

        if (pendingRequest == null) {
          return;
        }

        // Validate response type and sender
        if (messageType != pendingRequest.expectedResponseType) {
          return;
        }

        if (unpackedMessage.from != pendingRequest.fromDid) {
          return;
        }

        // Clean up pending requests
        if (threadId != null) {
          _pendingRequests.remove(threadId);
        }
        final legacyKey = '$messageType:${unpackedMessage.from}';
        _legacyFallbackMap.remove(legacyKey);

        // Complete the request
        pendingRequest.completer.complete(unpackedMessage);

        // Disconnect if no more pending requests
        if (_pendingRequests.isEmpty && _legacyFallbackMap.isEmpty) {
          _subscription = null;
          _lock = disconnect();
          await _lock;
          _lock = null;
        }
      },
      onError: (Object error) {
        // Complete all pending requests with error
        for (var request in _pendingRequests.values) {
          request.completer.completeError(error);
        }
        for (var request in _legacyFallbackMap.values) {
          if (!request.completer.isCompleted) {
            request.completer.completeError(error);
          }
        }
        _pendingRequests.clear();
        _legacyFallbackMap.clear();
      },
      onDone: () {
        for (var request in _pendingRequests.values) {
          request.completer
              .completeError(Exception('Connection has been dropped'));
        }
        for (var request in _legacyFallbackMap.values) {
          if (!request.completer.isCompleted) {
            request.completer
                .completeError(Exception('Connection has been dropped'));
          }
        }
        _pendingRequests.clear();
        _legacyFallbackMap.clear();
      },
      accessToken: accessToken,
      cancelOnError: false,
    );
  }

  void _handleProblemReport(
    PlainTextMessage problemMessage,
    ClientOptions clientOptions,
  ) {
    final problemReport =
        ProblemReportMessage.fromJson(problemMessage.toJson());

    // Get problem details from body
    final body = problemReport.body;
    final code = body?['code'] as String? ?? 'unknown';
    final comment = body?['comment'] as String?;

    final exception = AtmProblemReport(
      code: code,
      comment: comment,
      acknowledgedIds: problemReport.acknowledged,
      fullMessage: problemMessage,
    );

    // Find the request by parentThreadId
    final parentThreadId = problemReport.parentThreadId;
    if (parentThreadId != null &&
        _pendingRequests.containsKey(parentThreadId)) {
      final pendingRequest = _pendingRequests[parentThreadId]!;

      // Clean up
      _pendingRequests.remove(parentThreadId);
      final legacyKey =
          '${pendingRequest.expectedResponseType}:${pendingRequest.fromDid}';
      _legacyFallbackMap.remove(legacyKey);

      // Reject with problem report
      pendingRequest.completer.completeError(exception);

      // Disconnect if no more pending
      if (_pendingRequests.isEmpty && _legacyFallbackMap.isEmpty) {
        _subscription = null;
        _lock = disconnect();
        _lock?.then((_) => _lock = null);
      }
    } else {
      // If no parentThreadId or not found, try to match by acknowledged IDs
      final ackIds = problemReport.acknowledged;
      if (ackIds != null && ackIds.isNotEmpty) {
        final ackedId = ackIds.first;
        if (_pendingRequests.containsKey(ackedId)) {
          final pendingRequest = _pendingRequests[ackedId]!;

          // Clean up
          _pendingRequests.remove(ackedId);
          final legacyKey =
              '${pendingRequest.expectedResponseType}:${pendingRequest.fromDid}';
          _legacyFallbackMap.remove(legacyKey);

          // Reject with problem report
          pendingRequest.completer.completeError(exception);

          // Disconnect if no more pending
          if (_pendingRequests.isEmpty && _legacyFallbackMap.isEmpty) {
            _subscription = null;
            _lock = disconnect();
            _lock?.then((_) => _lock = null);
          }
        }
      }
    }
  }
}
