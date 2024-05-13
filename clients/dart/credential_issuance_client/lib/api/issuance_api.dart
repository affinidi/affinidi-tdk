//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IssuanceApi {
  IssuanceApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get issuance status
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] issuanceId (required):
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  Future<Response> issuanceStateWithHttpInfo(String issuanceId, String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/issuance/state/{issuanceId}'
      .replaceAll('{issuanceId}', issuanceId)
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

  /// Get issuance status
  ///
  /// Parameters:
  ///
  /// * [String] issuanceId (required):
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  Future<IssuanceStateResponse?> issuanceState(String issuanceId, String projectId,) async {
    final response = await issuanceStateWithHttpInfo(issuanceId, projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssuanceStateResponse',) as IssuanceStateResponse;
    
    }
    return null;
  }

  /// List all issuances for Project
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  Future<Response> listIssuanceWithHttpInfo(String projectId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/issuance'
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

  /// List all issuances for Project
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  Future<ListIssuanceResponse?> listIssuance(String projectId,) async {
    final response = await listIssuanceWithHttpInfo(projectId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListIssuanceResponse',) as ListIssuanceResponse;
    
    }
    return null;
  }

  /// Endpoint used b websites to start the issuance process
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [StartIssuanceInput] startIssuanceInput (required):
  ///   Request body to start issuance
  Future<Response> startIssuanceWithHttpInfo(String projectId, StartIssuanceInput startIssuanceInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/issuance/start'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = startIssuanceInput;

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

  /// Endpoint used b websites to start the issuance process
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [StartIssuanceInput] startIssuanceInput (required):
  ///   Request body to start issuance
  Future<StartIssuanceResponse?> startIssuance(String projectId, StartIssuanceInput startIssuanceInput,) async {
    final response = await startIssuanceWithHttpInfo(projectId, startIssuanceInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'StartIssuanceResponse',) as StartIssuanceResponse;
    
    }
    return null;
  }
}
