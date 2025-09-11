import 'dart:async';

import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

/// Tracks a pending request awaiting a response.
class PendingRequest {
  /// The expected response type for this request.
  final String expectedResponseType;

  /// The DID of the expected sender (Atlas).
  final String fromDid;

  /// The completer to resolve when response arrives.
  final Completer<PlainTextMessage> completer;

  /// When this request should timeout.
  final DateTime timeoutAt;

  PendingRequest({
    required this.expectedResponseType,
    required this.fromDid,
    required this.completer,
    required this.timeoutAt,
  });
}
