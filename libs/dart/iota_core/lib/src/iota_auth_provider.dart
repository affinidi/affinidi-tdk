import 'package:affinidi_tdk_common/affinidi_tdk_common.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthProviderParams {
  final String region;
  final String apiGW;

  AuthProviderParams({
    required this.region,
    required this.apiGW,
  });
}

class IotaCredentials {
  final Credentials credentials;
  final String connectionClientId;

  IotaCredentials({
    required this.credentials,
    required this.connectionClientId,
  });
}

class Credentials {
  final String? accessKeyId;
  final String? secretKey;
  final String? sessionToken;
  final DateTime? expiration;

  Credentials({
    this.accessKeyId,
    this.secretKey,
    this.sessionToken,
    this.expiration,
  });
}

class IdentityCredentials {
  final String identityId;
  final String token;

  IdentityCredentials({
    required this.identityId,
    required this.token,
  });

  factory IdentityCredentials.fromJson(Map<String, dynamic> json) {
    return IdentityCredentials(
      identityId: json['identityId'],
      token: json['token'],
    );
  }
}

class IotaAuthProvider {
  late final String region;
  late final String apiGW;

  IotaAuthProvider({ Map<String, dynamic>? params }) {
    region = params?['region'] ?? 'ap-southeast-1';
    apiGW = params?['apiGW'] ?? Environment.fetchApiGwUrl();
  }

  Future<IotaCredentials> limitedTokenToIotaCredentials(String limitedToken) async {
    final response = await http.post(
      Uri.parse('$apiGW/ais/v1/aws-exchange-credentials'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'assertion': limitedToken}),
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to exchange credentials');
    }

    final Map<String, dynamic> data = jsonDecode(response.body);
    final connectionClientId = data['connectionClientId'] as String;

    final identityCredentials = IdentityCredentials.fromJson(data['credentials']);

    final credentials = await exchangeIdentityCredentials(identityCredentials);

    return IotaCredentials(
      credentials: credentials,
      connectionClientId: connectionClientId,
    );
  }

  Future<Credentials> exchangeIdentityCredentials(IdentityCredentials identityCredentials) async {
    final cognitoResponse = await fetchCognitoCredentials(identityCredentials);
    final creds = cognitoResponse['Credentials'];
    if (creds == null) {
      throw Exception('Error fetching credentials');
    }
    final expirationSeconds = creds['Expiration'] as double;
    final expirationDate = DateTime.fromMillisecondsSinceEpoch((expirationSeconds * 1000).toInt());

    return Credentials(
      accessKeyId: creds['AccessKeyId'],
      secretKey: creds['SecretKey'],
      sessionToken: creds['SessionToken'],
      expiration: creds['Expiration'] != null
          ? expirationDate
          : null,
    );
  }

  Future<Map<String, dynamic>> fetchCognitoCredentials(IdentityCredentials identityCredentials) async {
    final url = 'https://cognito-identity.$region.amazonaws.com/';
    final payload = jsonEncode({
      'IdentityId': identityCredentials.identityId,
      'Logins': {
        'cognito-identity.amazonaws.com': identityCredentials.token,
      },
    });

    final response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/x-amz-json-1.1',
        'X-Amz-Target': 'AWSCognitoIdentityService.GetCredentialsForIdentity',
      },
      body: payload,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to fetch Cognito credentials');
    }

    return jsonDecode(response.body);
  }
}
