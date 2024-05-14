//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IdpApi {
  IdpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// OAuth 2.0 Authorize Endpoint
  ///
  /// The authorization endpoint is one of the components in the OAuth 2.0 flow. It's the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdOauth2AuthGetWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/oauth2/auth'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OAuth 2.0 Authorize Endpoint
  ///
  /// The authorization endpoint is one of the components in the OAuth 2.0 flow. It's the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<void> v1LoginProjectProjectIdOauth2AuthGet(String projectId,) async {
    final response = await v1LoginProjectProjectIdOauth2AuthGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Revoke OAuth 2.0 Access or Refresh Token
  ///
  /// Revoking a token (both access and refresh) means that the tokens will be invalid.  A revoked access token can no longer be used to make access requests, and a revoked  refresh token can no longer be used to refresh an access token. Revoking a refresh  token also invalidates the access token that was created with it. A token may only  be revoked by the client the token was generated for. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdOauth2RevokePostWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/oauth2/revoke'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Revoke OAuth 2.0 Access or Refresh Token
  ///
  /// Revoking a token (both access and refresh) means that the tokens will be invalid.  A revoked access token can no longer be used to make access requests, and a revoked  refresh token can no longer be used to refresh an access token. Revoking a refresh  token also invalidates the access token that was created with it. A token may only  be revoked by the client the token was generated for. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<void> v1LoginProjectProjectIdOauth2RevokePost(String projectId,) async {
    final response = await v1LoginProjectProjectIdOauth2RevokePostWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// OpenID Connect Front- and Back-channel Enabled Logout
  ///
  /// This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdOauth2SessionsLogoutGetWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/oauth2/sessions/logout'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OpenID Connect Front- and Back-channel Enabled Logout
  ///
  /// This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<void> v1LoginProjectProjectIdOauth2SessionsLogoutGet(String projectId,) async {
    final response = await v1LoginProjectProjectIdOauth2SessionsLogoutGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The OAuth 2.0 Token Endpoint
  ///
  /// The token endpoint is a critical component in the OAuth 2.0 protocol. It's the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user's resources on the protected server. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdOauth2TokenPostWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/oauth2/token'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// The OAuth 2.0 Token Endpoint
  ///
  /// The token endpoint is a critical component in the OAuth 2.0 protocol. It's the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user's resources on the protected server. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<OAuth2Token?> v1LoginProjectProjectIdOauth2TokenPost(String projectId,) async {
    final response = await v1LoginProjectProjectIdOauth2TokenPostWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OAuth2Token',) as OAuth2Token;
    
    }
    return null;
  }

  /// OpenID Connect Userinfo
  ///
  /// This endpoint returns the payload of the ID Token,  including session.id_token values, of the provided  OAuth 2.0 Access Token's consent request. In the case of authentication error, a WWW-Authenticate  header might be set in the response with more information  about the error. See the spec for more details about  header format. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdUserinfoGetWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/userinfo'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OpenID Connect Userinfo
  ///
  /// This endpoint returns the payload of the ID Token,  including session.id_token values, of the provided  OAuth 2.0 Access Token's consent request. In the case of authentication error, a WWW-Authenticate  header might be set in the response with more information  about the error. See the spec for more details about  header format. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<GetUserInfo?> v1LoginProjectProjectIdUserinfoGet(String projectId,) async {
    final response = await v1LoginProjectProjectIdUserinfoGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetUserInfo',) as GetUserInfo;
    
    }
    return null;
  }

  /// Discover Well-Known JSON Web Keys
  ///
  /// This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdWellKnownJwksJsonGetWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/.well-known/jwks.json'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Discover Well-Known JSON Web Keys
  ///
  /// This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<JsonWebKey?> v1LoginProjectProjectIdWellKnownJwksJsonGet(String projectId,) async {
    final response = await v1LoginProjectProjectIdWellKnownJwksJsonGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKey',) as JsonWebKey;
    
    }
    return null;
  }

  /// OpenID Connect Discovery
  ///
  /// A mechanism for an OpenID Connect Relying Party to discover the End-User's  OpenID Provider and obtain information needed to interact with it, including  its OAuth 2.0 endpoint locations. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<Response> v1LoginProjectProjectIdWellKnownOpenidConfigurationGetWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/project/{projectId}/.well-known/openid-configuration'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// OpenID Connect Discovery
  ///
  /// A mechanism for an OpenID Connect Relying Party to discover the End-User's  OpenID Provider and obtain information needed to interact with it, including  its OAuth 2.0 endpoint locations. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  Future<OIDCConfig?> v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(String projectId,) async {
    final response = await v1LoginProjectProjectIdWellKnownOpenidConfigurationGetWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'OIDCConfig',) as OIDCConfig;
    
    }
    return null;
  }
}
