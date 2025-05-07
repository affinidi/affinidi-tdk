import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import 'consumer_auth_provider_interface.dart';
import 'provider/base_consumer_auth_provider.dart';

/// A class that implements the `ConsumerAuthProviderInterface` and provides
/// functionality for handling consumer auth tokens.
class ConsumerAuthProvider implements ConsumerAuthProviderInterface {
  final ConsumerAuthProviderInterface _implementation;

  /// Private constructor for `ConsumerAuthProvider`, it can only be instantiated via the factory constructor.
  ConsumerAuthProvider._(this._implementation);

  /// Factory constructor for creating an instance of [ConsumerAuthProvider].
  ///
  /// - [signer] (required) - instance of [DidSigner] used for signing operations.
  /// - [client] (optional) - optional instance of [Dio] for handling HTTP requests. If not provided,
  ///   a default client will be used.
  factory ConsumerAuthProvider({required DidSigner signer, Dio? client}) {
    return ConsumerAuthProvider._(
        BaseConsumerAuthProvider(signer: signer, client: client));
  }

  @override
  Future<String> fetchConsumerToken() => _implementation.fetchConsumerToken();

  /// Retrieves a credential issuance (CIS) token to be used by Vault to claim
  /// credentials issued to it.
  @override
  Future<String> fetchCisToken() => _implementation.fetchCisToken();

  @override
  Future<String> fetchDelegatedToken({required String profileDid}) =>
      _implementation.fetchDelegatedToken(profileDid: profileDid);
}
