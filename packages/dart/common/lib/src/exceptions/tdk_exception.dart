/// Exception thrown by the Affinidi TDK when an error occurs.
///
/// This exception provides detailed information about the error, including
/// a user-friendly message, an error code, and optionally the original error message.
class TdkException implements Exception {
  /// Creates a new [TdkException].
  ///
  /// The [message] is a user-friendly description of the error.
  /// The [code] is a unique identifier for the type of error.
  /// The [originalMessage] is an optional original error message.
  TdkException({
    required this.message,
    required this.code,
    this.originalMessage,
  });

  /// A user-friendly description of the error.
  final String message;

  /// A unique identifier for the type of error.
  final String code;

  /// The original error message.
  final String? originalMessage;

  @override
  String toString() {
    if (originalMessage != null) {
      return 'TdkException: $message, code: $code, originalMessage: $originalMessage';
    }
    return 'TdkException: $message, code: $code';
  }
}
