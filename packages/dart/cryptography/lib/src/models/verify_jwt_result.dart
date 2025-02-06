/// Represents the result of JWT verification.
class VerifyJwtResult {
  /// Indicates whether the JWT is valid.
  final bool isValid;

  /// Indicates whether the JWT has expired.
  final bool isExpired;

  /// Error message if the JWT is invalid.
  final String? errorMessage;

  /// The payload of the JWT.
  final dynamic jwtPayload;

  /// Creates a new instance of [VerifyJwtResult].
  VerifyJwtResult({
    required this.isValid,
    required this.isExpired,
    required this.errorMessage,
    required this.jwtPayload,
  });
}
