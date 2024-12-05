//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PexQueryApi {
  PexQueryApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates a new Presentation Definition in the configuration to query data.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [CreatePexQueryInput] createPexQueryInput (required):
  ///   CreatePexQuery
  Future<Response> createPexQueryWithHttpInfo(String configurationId, CreatePexQueryInput createPexQueryInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/pex-queries'
      .replaceAll('{configurationId}', configurationId);

    // ignore: prefer_final_locals
    Object? postBody = createPexQueryInput;

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

  /// Creates a new Presentation Definition in the configuration to query data.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [CreatePexQueryInput] createPexQueryInput (required):
  ///   CreatePexQuery
  Future<PexQueryDto?> createPexQuery(String configurationId, CreatePexQueryInput createPexQueryInput,) async {
    final response = await createPexQueryWithHttpInfo(configurationId, createPexQueryInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PexQueryDto',) as PexQueryDto;
    
    }
    return null;
  }

  /// Deletes all Presentation Definition queries of a configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  Future<Response> deletePexQueriesWithHttpInfo(String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/delete-queries'
      .replaceAll('{configurationId}', configurationId);

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

  /// Deletes all Presentation Definition queries of a configuration.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  Future<void> deletePexQueries(String configurationId,) async {
    final response = await deletePexQueriesWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Deletes a Presentation Definition in the configuration by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  Future<Response> deletePexQueryByIdWithHttpInfo(String configurationId, String queryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/pex-queries/{queryId}'
      .replaceAll('{configurationId}', configurationId)
      .replaceAll('{queryId}', queryId);

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

  /// Deletes a Presentation Definition in the configuration by ID.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  Future<void> deletePexQueryById(String configurationId, String queryId,) async {
    final response = await deletePexQueryByIdWithHttpInfo(configurationId, queryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieves a Presentation Definition in the configuration by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  Future<Response> getPexQueryByIdWithHttpInfo(String configurationId, String queryId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/pex-queries/{queryId}'
      .replaceAll('{configurationId}', configurationId)
      .replaceAll('{queryId}', queryId);

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

  /// Retrieves a Presentation Definition in the configuration by ID.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  Future<PexQueryDto?> getPexQueryById(String configurationId, String queryId,) async {
    final response = await getPexQueryByIdWithHttpInfo(configurationId, queryId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PexQueryDto',) as PexQueryDto;
    
    }
    return null;
  }

  /// Lists all Presentation Definitions in the configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<Response> listPexQueriesWithHttpInfo(String configurationId, { int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/pex-queries'
      .replaceAll('{configurationId}', configurationId);

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

  /// Lists all Presentation Definitions in the configuration.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<ListPexQueriesOK?> listPexQueries(String configurationId, { int? limit, String? exclusiveStartKey, }) async {
    final response = await listPexQueriesWithHttpInfo(configurationId,  limit: limit, exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListPexQueriesOK',) as ListPexQueriesOK;
    
    }
    return null;
  }

  /// Saves all Presentation Definition queries of a configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [SavePexQueriesUpdateInput] savePexQueriesUpdateInput (required):
  ///   SavePexQueriesInput
  Future<Response> savePexQueriesWithHttpInfo(String configurationId, SavePexQueriesUpdateInput savePexQueriesUpdateInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/save-queries'
      .replaceAll('{configurationId}', configurationId);

    // ignore: prefer_final_locals
    Object? postBody = savePexQueriesUpdateInput;

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

  /// Saves all Presentation Definition queries of a configuration.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [SavePexQueriesUpdateInput] savePexQueriesUpdateInput (required):
  ///   SavePexQueriesInput
  Future<Object?> savePexQueries(String configurationId, SavePexQueriesUpdateInput savePexQueriesUpdateInput,) async {
    final response = await savePexQueriesWithHttpInfo(configurationId, savePexQueriesUpdateInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Updates the Presentation Definition in the configuration by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  ///
  /// * [UpdatePexQueryInput] updatePexQueryInput (required):
  ///   UpdatePexQueryById
  Future<Response> updatePexQueryByIdWithHttpInfo(String configurationId, String queryId, UpdatePexQueryInput updatePexQueryInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}/pex-queries/{queryId}'
      .replaceAll('{configurationId}', configurationId)
      .replaceAll('{queryId}', queryId);

    // ignore: prefer_final_locals
    Object? postBody = updatePexQueryInput;

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

  /// Updates the Presentation Definition in the configuration by ID.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  ///
  /// * [String] queryId (required):
  ///   The ID of the query.
  ///
  /// * [UpdatePexQueryInput] updatePexQueryInput (required):
  ///   UpdatePexQueryById
  Future<PexQueryDto?> updatePexQueryById(String configurationId, String queryId, UpdatePexQueryInput updatePexQueryInput,) async {
    final response = await updatePexQueryByIdWithHttpInfo(configurationId, queryId, updatePexQueryInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'PexQueryDto',) as PexQueryDto;
    
    }
    return null;
  }
}
