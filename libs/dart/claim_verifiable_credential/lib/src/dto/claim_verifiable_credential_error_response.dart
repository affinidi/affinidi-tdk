/// A class representing the error response for claiming a verifiable credential.
///
/// This class is used to parse and handle error responses that occur during
/// the process of claiming a verifiable credential.
///
/// - [error] (required) - specify error that occurred
/// - [errorDescription] (optional) - a human-readable description of the error
///
/// Example usage:
/// ```dart
/// final errorResponse = ClaimVerifiableCredentialErrorResponse.fromJson(json);
/// ```
class ClaimVerifiableCredentialErrorResponse {
  /// Constructor to create an instance of [ClaimVerifiableCredentialErrorResponse].
  ///
  /// - [error] (required) - specify error that occurred
  /// - [errorDescription] (optional) - a human-readable description of the error
  ///
  /// Example usage:
  /// ```dart
  /// final errorResponse = ClaimVerifiableCredentialErrorResponse(
  ///   error: 'invalid_request',
  ///   errorDescription: 'Invalid request parameters',
  /// );
  /// ```
  ClaimVerifiableCredentialErrorResponse(
      {required this.error, this.errorDescription});

  /// error type that occurred
  final String error;

  /// human-readable description of the error
  final String? errorDescription;

  /// Creates an instance of [ClaimVerifiableCredentialErrorResponse] from a JSON object.
  factory ClaimVerifiableCredentialErrorResponse.fromJson(
      Map<String, dynamic> json) {
    return ClaimVerifiableCredentialErrorResponse(
      error: json['error'] as String,
      errorDescription: json['error_description'] as String?,
    );
  }
}
