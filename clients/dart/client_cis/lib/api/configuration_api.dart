//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConfigurationApi {
  ConfigurationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create issuance configuration, project have only one configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateIssuanceConfigInput] createIssuanceConfigInput (required):
  ///   Request body of create configuration
  Future<Response> createIssuanceConfigWithHttpInfo(CreateIssuanceConfigInput createIssuanceConfigInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration';

    // ignore: prefer_final_locals
    Object? postBody = createIssuanceConfigInput;

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

  /// Create issuance configuration, project have only one configuration
  ///
  /// Parameters:
  ///
  /// * [CreateIssuanceConfigInput] createIssuanceConfigInput (required):
  ///   Request body of create configuration
  Future<IssuanceConfig?> createIssuanceConfig(CreateIssuanceConfigInput createIssuanceConfigInput,) async {
    final response = await createIssuanceConfigWithHttpInfo(createIssuanceConfigInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssuanceConfig',) as IssuanceConfig;
    
    }
    return null;
  }

  /// Delete project issuance configuration
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteIssuanceConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration';

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

  /// Delete project issuance configuration
  Future<void> deleteIssuanceConfig() async {
    final response = await deleteIssuanceConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get issuance configuration for my selected project
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getIssuanceConfigWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration';

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

  /// Get issuance configuration for my selected project
  Future<IssuanceConfig?> getIssuanceConfig() async {
    final response = await getIssuanceConfigWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssuanceConfig',) as IssuanceConfig;
    
    }
    return null;
  }

  /// Update issuance configuration
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UpdateIssuanceConfigInput] updateIssuanceConfigInput (required):
  ///   Request body of update configuration
  Future<Response> updateIssuanceConfigWithHttpInfo(UpdateIssuanceConfigInput updateIssuanceConfigInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configuration';

    // ignore: prefer_final_locals
    Object? postBody = updateIssuanceConfigInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Update issuance configuration
  ///
  /// Parameters:
  ///
  /// * [UpdateIssuanceConfigInput] updateIssuanceConfigInput (required):
  ///   Request body of update configuration
  Future<IssuanceConfig?> updateIssuanceConfig(UpdateIssuanceConfigInput updateIssuanceConfigInput,) async {
    final response = await updateIssuanceConfigWithHttpInfo(updateIssuanceConfigInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IssuanceConfig',) as IssuanceConfig;
    
    }
    return null;
  }
}
