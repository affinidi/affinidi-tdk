part of 'token_provider.dart';

/// CIS Token Provider class for generating tokens required to claim credentials.
class CisTokenProvider extends TokenProvider {
  static final String _tokenEndpoint = Environment.fetchConsumerCisUrl();

  @override
  Future<String> getToken(Uint8List seedBytes) async {
    final myDiD = _getDID(seedBytes);
    final header = _getHeader(_getKid(myDiD));
    return await _getJwtToken(seedBytes, header, _tokenEndpoint);
  }

  Map<String, dynamic> _getHeader(String kid) {
    return {'alg': 'ES256K', 'kid': kid, 'typ': 'openid4vci-proof+jwt'};
  }
}
