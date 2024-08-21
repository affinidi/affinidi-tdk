//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PoliciesApi {
  PoliciesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

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
}
