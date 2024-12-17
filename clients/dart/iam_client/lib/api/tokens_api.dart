//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class TokensApi {
  TokensApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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

  /// Performs an HTTP 'GET /v1/tokens/{tokenId}/projects' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] tokenId (required):
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<Response> listProjectsOfTokenWithHttpInfo(String tokenId, { int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens/{tokenId}/projects'
      .replaceAll('{tokenId}', tokenId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (exclusiveStartKey != null) {
      queryParams.addAll(_queryParams('', 'exclusiveStartKey', exclusiveStartKey));
    }

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
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<ProjectWithPolicyList?> listProjectsOfToken(String tokenId, { int? limit, String? exclusiveStartKey, }) async {
    final response = await listProjectsOfTokenWithHttpInfo(tokenId,  limit: limit, exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectWithPolicyList',) as ProjectWithPolicyList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/tokens' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<Response> listTokenWithHttpInfo({ int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/tokens';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (exclusiveStartKey != null) {
      queryParams.addAll(_queryParams('', 'exclusiveStartKey', exclusiveStartKey));
    }

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
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<TokenList?> listToken({ int? limit, String? exclusiveStartKey, }) async {
    final response = await listTokenWithHttpInfo( limit: limit, exclusiveStartKey: exclusiveStartKey, );
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
}
