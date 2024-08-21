//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConfigurationsApi {
  ConfigurationsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/configurations' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateIotaConfigurationInput] createIotaConfigurationInput (required):
  ///   CreateConfiguration
  Future<Response> createIotaConfigurationWithHttpInfo(CreateIotaConfigurationInput createIotaConfigurationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations';

    // ignore: prefer_final_locals
    Object? postBody = createIotaConfigurationInput;

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
  /// * [CreateIotaConfigurationInput] createIotaConfigurationInput (required):
  ///   CreateConfiguration
  Future<IotaConfigurationDto?> createIotaConfiguration(CreateIotaConfigurationInput createIotaConfigurationInput,) async {
    final response = await createIotaConfigurationWithHttpInfo(createIotaConfigurationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IotaConfigurationDto',) as IotaConfigurationDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/configurations/{configurationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<Response> deleteIotaConfigurationByIdWithHttpInfo(String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}'
      .replaceAll('{configurationId}', configurationId);

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
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<void> deleteIotaConfigurationById(String configurationId,) async {
    final response = await deleteIotaConfigurationByIdWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/configurations/{configurationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<Response> getIotaConfigurationByIdWithHttpInfo(String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}'
      .replaceAll('{configurationId}', configurationId);

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
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<IotaConfigurationDto?> getIotaConfigurationById(String configurationId,) async {
    final response = await getIotaConfigurationByIdWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IotaConfigurationDto',) as IotaConfigurationDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/projects/{projectId}/configurations/{configurationId}/metadata' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   project Id
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<Response> getIotaConfigurationMetaDataWithHttpInfo(String projectId, String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectId}/configurations/{configurationId}/metadata'
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
  /// * [String] projectId (required):
  ///   project Id
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<GetIotaConfigurationMetaDataOK?> getIotaConfigurationMetaData(String projectId, String configurationId,) async {
    final response = await getIotaConfigurationMetaDataWithHttpInfo(projectId, configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetIotaConfigurationMetaDataOK',) as GetIotaConfigurationMetaDataOK;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/configurations' operation and returns the [Response].
  Future<Response> listIotaConfigurationsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations';

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

  Future<ListConfigurationOK?> listIotaConfigurations() async {
    final response = await listIotaConfigurationsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListConfigurationOK',) as ListConfigurationOK;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /v1/configurations/{configurationId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  ///
  /// * [UpdateConfigurationByIdInput] updateConfigurationByIdInput (required):
  ///   UpdateConfigurationById
  Future<Response> updateIotaConfigurationByIdWithHttpInfo(String configurationId, UpdateConfigurationByIdInput updateConfigurationByIdInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/configurations/{configurationId}'
      .replaceAll('{configurationId}', configurationId);

    // ignore: prefer_final_locals
    Object? postBody = updateConfigurationByIdInput;

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
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  ///
  /// * [UpdateConfigurationByIdInput] updateConfigurationByIdInput (required):
  ///   UpdateConfigurationById
  Future<IotaConfigurationDto?> updateIotaConfigurationById(String configurationId, UpdateConfigurationByIdInput updateConfigurationByIdInput,) async {
    final response = await updateIotaConfigurationByIdWithHttpInfo(configurationId, updateConfigurationByIdInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IotaConfigurationDto',) as IotaConfigurationDto;
    
    }
    return null;
  }
}
