import 'dart:convert';

import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

import 'iam_client.dart';
import 'jwt_helper.dart';

/// An authentication provider to make use of Affinidi services that require
/// project scoped tokens.
class AuthProvider {
  /// The project ID of your Affinidi project.
  final String projectId;

  /// The ID of the Personal Access Token (PAT) registered with Affinidi.
  final String tokenId;

  /// The private key that was used when creating the PAT.
  final String privateKey;

  /// The key ID that was used when creating the PAT, if provided.
  final String? keyId;

  /// The passphrase that was used when creating the PAT, if provided.
  final String? passphrase;

  /// (Internal) The URL of the Affinidi API Gateway that you want to
  /// authenticate against. Defaults to the production environment.
  final String apiGatewayUrl;

  /// (Internal) The URL of the Affinidi Elements Token Endpoint. Defaults to
  /// the production environment.
  final String tokenEndpoint;

  /// Creates a new instance of the AuthProvider from the Personal Access Token
  ///  (PAT) that you have registered with Affinidi.
  AuthProvider({
    required this.projectId,
    required this.tokenId,
    required this.privateKey,
    this.keyId,
    this.passphrase,
  })  : apiGatewayUrl = Environment.fetchApiGwUrl(),
        tokenEndpoint = Environment.fetchElementsAuthTokenUrl();

  /// Constructor for internal use only. Allows for custom API Gateway and
  /// token endpoint.
  AuthProvider.withEnv({
    required this.projectId,
    required this.tokenId,
    required this.privateKey,
    this.keyId,
    this.passphrase,
    required this.apiGatewayUrl,
    required this.tokenEndpoint,
  });

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

  /// Fetches a project scoped token from Affinidi Elements to be used for
  /// API calls to Affinidi services. This function can be provided to clients
  /// to authenticate their requests, allowing for token refresh after expiration.
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
      // passphrase: passphrase,
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

  /// Generates an iota token to be used when setting up an iota websockets
  /// connection. This token is only used when using iota with websockets,
  /// and not when using iota through redirects.
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
