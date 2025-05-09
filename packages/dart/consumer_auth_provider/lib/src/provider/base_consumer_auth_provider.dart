import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:affinidi_tdk_consumer_auth_provider/src/exceptions/tdk_exception_type.dart';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:ssi/ssi.dart';

import '../consumer_auth_provider_interface.dart';
import 'cis_token_provider.dart';
import 'consumer_token_provider.dart';
import 'delegated_token_provider.dart';

/// Base class for consumer authentication provider. It handles the  generation and validation of tokens.
class BaseConsumerAuthProvider implements ConsumerAuthProviderInterface {
  late final ConsumerTokenProvider _consumerTokenProvider;
  late final CisTokenProvider _cisTokenProvider;
  late final DelegatedTokenProvider _delegatedTokenProvider;

  String? _consumerToken;

  /// Constructor for [BaseConsumerAuthProvider] using the [signer] and optional [Dio] http client.
  BaseConsumerAuthProvider({required DidSigner signer, Dio? client}) {
    _consumerTokenProvider =
        ConsumerTokenProvider(signer: signer, client: client);
    _cisTokenProvider = CisTokenProvider(signer: signer, client: client);
    _delegatedTokenProvider =
        DelegatedTokenProvider(signer: signer, client: client);
  }

  @override
  Future<String> fetchConsumerToken() async {
    try {
      if (_consumerToken != null && !_isTokenExpired(_consumerToken!)) {
        return _consumerToken!;
      }

      _consumerToken = await _consumerTokenProvider.getToken();

      return _consumerToken!;
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(
        TdkException(
            message: 'Failed to fetch consumer token',
            code: TdkExceptionType.failedToFetchConsumerToken.code),
        stackTrace,
      );
    }
  }

  @override
  Future<String> fetchCisToken() async {
    return await _cisTokenProvider.getToken();
  }

  bool _isTokenExpired(String token) {
    return JwtDecoder.isExpired(token);
  }

  @override
  Future<String> fetchDelegatedToken({required String profileDid}) {
    return _delegatedTokenProvider.getToken(profileDid: profileDid);
  }

  Future<({String accessToken, List? authorizationDetails})> exchangePreAuthCodeForToken({required String tokenEndpoint, required String preAuthCode, String? txCode}) {
    return _cisTokenProvider.exchangePreAuthCodeForToken(tokenEndpoint: tokenEndpoint, preAuthCode: preAuthCode, txCode: txCode);
  }
}
