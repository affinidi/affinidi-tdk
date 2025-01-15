import 'dart:convert';
import 'package:http/http.dart' as http;

class IamClient {
  IamClient({required String apiGatewayUrl, http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client(),
        _apiGatewayUrl = apiGatewayUrl;

  final http.Client _httpClient;
  final String _apiGatewayUrl;

  Future<dynamic> getPublicKeyJWKS() async {
    final response = await _httpClient.get(
      Uri.parse('$_apiGatewayUrl/iam/.well-known/jwks.json'),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch public key');
    }

    return jsonDecode(response.body);
  }
}
