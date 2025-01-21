import 'dart:convert';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

import 'iam_client.dart';
import 'jwt_helper.dart';

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

  ECPublicKey? _publicKey;
  String? _projectScopedToken;

  Future<bool> _shouldFetchToken() async {
    if (_projectScopedToken == null) {
      return true;
    }

    final iamClient = IamClient(apiGatewayUrl: apiGatewayUrl);
    _publicKey ??= await JWTHelper.fetchPublicKey(iamClient);
    try {
      JWT.verify(_projectScopedToken!, _publicKey!);
      return false;
    } on JWTException {
      return true;
    }
  }

  Future<String> fetchProjectScopedToken() async {
    if (await _shouldFetchToken()) {
      _projectScopedToken =
          await _getProjectScopedToken(audience: tokenEndpoint);
    }
    return _projectScopedToken!;
  }

  Future<String> _getUserAccessToken({required String audience}) async {
    final token = JWTHelper.signPayload(
      audience: audience,
      tokenId: tokenId,
      privateKey: privateKey,
      keyId: keyId,
      passphrase: passphrase,
    );

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

  ({String iotaJwt, String iotaSessionId}) createIotaToken({
    required String iotaConfigId,
    required String did,
    String? iotaSessionId,
  }) {
    final sessionId = iotaSessionId ?? Uuid().v4();

    return (
      iotaJwt: JWTHelper.signPayload(
        audience: did,
        tokenId: 'token/$tokenId',
        privateKey: privateKey,
        keyId: keyId,
        passphrase: passphrase,
        additionalPayload: {
          'project_id': projectId,
          'iota_configuration_id': iotaConfigId,
          'iota_session_id': sessionId,
          'scope': 'iota_channel',
        },
      ),
      iotaSessionId: sessionId,
    );
  }
}
