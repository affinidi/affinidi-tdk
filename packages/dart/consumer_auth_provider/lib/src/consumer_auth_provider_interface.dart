abstract interface class ConsumerAuthProviderInterface {
  Future<String> fetchConsumerToken();
  Future<String> fetchCisToken();
}
