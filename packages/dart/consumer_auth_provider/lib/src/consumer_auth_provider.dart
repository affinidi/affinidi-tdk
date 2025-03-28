import 'dart:typed_data';
import 'package:dio/dio.dart';

import 'provider/base_consumer_auth_provider.dart';
import 'consumer_auth_provider_interface.dart';

/// A class that implements the `ConsumerAuthProviderInterface` and provides
/// functionality for handling consumer auth tokens.
class ConsumerAuthProvider implements ConsumerAuthProviderInterface {
  final ConsumerAuthProviderInterface _implementation;

  /// Private constructor for `ConsumerAuthProvider`, it can only be instantiated via the factory constructor.
  ConsumerAuthProvider._(this._implementation);

  /// A provider for handling consumer auth token, which is used for Vault API
  /// requests to Affinidi services like Vault Data Manager (VDM).
  ///
  /// The `seed` parameter is a `Uint8List` representing the raw seed bytes of your Wallet.
  ///
  /// Example usage:
  ///```dart
  /// void main() {
  ///   final consumerAuthProvider = ConsumerAuthProvider(seed: seed);
  ///   final token = await consumerAuthProvider.fetchConsumerToken();
  /// }
  ///```
  factory ConsumerAuthProvider({required Uint8List seed, Dio? client}) {
    return ConsumerAuthProvider._(BaseConsumerAuthProvider(seed: seed, client: client));
  }

  /// Fetches a consumer scoped token to be used for API calls to Affinidi
  /// Vault services. This function can be provided to clients, such as Vault
  /// Data Manager (VDM) client to authenticate their requests, allowing for
  /// token refresh after expiration.
  @override
  Future<String> fetchConsumerToken() => _implementation.fetchConsumerToken();

  /// Retrieves a credential issuance (CIS) token to be used by Vault to claim
  /// credentials issued to it.
  @override
  Future<String> fetchCisToken() => _implementation.fetchCisToken();
}
