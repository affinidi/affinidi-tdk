/// A class representing the error response for claiming a credential access token.
///
/// This class is used to parse and handle error responses that occur during
/// the process of obtaining an access token for claiming a credential.
///
/// - [error] (required) - specify error that occurred
/// - [errorDescription] (optional) - a human-readable description of the error
///
/// Example usage:
/// ```dart
/// final errorResponse = ClaimCredentialAccessTokenErrorResponse.fromJson(json);
/// ```
class ClaimCredentialAccessTokenErrorResponse {
  /// Constructor to create an instance of [ClaimCredentialAccessTokenErrorResponse].
  ///
  /// - [error] (required) - specify error that occurred
  /// - [errorDescription] (optional) - a human-readable description of the error
  ///
  /// Example usage:
  /// ```dart
  /// final errorResponse = ClaimCredentialAccessTokenErrorResponse(
  ///   error: 'invalid_request',
  ///   errorDescription: 'Invalid request parameters',
  /// );
  /// ```
  ClaimCredentialAccessTokenErrorResponse(
      {required this.error, this.errorDescription});

  /// error type that occurred
  final String error;

  /// human-readable description of the error
  final String? errorDescription;

  /// Creates an instance of [ClaimCredentialAccessTokenErrorResponse] from a JSON object.
  factory ClaimCredentialAccessTokenErrorResponse.fromJson(
      Map<String, dynamic> json) {
    return ClaimCredentialAccessTokenErrorResponse(
      error: json['error'] as String,
      errorDescription: json['error_description'] as String?,
    );
  }
}
