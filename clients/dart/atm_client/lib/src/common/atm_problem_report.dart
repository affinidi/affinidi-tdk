import 'package:affinidi_tdk_mediator_client/mediator_client.dart';

/// Exception representing a DIDComm problem report.
class AtmProblemReport implements Exception {
  /// The problem code.
  final String code;

  /// Optional human-readable comment.
  final String? comment;

  /// Message IDs that were acknowledged.
  final List<String>? acknowledgedIds;

  /// The complete problem report message.
  final PlainTextMessage? fullMessage;

  AtmProblemReport({
    required this.code,
    this.comment,
    this.acknowledgedIds,
    this.fullMessage,
  });

  @override
  String toString() {
    final parts = ['AtmProblemReport: $code'];
    if (comment != null) {
      parts.add('Comment: $comment');
    }
    if (acknowledgedIds != null && acknowledgedIds!.isNotEmpty) {
      parts.add('Acknowledged: ${acknowledgedIds!.join(', ')}');
    }
    return parts.join('. ');
  }
}
