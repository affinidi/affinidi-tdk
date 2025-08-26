/// Configuration options for ATM client operations.
class ClientOptions {
  /// The duration after which requests timeout.
  final Duration requestTimeout;

  /// The duration after which messages expire.
  final Duration messageExpiration;

  /// Creates client options with configurable timeouts.
  const ClientOptions({
    this.requestTimeout = const Duration(minutes: 2),
    this.messageExpiration = const Duration(minutes: 1),
  });
}
