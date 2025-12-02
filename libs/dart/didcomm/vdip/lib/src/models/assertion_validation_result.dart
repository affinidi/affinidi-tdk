/// Result of validating holder's assertion
///
/// Contains detailed information about each validation check performed
/// on the JWT token.
class AssertionValidationResult {
  /// Overall validation result - true if all checks pass.
  final bool isValid;

  /// Whether the token signature could be verified using the holder's DID document.
  final bool isSignatureValid;

  /// Whether the token iss claim match the expected holder DID.
  final bool isIssuerValid;

  /// Whether the token sub claim match the expected holder DID.
  final bool isSubjectValid;

  /// Whether the proposalId in the token matches the expected value.
  final bool isProposalValid;

  /// Whether the audience in the token matches the expected value.
  final bool isAudienceValid;

  /// Whether the token has not expired based on the exp claim.
  final bool isExpirationValid;

  /// Error message if validation failed (null if successful).
  final String? error;

  /// Creates new [AssertionValidationResult] with the provided validation details.
  const AssertionValidationResult({
    required this.isValid,
    required this.isSignatureValid,
    required this.isIssuerValid,
    required this.isSubjectValid,
    required this.isProposalValid,
    required this.isAudienceValid,
    required this.isExpirationValid,
    this.error,
  });
}
