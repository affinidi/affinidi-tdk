import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import 'token_provider.dart';

/// A provider class that extends `TokenProvider` to handle consumer-specific
/// token management functionality.
class ConsumerTokenProvider extends TokenProvider {
  final DidSigner _signer;
  final Dio _dioInstance;

  static final String _tokenEndpoint = Environment.fetchConsumerAudienceUrl();
  static final int _consumerTokenExpiration = 5 * 60; // 5 minutes

  /// Constructor for [ConsumerTokenProvider] using the [signer] and optional [Dio] http client.
  ConsumerTokenProvider({
    required DidSigner signer,
    Dio? client,
  })  : _signer = signer,
        _dioInstance = client ?? Dio();

  /// Method to retrieves a consumer token.
  ///
  /// Returns [Future] that resolves to a [String] representing the token.
  Future<String> getToken() async {
    final token = await getJwtToken(
        signer: _signer,
        expiration: _consumerTokenExpiration,
        audience: _tokenEndpoint);
    final did = _signer.did;
    return _fetchConsumerToken(clientAssertion: token, did: did);
  }

  Future<String> _fetchConsumerToken({
    required String clientAssertion,
    required String did,
  }) async {
    final data = {
      'grant_type': 'client_credentials',
      'client_assertion_type':
          'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      'client_assertion': clientAssertion,
      'client_id': did,
    };

    final response = await _dioInstance.post<Map<String, dynamic>>(
      _tokenEndpoint,
      data: data,
      options: Options(
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    return response.data!['access_token'] as String;
  }
}
