/// Result of validating a holder token during browser context switch.
///
/// Contains detailed information about each validation check performed
/// on the JWT token.
class TokenValidationResult {
  /// Overall validation result - true if all checks pass.
  final bool isValid;

  /// Whether the token signature could be verified using the holder's DID document.
  final bool isSignatureValid;

  /// Whether the token iss/sub claims match the expected holder DID.
  final bool isDidValid;

  /// Whether the nonce in the token matches the expected value.
  final bool isNonceValid;

  /// Whether the threadId in the token matches the expected value.
  final bool isThreadIdValid;

  /// Whether the token has not expired based on the exp claim.
  final bool isExpirationValid;

  /// The nonce value extracted from the token.
  final String nonce;

  /// Error message if validation failed (null if successful).
  final String? error;

  /// Creates a new [TokenValidationResult] with the provided validation details.
  const TokenValidationResult({
    required this.isValid,
    required this.isSignatureValid,
    required this.isDidValid,
    required this.isNonceValid,
    required this.isThreadIdValid,
    required this.isExpirationValid,
    required this.nonce,
    this.error,
  });
}
