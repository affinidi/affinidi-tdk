//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class KeyApi {
  KeyApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/seeds/{id}/keys' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed record
  ///
  /// * [CreateKeysConfigInputDto] createKeysConfigInputDto (required):
  ///   CreateKey
  Future<Response> createKeyWithHttpInfo(String id, CreateKeysConfigInputDto createKeysConfigInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds/{id}/keys'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = createKeysConfigInputDto;

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
  /// * [String] id (required):
  ///   id of seed record
  ///
  /// * [CreateKeysConfigInputDto] createKeysConfigInputDto (required):
  ///   CreateKey
  Future<CreateKeysConfigResultDto?> createKey(String id, CreateKeysConfigInputDto createKeysConfigInputDto,) async {
    final response = await createKeyWithHttpInfo(id, createKeysConfigInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateKeysConfigResultDto',) as CreateKeysConfigResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/keys/{id}/decrypt-by-private-key' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed
  ///
  /// * [DecryptByPrivateKeyInputDto] decryptByPrivateKeyInputDto (required):
  ///   DecryptByPrivateKey
  Future<Response> decryptByPrivateKeyWithHttpInfo(String id, DecryptByPrivateKeyInputDto decryptByPrivateKeyInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys/{id}/decrypt-by-private-key'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = decryptByPrivateKeyInputDto;

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
  /// * [String] id (required):
  ///   id of seed
  ///
  /// * [DecryptByPrivateKeyInputDto] decryptByPrivateKeyInputDto (required):
  ///   DecryptByPrivateKey
  Future<DecryptByPrivateKeyResultDto?> decryptByPrivateKey(String id, DecryptByPrivateKeyInputDto decryptByPrivateKeyInputDto,) async {
    final response = await decryptByPrivateKeyWithHttpInfo(id, decryptByPrivateKeyInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DecryptByPrivateKeyResultDto',) as DecryptByPrivateKeyResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/keys/{id}/sign-credential' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of key
  ///
  /// * [SignCredentialInputDto] signCredentialInputDto (required):
  ///   SignCredential
  Future<Response> kmssignCredentialWithHttpInfo(String id, SignCredentialInputDto signCredentialInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys/{id}/sign-credential'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = signCredentialInputDto;

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
  /// * [String] id (required):
  ///   id of key
  ///
  /// * [SignCredentialInputDto] signCredentialInputDto (required):
  ///   SignCredential
  Future<SignCredentialResultDto?> kmssignCredential(String id, SignCredentialInputDto signCredentialInputDto,) async {
    final response = await kmssignCredentialWithHttpInfo(id, signCredentialInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignCredentialResultDto',) as SignCredentialResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/keys/{id}/sign' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of signing key configuration
  ///
  /// * [SignInputDto] signInputDto (required):
  ///   Sign
  Future<Response> signWithHttpInfo(String id, SignInputDto signInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys/{id}/sign'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = signInputDto;

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
  /// * [String] id (required):
  ///   id of signing key configuration
  ///
  /// * [SignInputDto] signInputDto (required):
  ///   Sign
  Future<SignResultDto?> sign(String id, SignInputDto signInputDto,) async {
    final response = await signWithHttpInfo(id, signInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignResultDto',) as SignResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/keys/{id}/sign-jwt' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed
  ///
  /// * [SignJwtInputDto] signJwtInputDto (required):
  ///   SignJwt
  Future<Response> signJwtWithHttpInfo(String id, SignJwtInputDto signJwtInputDto,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys/{id}/sign-jwt'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = signJwtInputDto;

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
  /// * [String] id (required):
  ///   id of seed
  ///
  /// * [SignJwtInputDto] signJwtInputDto (required):
  ///   SignJwt
  Future<SignJwtResultDto?> signJwt(String id, SignJwtInputDto signJwtInputDto,) async {
    final response = await signJwtWithHttpInfo(id, signJwtInputDto,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'SignJwtResultDto',) as SignJwtResultDto;
    
    }
    return null;
  }
}
