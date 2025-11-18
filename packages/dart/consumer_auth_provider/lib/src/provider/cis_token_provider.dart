import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import 'token_provider.dart';

/// CIS Token Provider class for generating tokens required to claim credentials.
class CisTokenProvider extends TokenProvider {
  static final int _cisTokenExpiration = 5 * 60; // 5 minutes
  static final int? _apiTimeOutInMilliseconds =
      Environment.apiTimeOutInMilliseconds;

  /// Constructor for [CisTokenProvider].
  ///
  /// - [signer] (required): Instance of [DidSigner] used for signing operations.
  /// - [client] (optional): Optional instance of [Dio] for handling HTTP requests. If not provided,
  ///   a default client will be used.
  /// - [region] (optional): The [ElementsRegion] to specify the AWS region (e.g., apSoutheast1, apSouth1).
  ///   Defaults to [ElementsRegion.apSoutheast1] if not provided.
  CisTokenProvider({
    required DidSigner signer,
    Dio? client,
    ElementsRegion region = ElementsRegion.apSoutheast1,
    Environment? env,
  })  : _signer = signer,
        _client = client ??
            ((_apiTimeOutInMilliseconds != null)
                ? Dio(BaseOptions(
                    connectTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                    receiveTimeout:
                        Duration(milliseconds: _apiTimeOutInMilliseconds!),
                  ))
                : Dio()),
        _tokenEndpoint = Environment.fetchConsumerCisUrl(env, null, region);

  final DidSigner _signer;
  final Dio _client;
  final String _tokenEndpoint;

  /// Method to retrieve CIS token
  ///
  /// Returns [Future] that resolves to the token as a [String].
  Future<String> getToken() async {
    final token = await getJwtToken(
      signer: _signer,
      expiration: _cisTokenExpiration, // 5 minutes
      audience: _tokenEndpoint,
    );
    return token;
  }

  @override
  Map<String, dynamic> getHeader({required String alg, required String kid}) {
    return {
      ...super.getHeader(alg: alg, kid: kid),
      'typ': 'openid4vci-proof+jwt'
    };
  }

  /// Exchanges a pre-authorization code for an access token and authorization details.
  Future<({String accessToken, List<dynamic>? authorizationDetails})>
      exchangePreAuthCodeForToken(
          {required String tokenEndpoint,
          required String preAuthCode,
          String? txCode}) async {
    final formData = {
      'grant_type': 'urn:ietf:params:oauth:grant-type:pre-authorized_code',
      'pre-authorized_code': preAuthCode,
      if (txCode != null) 'tx_code': txCode,
    };

    try {
      final response = await _client.post<Map<String, dynamic>>(
        tokenEndpoint,
        data: formData,
        options: Options(
          contentType: 'application/x-www-form-urlencoded',
        ),
      );

      return (
        accessToken: response.data!['access_token'] as String,
        authorizationDetails:
            response.data!['authorization_details'] as List<dynamic>?
      );
    } on DioException catch (e) {
      throw Exception(
          'Failed to exchange pre-auth code for token: ${e.message}');
    }
  }
}
