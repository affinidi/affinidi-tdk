import '../exceptions/tdk_exception_type.dart';

/// A class representing an error response.
///
/// - [type] (optional) - type of the exception, represented by [TdkExceptionType].
///   Defaults to [TdkExceptionType.other].
/// - [message] (required) - error message providing additional details about
///   the error.
class ErrorResponse {
  /// Constructor to create [ErrorResponse] instance
  ///
  /// - [type] (optional) - type of the exception, represented by [TdkExceptionType].
  ///   Defaults to [TdkExceptionType.other].
  /// - [message] (required) - error message providing additional details about
  ///   the error.
  ErrorResponse({
    this.type = TdkExceptionType.other,
    required this.message,
  });

  /// Type of the exception, represented by [TdkExceptionType]
  final TdkExceptionType type;

  /// Error message providing additional details about the error.
  final String? message;

  /// Factory constructor that creates an instance of [ErrorResponse] from a JSON map.
  ///
  /// - [json] -`Map<String, dynamic>` that represents the JSON structure
  /// to be parsed into an [ErrorResponse] object.
  factory ErrorResponse.fromJson(Map<String, dynamic> json) {
    return ErrorResponse(
      type: TdkExceptionType.fromJson(json['name'] as String?),
      message: json['message'] as String?,
    );
  }
}
