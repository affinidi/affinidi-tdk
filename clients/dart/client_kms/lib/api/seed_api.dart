//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SeedApi {
  SeedApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/seeds' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [EmptyInput] emptyInput:
  ///   CreateSeed
  Future<Response> createSeedWithHttpInfo({ EmptyInput? emptyInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds';

    // ignore: prefer_final_locals
    Object? postBody = emptyInput;

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
  /// * [EmptyInput] emptyInput:
  ///   CreateSeed
  Future<CreateSeedResultDto?> createSeed({ EmptyInput? emptyInput, }) async {
    final response = await createSeedWithHttpInfo( emptyInput: emptyInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSeedResultDto',) as CreateSeedResultDto;
    
    }
    return null;
  }

  /// Export seed as a mnemonic phrase (for seed 128bit / 256bit (default)). Returns the exported seed from the service
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed to be exported
  ///
  /// * [EmptyInput] emptyInput:
  ///   ExportSeedAsMnemonic
  Future<Response> exportSeedAsMnemonicWithHttpInfo(String id, { EmptyInput? emptyInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds/{id}/export-mnemonic'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = emptyInput;

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

  /// Export seed as a mnemonic phrase (for seed 128bit / 256bit (default)). Returns the exported seed from the service
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed to be exported
  ///
  /// * [EmptyInput] emptyInput:
  ///   ExportSeedAsMnemonic
  Future<ExportSeedResultDto?> exportSeedAsMnemonic(String id, { EmptyInput? emptyInput, }) async {
    final response = await exportSeedAsMnemonicWithHttpInfo(id,  emptyInput: emptyInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ExportSeedResultDto',) as ExportSeedResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/keys/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of key
  Future<Response> getKeyWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/keys/{id}'
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///   id of key
  Future<GetKeyResultDto?> getKey(String id,) async {
    final response = await getKeyWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetKeyResultDto',) as GetKeyResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/seeds/{id}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed record
  Future<Response> getSeedWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds/{id}'
      .replaceAll('{id}', id);

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
  /// * [String] id (required):
  ///   id of seed record
  Future<GetSeedResultDto?> getSeed(String id,) async {
    final response = await getSeedWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetSeedResultDto',) as GetSeedResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/seeds/import' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [ImportSeedRequest] importSeedRequest (required):
  ///   ImportSeed
  Future<Response> importSeedWithHttpInfo(ImportSeedRequest importSeedRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds/import';

    // ignore: prefer_final_locals
    Object? postBody = importSeedRequest;

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
  /// * [ImportSeedRequest] importSeedRequest (required):
  ///   ImportSeed
  Future<CreateSeedResultDto?> importSeed(ImportSeedRequest importSeedRequest,) async {
    final response = await importSeedWithHttpInfo(importSeedRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateSeedResultDto',) as CreateSeedResultDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/seeds' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] status:
  Future<Response> listSeedWithHttpInfo({ String? status, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (status != null) {
      queryParams.addAll(_queryParams('', 'status', status));
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
  /// * [String] status:
  Future<ListSeedResultDto?> listSeed({ String? status, }) async {
    final response = await listSeedWithHttpInfo( status: status, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListSeedResultDto',) as ListSeedResultDto;
    
    }
    return null;
  }

  /// revokes the seed, after that the keys derived from this seed cannot be used anymore. Revoked seed id will be listed in seed list with isRevoked=true flag
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed record
  ///
  /// * [EmptyInput] emptyInput:
  ///   RevokeSeed
  Future<Response> revokeSeedWithHttpInfo(String id, { EmptyInput? emptyInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/seeds/{id}/revoke'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = emptyInput;

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

  /// revokes the seed, after that the keys derived from this seed cannot be used anymore. Revoked seed id will be listed in seed list with isRevoked=true flag
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   id of seed record
  ///
  /// * [EmptyInput] emptyInput:
  ///   RevokeSeed
  Future<void> revokeSeed(String id, { EmptyInput? emptyInput, }) async {
    final response = await revokeSeedWithHttpInfo(id,  emptyInput: emptyInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
