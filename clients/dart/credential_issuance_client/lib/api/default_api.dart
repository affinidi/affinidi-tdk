//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// change credential status.
  ///
  /// change credential status.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   project id
  ///
  /// * [String] configurationId (required):
  ///   configuration id
  ///
  /// * [ChangeCredentialStatusInput] changeCredentialStatusInput (required):
  ///   Request body for changing credential status
  Future<Response> changeCredentialStatusWithHttpInfo(String projectId, String configurationId, ChangeCredentialStatusInput changeCredentialStatusInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/configurations/{configurationId}/issuance/change-status'
      .replaceAll('{projectId}', projectId)
      .replaceAll('{configurationId}', configurationId);

    // ignore: prefer_final_locals
    Object? postBody = changeCredentialStatusInput;

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

  /// change credential status.
  ///
  /// change credential status.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   project id
  ///
  /// * [String] configurationId (required):
  ///   configuration id
  ///
  /// * [ChangeCredentialStatusInput] changeCredentialStatusInput (required):
  ///   Request body for changing credential status
  Future<FlowData?> changeCredentialStatus(String projectId, String configurationId, ChangeCredentialStatusInput changeCredentialStatusInput,) async {
    final response = await changeCredentialStatusWithHttpInfo(projectId, configurationId, changeCredentialStatusInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FlowData',) as FlowData;
    
    }
    return null;
  }

  /// List records
  ///
  /// Retrieve a list of issuance data records.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [String] configurationId (required):
  ///   The id of the issuance configuration
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<Response> listIssuanceDataRecordsWithHttpInfo(String projectId, String configurationId, { int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records'
      .replaceAll('{projectId}', projectId)
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

  /// List records
  ///
  /// Retrieve a list of issuance data records.
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [String] configurationId (required):
  ///   The id of the issuance configuration
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<ListIssuanceRecordResponse?> listIssuanceDataRecords(String projectId, String configurationId, { int? limit, String? exclusiveStartKey, }) async {
    final response = await listIssuanceDataRecordsWithHttpInfo(projectId, configurationId,  limit: limit, exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListIssuanceRecordResponse',) as ListIssuanceRecordResponse;
    
    }
    return null;
  }
}
