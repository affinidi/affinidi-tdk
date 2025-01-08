import 'dart:convert';

import 'package:affinidi_common/affinidi_common.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;

class AuthProvider {
  final String projectId;
  final String tokenId;
  final String privateKey;
  final String? keyId;
  final String? passphrase;
  final String apiGatewayUrl;
  final String tokenEndpoint;

  AuthProvider(
      {required this.projectId,
      required this.tokenId,
      required this.privateKey,
      this.keyId,
      this.passphrase})
      : apiGatewayUrl = Environment.fetchApiGwUrl(),
        tokenEndpoint = Environment.fetchElementsAuthTokenUrl();

  AuthProvider.withEnv(
      {required this.projectId,
      required this.tokenId,
      required this.privateKey,
      this.keyId,
      this.passphrase,
      required this.apiGatewayUrl,
      required this.tokenEndpoint});

  Future<String> fetchProjectScopedToken() async {
    return await _getProjectScopedToken(audience: tokenEndpoint);
  }

  Future<String> _signPayload({
    required String audience,
  }) async {
    final issueTimeInSeconds = DateTime.now().millisecondsSinceEpoch ~/ 1000;
    final algorithm = JWTAlgorithm.RS256;

    final jwt = JWT(
      {
        'iss': tokenId,
        'sub': tokenId,
        'aud': audience,
        'jti': '${DateTime.now()}${DateTime.now().millisecondsSinceEpoch}',
        'exp': issueTimeInSeconds + 5 * 60,
        'iat': issueTimeInSeconds,
      },
      header: {
        'alg': algorithm.name,
        if (keyId != null) 'kid': keyId,
      },
    );

    final token = jwt.sign(
      RSAPrivateKey(privateKey),
      algorithm: algorithm,
    );

    return token;
  }

  Future<String> _getUserAccessToken({required String audience}) async {
    final token = await _signPayload(audience: audience);

    final response = await http.post(
      Uri.parse(audience),
      headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'grant_type': 'client_credentials',
        'scope': 'openid',
        'client_assertion_type':
            'urn:ietf:params:oauth:client-assertion-type:jwt-bearer',
        'client_assertion': token,
        'client_id': tokenId,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get user access token');
    }

    final data = jsonDecode(response.body);
    return data['access_token'];
  }

  Future<String> _getProjectScopedToken({
    required String audience,
  }) async {
    final userAccessToken = await _getUserAccessToken(audience: audience);

    final response = await http.post(
      Uri.parse('$apiGatewayUrl/iam/v1/sts/create-project-scoped-token'),
      headers: {
        'Authorization': 'Bearer $userAccessToken',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'projectId': projectId}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get project scoped token');
    }

    final data = jsonDecode(response.body);
    return data['accessToken'];
  }
}
