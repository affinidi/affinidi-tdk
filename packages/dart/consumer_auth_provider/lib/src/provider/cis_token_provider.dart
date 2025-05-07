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
}
