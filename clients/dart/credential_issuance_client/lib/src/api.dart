//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/serializers.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/auth/api_key_auth.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/auth/basic_auth.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/auth/bearer_auth.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/auth/oauth.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/configuration_api.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/credentials_api.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/default_api.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/issuance_api.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/offer_api.dart';
import 'package:affinidi_tdk_credential_issuance_client/src/api/well_known_api.dart';

class AffinidiTdkCredentialIssuanceClient {
  static const String basePath = r'https://apse1.api.affinidi.io/cis';

  final Dio dio;
  final Serializers serializers;

  AffinidiTdkCredentialIssuanceClient({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
    Future<String?> Function()? authTokenHook,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }

    if (authTokenHook != null) {
      final authTokenInterceptor = InterceptorsWrapper(
        onRequest: (options, handler) async {
          try {
            // Retrieve the auth token asynchronously, and set it in headers
            final token = await authTokenHook();
            options.headers['Authorization'] = 'Bearer $token';
          } catch (e) {
            print("Error retrieving auth token: $e");
          }
          // Continue with the request
          handler.next(options);
        },
      );

      // Add the authTokenInterceptor to Dio
      this.dio.interceptors.add(authTokenInterceptor);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get ConfigurationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ConfigurationApi getConfigurationApi() {
    return ConfigurationApi(dio, serializers);
  }

  /// Get CredentialsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CredentialsApi getCredentialsApi() {
    return CredentialsApi(dio, serializers);
  }

  /// Get DefaultApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DefaultApi getDefaultApi() {
    return DefaultApi(dio, serializers);
  }

  /// Get IssuanceApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  IssuanceApi getIssuanceApi() {
    return IssuanceApi(dio, serializers);
  }

  /// Get OfferApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  OfferApi getOfferApi() {
    return OfferApi(dio, serializers);
  }

  /// Get WellKnownApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WellKnownApi getWellKnownApi() {
    return WellKnownApi(dio, serializers);
  }
}
