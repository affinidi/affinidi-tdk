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
  Future<Response> changeCredentialSatatusWithHttpInfo(String projectId, String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/configurations/{configurationId}/issuance/change-status'
      .replaceAll('{projectId}', projectId)
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
  Future<FlowData?> changeCredentialSatatus(String projectId, String configurationId,) async {
    final response = await changeCredentialSatatusWithHttpInfo(projectId, configurationId,);
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

  /// Return status list credential
  ///
  /// Return status list credential
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] statusListId (required):
  ///   id of the status list
  Future<Response> getStatusListWithHttpInfo(String projectId, String statusListId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/status-list/{statusListId}'
      .replaceAll('{projectId}', projectId)
      .replaceAll('{statusListId}', statusListId);

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

  /// Return status list credential
  ///
  /// Return status list credential
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///
  /// * [String] statusListId (required):
  ///   id of the status list
  Future<GetStatusListResultDto?> getStatusList(String projectId, String statusListId,) async {
    final response = await getStatusListWithHttpInfo(projectId, statusListId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetStatusListResultDto',) as GetStatusListResultDto;
    
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
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<Response> listIssuanceDataRecordsWithHttpInfo({ int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records';

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
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<ListIssuanceRecordResponse?> listIssuanceDataRecords({ int? limit, String? exclusiveStartKey, }) async {
    final response = await listIssuanceDataRecordsWithHttpInfo( limit: limit, exclusiveStartKey: exclusiveStartKey, );
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
