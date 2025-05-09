import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dio/dio.dart';
import 'package:ssi/ssi.dart';

import 'token_provider.dart';

/// CIS Token Provider class for generating tokens required to claim credentials.
class CisTokenProvider extends TokenProvider {
  static final String _tokenEndpoint = Environment.fetchConsumerCisUrl();
  static final int _cisTokenExpiration = 5 * 60; // 5 minutes

  final DidSigner _signer;

  /// Constructor for [CisTokenProvider] using the [signer] and optional [Dio] http client.

  CisTokenProvider({
    required DidSigner signer,
    Dio? client,
  }) : _signer = signer;

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
    final dio = Dio();

    final formData = {
      "grant_type": "urn:ietf:params:oauth:grant-type:pre-authorized_code",
      'pre-authorized_code': preAuthCode,
      if (txCode != null) 'tx_code': txCode,
    };

    try {
      final response = await dio.post(
        tokenEndpoint,
        data: formData,
        options: Options(
          contentType: 'application/x-www-form-urlencoded',
        ),
      );

      return (
        accessToken: response.data['access_token'] as String,
        authorizationDetails:
            response.data['authorization_details'] as List<dynamic>?
      );
    } on DioException catch (e) {
      throw Exception(
          'Failed to exchange pre-auth code for token: ${e.message}');
    }
  }
}
