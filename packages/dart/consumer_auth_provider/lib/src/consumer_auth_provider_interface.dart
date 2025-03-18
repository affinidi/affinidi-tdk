/// Interface for interacting with a consumer authentication provider.
abstract interface class ConsumerAuthProviderInterface {
  /// Retrieves a valid Consumer token. Checks its validity and, if necessary,
  /// sends a request to the server to obtain a fresh token.
  Future<String> fetchConsumerToken();

  /// Retrieves a credential issuance (CIS) token.
  Future<String> fetchCisToken();
}
