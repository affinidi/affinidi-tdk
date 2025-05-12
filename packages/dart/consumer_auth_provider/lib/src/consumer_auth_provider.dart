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

  /// Exchanges a pre-authorization code for an access token and authorization details.
  /// This method is used in the OID4CVI flow to obtain a token after sharing an offer, allowing the vault to claim credentials.
  ///
  /// Parameters:
  /// - tokenEndpoint: The token endpoint URL where the exchange request will be sent
  /// - preAuthCode: The pre-authorization_code received from the offer details
  /// - txCode: The transaction code associated with the issuance request. Required only when claim mode is TX_CODE
  ///
  /// Returns a record containing:
  /// - accessToken: The access token received from the token endpoint
  /// - authorizationDetails: Optional list of authorization details. This is only returned for batch issuance
  ///
  /// Throws an Exception if the exchange request fails
  @override
  Future<({String accessToken, List<dynamic>? authorizationDetails})>
      exchangePreAuthCodeForToken(
              {required String tokenEndpoint,
              required String preAuthCode,
              String? txCode}) =>
          _implementation.exchangePreAuthCodeForToken(
              tokenEndpoint: tokenEndpoint, preAuthCode: preAuthCode);
}
