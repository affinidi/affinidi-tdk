part of 'token_provider.dart';

/// Auth provider that generates consumer scoped tokens used by Vault to call
/// Affinidi Vault services such as Vault Data Manager (VDM).
class ConsumerTokenProvider extends TokenProvider {
  static final String _tokenEndpoint = Environment.fetchConsumerAudienceUrl();

  @override
  Future<String> getToken(Uint8List seed) async {
    final myDiD = _getDID(seed);
    final header = _getHeader(_getKid(myDiD));
    final jwt = await _getJwtToken(seed, header, _tokenEndpoint);
    final token = await _getConsumerToken(jwt, myDiD);
    return token;
  }

  Map<String, dynamic> _getHeader(String kid) {
    return {'alg': 'ES256K', 'kid': kid};
  }

  Future<String> _getConsumerToken(String clientAssertion, String did) async {
    final dioInstance = Dio();
    final data = {
      "grant_type": 'client_credentials',
      "client_assertion_type":
          'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
      "client_assertion": clientAssertion,
      "client_id": did,
    };

    final response = await dioInstance.post(
      _tokenEndpoint,
      data: data,
      options: Options(
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          "Accept": 'application/json',
        },
      ),
    );

    return response.data['access_token'];
  }
}
