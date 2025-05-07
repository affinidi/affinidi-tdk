/// Enum representing different types of TDK exceptions.
///
/// - [failedToFetchConsumerToken] - indicates a failure to fetch the consumer authentication token
/// - [unableToGetSignatureScheme] - indicates an inability to retrieve the signature scheme
///
/// Each enum value has a [code[] property that provides the corresponding error code.
enum TdkExceptionType {
  /// Indicates a failure to fetch the consumer authentication token
  failedToFetchConsumerToken(code: 'failed_to_fetch_consumer_auth_token'),

  /// Indicates an inability to retrieve the signature scheme
  unableToGetSignatureScheme(code: 'unable_to_get_signature_scheme'),
  ;

  const TdkExceptionType({required this.code});

  /// Provides the corresponding error code.
  final String code;
}
