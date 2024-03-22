//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for IdpApi
void main() {
  // final instance = IdpApi();

  group('tests for IdpApi', () {
    // OAuth 2.0 Authorize Endpoint
    //
    // The authorization endpoint is one of the components in the OAuth 2.0 flow. It's the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access. 
    //
    //Future v1LoginProjectProjectIdOauth2AuthGet(String projectId) async
    test('test v1LoginProjectProjectIdOauth2AuthGet', () async {
      // TODO
    });

    // Revoke OAuth 2.0 Access or Refresh Token
    //
    // Revoking a token (both access and refresh) means that the tokens will be invalid.  A revoked access token can no longer be used to make access requests, and a revoked  refresh token can no longer be used to refresh an access token. Revoking a refresh  token also invalidates the access token that was created with it. A token may only  be revoked by the client the token was generated for. 
    //
    //Future v1LoginProjectProjectIdOauth2RevokePost(String projectId) async
    test('test v1LoginProjectProjectIdOauth2RevokePost', () async {
      // TODO
    });

    // OpenID Connect Front- and Back-channel Enabled Logout
    //
    // This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow. 
    //
    //Future v1LoginProjectProjectIdOauth2SessionsLogoutGet(String projectId) async
    test('test v1LoginProjectProjectIdOauth2SessionsLogoutGet', () async {
      // TODO
    });

    // The OAuth 2.0 Token Endpoint
    //
    // The token endpoint is a critical component in the OAuth 2.0 protocol. It's the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user's resources on the protected server. 
    //
    //Future<OAuth2Token> v1LoginProjectProjectIdOauth2TokenPost(String projectId) async
    test('test v1LoginProjectProjectIdOauth2TokenPost', () async {
      // TODO
    });

    // OpenID Connect Userinfo
    //
    // This endpoint returns the payload of the ID Token,  including session.id_token values, of the provided  OAuth 2.0 Access Token's consent request. In the case of authentication error, a WWW-Authenticate  header might be set in the response with more information  about the error. See the spec for more details about  header format. 
    //
    //Future<GetUserInfo> v1LoginProjectProjectIdUserinfoGet(String projectId) async
    test('test v1LoginProjectProjectIdUserinfoGet', () async {
      // TODO
    });

    // Discover Well-Known JSON Web Keys
    //
    // This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.
    //
    //Future<JsonWebKey> v1LoginProjectProjectIdWellKnownJwksJsonGet(String projectId) async
    test('test v1LoginProjectProjectIdWellKnownJwksJsonGet', () async {
      // TODO
    });

    // OpenID Connect Discovery
    //
    // A mechanism for an OpenID Connect Relying Party to discover the End-User's  OpenID Provider and obtain information needed to interact with it, including  its OAuth 2.0 endpoint locations. 
    //
    //Future<OIDCConfig> v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(String projectId) async
    test('test v1LoginProjectProjectIdWellKnownOpenidConfigurationGet', () async {
      // TODO
    });

  });
}
