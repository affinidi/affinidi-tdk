import 'provider/base_consumer_auth_provider.dart';
import 'provider/consumer_auth_provider_abstract.dart';
import 'consumer_auth_provider_interface.dart';

/// A class that implements the `ConsumerAuthProviderInterface` and provides
/// functionality for handling consumer auth tokens.
class ConsumerAuthProvider implements ConsumerAuthProviderInterface {
  /// A provider for handling consumer auth token, which is used for Vault API
  /// requests to Affinidi services like Vault Data Manager (VDM).
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

  /// Fetches a consumer scoped token to be used for API calls to Affinidi
  /// Vault services. This function can be provided to clients, such as Vault
  /// Data Manager (VDM) client to authenticate their requests, allowing for
  ///  token refresh after expiration.
  @override
  Future<String> fetchConsumerToken() async {
    return await ConsumerAuthProviderAbstract.instance.fetchConsumerToken();
  }

  /// Retrieves a credential issuance (CIS) token to be used by Vault to claim
  /// credentials issued to it.
  @override
  Future<String> fetchCisToken() async {
    return await ConsumerAuthProviderAbstract.instance.fetchCisToken();
  }
}
