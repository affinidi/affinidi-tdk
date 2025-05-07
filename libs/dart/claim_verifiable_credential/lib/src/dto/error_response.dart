import '../exceptions/tdk_exception_type.dart';

/// Represents an error response with details about the error type, message, and additional information.
///
/// ### Example Usage:
/// ```dart
/// final errorResponse = ErrorResponse.fromJson({
///   'name': 'invalidParameter',
///   'message': 'An error occurred',
///   'details': [
///     {'issue': 'Invalid issuance id'}
///   ],
/// });
/// ```
class ErrorResponse {
  /// Constructor to create an instance of [ErrorResponse]
  ///
  /// - [type] (optional) -  type of the error, represented by the `TdkExceptionType` enum. Defaults to `TdkExceptionType.other`.
  /// - [message] (required) - descriptive message about the error
  /// - [details] (optional) - list of additional details about the error
  ///
  /// ### Example Usage:
  /// ```dart
  /// final errorResponse = ErrorResponse(
  ///   name: 'invalidParameter',
  ///   message: 'An error occurred',
  ///   details: [
  ///     {'issue': 'Invalid issuance id'}
  ///   ],
  /// );
  /// ```
  ErrorResponse({
    this.type = TdkExceptionType.other,
    required this.message,
    this.details = const [],
  });

  /// The type of the error, represented by the `TdkExceptionType` enum.
  final TdkExceptionType type;

  /// A descriptive message about the error.
  final String? message;

  /// A list of additional details about the error.
  final List<String> details;

  /// Creates an instance of [ErrorResponse] from a JSON object.
  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    final type = TdkExceptionType.fromJson(json['name'] as String?);
    final issues = (json['details'] != null && json['details'] is List)
        ? json['details'] as List<dynamic>
        : <dynamic>[];
    final details = issues
        .map((issue) => (issue as Map<String, dynamic>)['issue'] as String)
        .toList();

    if (type == TdkExceptionType.invalidParameter &&
        details.contains('Invalid issuance id')) {
      return ErrorResponse(
        type: TdkExceptionType.failedToLoadCredentialOffer,
        message: 'Failed to load credential offer',
      );
    }

    if (type == TdkExceptionType.invalidCredentialRequest &&
        details.contains('Credential offer has been expired.')) {
      return ErrorResponse(
        type: TdkExceptionType.credentialOfferExpired,
        message: 'Credential offer has been expired',
      );
    }

    return ErrorResponse(
      type: TdkExceptionType.fromJson(json['name'] as String?),
      message: json['message'] as String?,
    );
  }
}
