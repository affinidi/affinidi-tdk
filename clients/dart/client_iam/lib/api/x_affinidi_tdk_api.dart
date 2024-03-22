//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class XAffinidiTdkApi {
  XAffinidiTdkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/projects/principals' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AddUserToProjectInput] addUserToProjectInput (required):
  ///   AddPrincipalToProject
  Future<Response> addPrincipalToProjectWithHttpInfo(AddUserToProjectInput addUserToProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals';

    // ignore: prefer_final_locals
    Object? postBody = addUserToProjectInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Parameters:
  ///
  /// * [AddUserToProjectInput] addUserToProjectInput (required):
  ///   AddPrincipalToProject
  Future<void> addPrincipalToProject(AddUserToProjectInput addUserToProjectInput,) async {
    final response = await addPrincipalToProjectWithHttpInfo(addUserToProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// The Consumer OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConsumerAuthTokenEndpointInput] consumerAuthTokenEndpointInput (required):
  ///   ConsumerAuthTokenEndpoint
  Future<Response> consumerAuthTokenEndpointWithHttpInfo(ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/consumer/oauth2/token';

    // ignore: prefer_final_locals
    Object? postBody = consumerAuthTokenEndpointInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// The Consumer OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Parameters:
  ///
  /// * [ConsumerAuthTokenEndpointInput] consumerAuthTokenEndpointInput (required):
  ///   ConsumerAuthTokenEndpoint
  Future<ConsumerAuthTokenEndpointOutput?> consumerAuthTokenEndpoint(ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput,) async {
    final response = await consumerAuthTokenEndpointWithHttpInfo(consumerAuthTokenEndpointInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerAuthTokenEndpointOutput',) as ConsumerAuthTokenEndpointOutput;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/projects' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateProjectInput] createProjectInput (required):
  ///   CreateProject
  Future<Response> createProjectWithHttpInfo(CreateProjectInput createProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

    // ignore: prefer_final_locals
    Object? postBody = createProjectInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Parameters:
  ///
  /// * [CreateProjectInput] createProjectInput (required):
  ///   CreateProject
  Future<ProjectDto?> createProject(CreateProjectInput createProjectInput,) async {
    final response = await createProjectWithHttpInfo(createProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectDto',) as ProjectDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/sts/create-project-scoped-token' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateProjectScopedTokenInput] createProjectScopedTokenInput (required):
  ///   CreateProjectScopedToken
  Future<Response> createProjectScopedTokenWithHttpInfo(CreateProjectScopedTokenInput createProjectScopedTokenInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sts/create-project-scoped-token';

    // ignore: prefer_final_locals
    Object? postBody = createProjectScopedTokenInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Parameters:
  ///
  /// * [CreateProjectScopedTokenInput] createProjectScopedTokenInput (required):
  ///   CreateProjectScopedToken
  Future<CreateProjectScopedTokenOutput?> createProjectScopedToken(CreateProjectScopedTokenInput createProjectScopedTokenInput,) async {
    final response = await createProjectScopedTokenWithHttpInfo(createProjectScopedTokenInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateProjectScopedTokenOutput',) as CreateProjectScopedTokenOutput;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/tokens' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateTokenInput] createTokenInput (required):
  ///   CreateToken
  Future<Response> createTokenWithHttpInfo(CreateTokenInput createTokenInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens';

    // ignore: prefer_final_locals
    Object? postBody = createTokenInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Parameters:
  ///
  /// * [CreateTokenInput] createTokenInput (required):
  ///   CreateToken
  Future<TokenDto?> createToken(CreateTokenInput createTokenInput,) async {
    final response = await createTokenWithHttpInfo(createTokenInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenDto',) as TokenDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/projects/principals/{principalId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///   id of principal
  ///
  /// * [String] principalType (required):
  ///   type of principal
  Future<Response> deletePrincipalFromProjectWithHttpInfo(String principalId, String principalType,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals/{principalId}'
      .replaceAll('{principalId}', principalId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'principalType', principalType));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///   id of principal
  ///
  /// * [String] principalType (required):
  ///   type of principal
  Future<void> deletePrincipalFromProject(String principalId, String principalType,) async {
    final response = await deletePrincipalFromProjectWithHttpInfo(principalId, principalType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/tokens/{tokenId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  Future<Response> deleteTokenWithHttpInfo(String tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{tokenId}'
      .replaceAll('{tokenId}', tokenId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] tokenId (required):
  Future<void> deleteToken(String tokenId,) async {
    final response = await deleteTokenWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/policies/principals/{principalId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///
  /// * [String] principalType (required):
  Future<Response> getPoliciesWithHttpInfo(String principalId, String principalType,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/principals/{principalId}'
      .replaceAll('{principalId}', principalId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'principalType', principalType));

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

  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///
  /// * [String] principalType (required):
  Future<PolicyDto?> getPolicies(String principalId, String principalType,) async {
    final response = await getPoliciesWithHttpInfo(principalId, principalType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyDto',) as PolicyDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/tokens/{tokenId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  Future<Response> getTokenWithHttpInfo(String tokenId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{tokenId}'
      .replaceAll('{tokenId}', tokenId);

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

  /// Parameters:
  ///
  /// * [String] tokenId (required):
  Future<TokenDto?> getToken(String tokenId,) async {
    final response = await getTokenWithHttpInfo(tokenId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenDto',) as TokenDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /.well-known/jwks.json' operation and returns the [Response].
  Future<Response> getWellKnownJwksWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/.well-known/jwks.json';

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

  Future<JsonWebKeySetDto?> getWellKnownJwks() async {
    final response = await getWellKnownJwksWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'JsonWebKeySetDto',) as JsonWebKeySetDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/projects/principals' operation and returns the [Response].
  Future<Response> listPrincipalsOfProjectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals';

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

  Future<UserList?> listPrincipalsOfProject() async {
    final response = await listPrincipalsOfProjectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserList',) as UserList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/projects' operation and returns the [Response].
  Future<Response> listProjectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

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

  Future<ProjectList?> listProject() async {
    final response = await listProjectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectList',) as ProjectList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/tokens' operation and returns the [Response].
  Future<Response> listTokenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens';

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

  Future<TokenList?> listToken() async {
    final response = await listTokenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenList',) as TokenList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PUT /v1/policies/principals/{principalId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///
  /// * [String] principalType (required):
  ///
  /// * [PolicyDto] policyDto (required):
  ///   UpdatePolicies
  Future<Response> updatePoliciesWithHttpInfo(String principalId, String principalType, PolicyDto policyDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/policies/principals/{principalId}'
      .replaceAll('{principalId}', principalId);

    // ignore: prefer_final_locals
    Object? postBody = policyDto;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'principalType', principalType));

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///
  /// * [String] principalType (required):
  ///
  /// * [PolicyDto] policyDto (required):
  ///   UpdatePolicies
  Future<PolicyDto?> updatePolicies(String principalId, String principalType, PolicyDto policyDto,) async {
    final response = await updatePoliciesWithHttpInfo(principalId, principalType, policyDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PolicyDto',) as PolicyDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /v1/projects/{projectId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   projectId
  ///
  /// * [UpdateProjectInput] updateProjectInput (required):
  ///   UpdateProject
  Future<Response> updateProjectWithHttpInfo(String projectId, UpdateProjectInput updateProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectId}'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = updateProjectInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   projectId
  ///
  /// * [UpdateProjectInput] updateProjectInput (required):
  ///   UpdateProject
  Future<ProjectDto?> updateProject(String projectId, UpdateProjectInput updateProjectInput,) async {
    final response = await updateProjectWithHttpInfo(projectId, updateProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectDto',) as ProjectDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /v1/tokens/{tokenId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///
  /// * [UpdateTokenInput] updateTokenInput (required):
  ///   UpdateToken
  Future<Response> updateTokenWithHttpInfo(String tokenId, UpdateTokenInput updateTokenInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{tokenId}'
      .replaceAll('{tokenId}', tokenId);

    // ignore: prefer_final_locals
    Object? postBody = updateTokenInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///
  /// * [UpdateTokenInput] updateTokenInput (required):
  ///   UpdateToken
  Future<TokenDto?> updateToken(String tokenId, UpdateTokenInput updateTokenInput,) async {
    final response = await updateTokenWithHttpInfo(tokenId, updateTokenInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'TokenDto',) as TokenDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyDelete(String proxy,) async {
    final response = await v1AuthProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyGet(String proxy,) async {
    final response = await v1AuthProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPatch(String proxy,) async {
    final response = await v1AuthProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPost(String proxy,) async {
    final response = await v1AuthProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/auth/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1AuthProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/auth/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1AuthProxyPut(String proxy,) async {
    final response = await v1AuthProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'DELETE /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyDeleteWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyDelete(String proxy,) async {
    final response = await v1IdpProxyDeleteWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyGetWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyGet(String proxy,) async {
    final response = await v1IdpProxyGetWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PATCH /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPatchWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPatch(String proxy,) async {
    final response = await v1IdpProxyPatchWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPostWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

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

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPost(String proxy,) async {
    final response = await v1IdpProxyPostWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'PUT /v1/idp/{proxy+}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<Response> v1IdpProxyPutWithHttpInfo(String proxy,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/idp/{proxy+}'
      .replaceAll('{proxy}', proxy);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] proxy (required):
  Future<void> v1IdpProxyPut(String proxy,) async {
    final response = await v1IdpProxyPutWithHttpInfo(proxy,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/sts/whoami' operation and returns the [Response].
  Future<Response> whoamiWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/sts/whoami';

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

  Future<WhoamiDto?> whoami() async {
    final response = await whoamiWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'WhoamiDto',) as WhoamiDto;
    
    }
    return null;
  }
}
