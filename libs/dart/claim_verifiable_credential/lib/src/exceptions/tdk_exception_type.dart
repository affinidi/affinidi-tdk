/// Enum representing different types of exceptions that can occur in this package.
///
/// - [credentialOfferClaimed] - indicates that the credential offer has already been claimed.
/// - [expiredToken] - indicates that the access token has expired.
/// - [credentialOfferExpired] - indicates that the credential offer has expired.
/// - [failedToClaimCredential] - represents a failure to claim a credential.
/// - [failedToLoadCredentialOffer] - indicates a failure to load the credential offer.
/// - [failedToLoadIssuerMetadata] - represents a failure to load issuer metadata.
/// - [invalidCredentialProof] - indicates that the proof in the credential request is invalid.
/// - [invalidCredentialRequest] - represents an invalid credential request error.
/// - [invalidParameter] - indicates an invalid parameter error.
/// - [missingUri] - indicates that a required URI is missing.
/// - [networkError] - indicates a network-related error.
/// - [other] - represents any other unspecified error.
/// - [serverError] - represents a server-side error.
/// - [unmatchedTxCode] - represents an unmatched transaction code error.
///
/// Each exception type has the following properties:
/// - [jsonValue] - string representation of the exception type used for JSON serialization.
/// - [code] - string code that uniquely identifies the exception type.
enum TdkExceptionType {
  /// Indicates that the credential offer has already been claimed.
  credentialOfferClaimed(
      'CredentialOfferClaimedError', 'credential_offer_claimed'),

  /// Indicates that the credential offer has expired.
  credentialOfferExpired(
      'CredentialOfferExpiredError', 'credential_offer_expired'),

  /// Indicates the proof in the credential request is invalid.
  invalidCredentialProof('InvalidCredentialProof', 'invalid_credential_proof'),

  /// Represents an invalid credential request error.
  invalidCredentialRequest(
      'InvalidCredentialRequestError', 'invalid_credential_request'),

  /// Indicates that the access token has expired.
  expiredToken('ExpiredTokenError', 'expired_token'),

  /// Represents a failure to claim a credential.
  failedToClaimCredential(
      'FailedToClaimCredential', 'failed_to_claim_credential'),

  /// Indicates a failure to load the credential offer.
  failedToLoadCredentialOffer(
      'FailedToLoadCredentialOffer', 'failed_to_load_credential_offer'),

  /// Represents a failure to load issuer metadata.
  failedToLoadIssuerMetadata(
      'FailedToLoadIssuerMetadata', 'failed_to_load_issuer_metadata'),

  /// Indicates an invalid parameter error.
  invalidParameter('InvalidParameterError', 'invalid_parameter'),

  /// Indicates that a required URI is missing.
  missingUri('MissingUri', 'missing_uri'),

  /// Indicates a network-related error.
  networkError('NetworkError', 'network_error'),

  /// Represents unspecified error.
  other('Other', 'other'),

  /// Represents a server-side error.
  serverError('serverError', 'server_error'),

  /// Represents an unmatched transaction code error.
  unmatchedTxCode('UnmatchedTxCode', 'unmatched_tx_code'),
  ;

  const TdkExceptionType(this.jsonValue, this.code);

  /// String representation of the exception type used for JSON serialization.
  final String jsonValue;

  /// String code that uniquely identifies the exception type.
  final String code;

  /// Converts a JSON string value to a corresponding [TdkExceptionType].
  ///
  /// This method attempts to find the [TdkExceptionType] that matches the given
  /// JSON string value. If no match is found, it defaults to returning
  /// [TdkExceptionType.other].
  ///
  /// - [value] (optional): The JSON string representation of the exception type.
  ///
  /// Returns [TdkExceptionType] if a match is found, otherwise [TdkExceptionType.other].
  static TdkExceptionType fromJson(String? value) {
    return TdkExceptionType.values.firstWhere(
      (type) => type.jsonValue == value,
      orElse: () => TdkExceptionType.other,
    );
  }
}
