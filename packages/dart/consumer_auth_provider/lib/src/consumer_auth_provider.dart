import 'provider/base_consumer_auth_provider.dart';
import 'provider/consumer_auth_provider_abstract.dart';
import 'consumer_auth_provider_interface.dart';

class ConsumerAuthProvider implements ConsumerAuthProviderInterface {
  /// A provider for handling Consumer authentication token
  ///
  /// Example usage:
  ///```dart
  ///void main() {
  ///  final consumerAuthProvider = ConsumerAuthProvider(
  ///    encryptedSeed: 'encryptedSeed',
  ///    encryptionKey: 'encryptionKey',
  ///  );
  ///  final token = await consumerAuthProvider.fetchConsumerToken();
  ///}
  ///```
  ConsumerAuthProvider({
    required String encryptedSeed,
    required String encryptionKey,
  }) {
    ConsumerAuthProviderAbstract.instance = BaseConsumerAuthProvider(
      encryptedSeed: encryptedSeed,
      encryptionKey: encryptionKey,
    );
  }

  /// Retrieves a valid Consumer token. Checks its validity and, if necessary,
  /// sends a request to the server to obtain a fresh token.
  @override
  Future<String> fetchConsumerToken() async {
    return await ConsumerAuthProviderAbstract.instance.fetchConsumerToken();
  }

  /// Retrieves a CIS token.
  @override
  Future<String> fetchCisToken() async {
    return await ConsumerAuthProviderAbstract.instance.fetchCisToken();
  }
}
