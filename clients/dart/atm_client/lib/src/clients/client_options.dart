class ClientOptions {
  final Duration requestTimeout;
  final Duration messageExpiration;

  const ClientOptions({
    this.requestTimeout = const Duration(minutes: 2),
    this.messageExpiration = const Duration(minutes: 1),
  });
}
