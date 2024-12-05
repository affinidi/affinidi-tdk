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

  /// Creates a new Affinidi Iota Framework configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
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

  /// Creates a new Affinidi Iota Framework configuration.
  ///
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

  /// Deletes an Affinidi Iota Framework configuration by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// Deletes an Affinidi Iota Framework configuration by ID.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
  Future<void> deleteIotaConfigurationById(String configurationId,) async {
    final response = await deleteIotaConfigurationByIdWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Retrieves the details of an Affinidi Iota Framework configuration.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// Retrieves the details of an Affinidi Iota Framework configuration.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// Retrieves the client metadata of an Affinidi Iota Framework configuration. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   The ID of the project.
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// Retrieves the client metadata of an Affinidi Iota Framework configuration. 
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   The ID of the project.
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// List all Affinidi Iota Framework configurations.
  ///
  /// Note: This method returns the HTTP [Response].
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

  /// List all Affinidi Iota Framework configurations.
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

  /// Updates the details of an Affinidi Iota Framework configuration by ID.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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

  /// Updates the details of an Affinidi Iota Framework configuration by ID.
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   ID of the Affinidi Iota Framework configuration.
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
