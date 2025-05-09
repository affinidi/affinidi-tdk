/// Enum representing different types of exceptions that can occur in this package.
///
/// - [credentialOfferExpired] - indicates that the credential offer has expired.
/// - [invalidCredentialRequest] - represents an invalid credential request error.
/// - [credentialOfferClaimed] - indicates that the credential offer has already been claimed.
/// - [failedToClaimCredential] - represents a failure to claim a credential.
/// - [failedToLoadCredentialOffer] - indicates a failure to load the credential offer.
/// - [failedToLoadIssuerMetadata] - represents a failure to load issuer metadata.
/// - [missingUri] - indicates that a required URI is missing.
/// - [unmatchedTxCode] - represents an unmatched transaction code error.
/// - [invalidParameter] - indicates an invalid parameter error.
/// - [serverError] - represents a server-side error.
/// - [networkError] - indicates a network-related error.
/// - [other] - represents any other unspecified error.
///
/// Each exception type has the following properties:
/// - [jsonValue] - string representation of the exception type used for JSON serialization.
/// - [code] - string code that uniquely identifies the exception type.
enum TdkExceptionType {
  /// Inndicates that the credential offer has expired.
  credentialOfferExpired(
      'CredentialOfferExpiredError', 'credential_offer_expired'),

  /// Represents an invalid credential request error.
  invalidCredentialRequest(
      'InvalidCredentialRequestError', 'invalid_credential_request'),

  /// Indicates that the credential offer has already been claimed.
  credentialOfferClaimed(
      'CredentialOfferClaimedError', 'credential_offer_claimed'),

  /// Represents a failure to claim a credential.
  failedToClaimCredential(
      'FailedToClaimCredential', 'failed_to_claim_credential'),

  /// Indicates a failure to load the credential offer.
  failedToLoadCredentialOffer(
      'FailedToLoadCredentialOffer', 'failed_to_load_credential_offer'),

  /// Represents a failure to load issuer metadata.
  failedToLoadIssuerMetadata(
      'FailedToLoadIssuerMetadata', 'failed_to_load_issuer_metadata'),

  /// Indicates that a required URI is missing.
  missingUri('MissingUri', 'missing_uri'),

  /// Represents an unmatched transaction code error.
  unmatchedTxCode('UnmatchedTxCode', 'unmatched_tx_code'),

  /// Indicates an invalid parameter error.
  invalidParameter('InvalidParameterError', 'invalid_parameter'),

  /// Represents a server-side error.
  serverError('serverError', 'server_error'),

  /// Indicates a network-related error.
  networkError('NetworkError', 'network_error'),

  /// Represents unspecified error.
  other('Other', 'other'),
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
