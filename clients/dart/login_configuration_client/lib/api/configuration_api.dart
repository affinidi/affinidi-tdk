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

  /// Create a new login configuration
  ///
  /// Create a new login configuration  `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions.  An essential default definition is in place when it comes to the login process for end users using the Chrome extension.  This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateLoginConfigurationInput] createLoginConfigurationInput:
  ///   CreateLoginConfigurations
  Future<Response> createLoginConfigurationsWithHttpInfo({ CreateLoginConfigurationInput? createLoginConfigurationInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations';

    // ignore: prefer_final_locals
    Object? postBody = createLoginConfigurationInput;

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

  /// Create a new login configuration
  ///
  /// Create a new login configuration  `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions.  An essential default definition is in place when it comes to the login process for end users using the Chrome extension.  This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service. 
  ///
  /// Parameters:
  ///
  /// * [CreateLoginConfigurationInput] createLoginConfigurationInput:
  ///   CreateLoginConfigurations
  Future<CreateLoginConfigurationOutput?> createLoginConfigurations({ CreateLoginConfigurationInput? createLoginConfigurationInput, }) async {
    final response = await createLoginConfigurationsWithHttpInfo( createLoginConfigurationInput: createLoginConfigurationInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateLoginConfigurationOutput',) as CreateLoginConfigurationOutput;
    
    }
    return null;
  }

  /// Delete login configurations by ID
  ///
  /// Delete login configurations by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  Future<Response> deleteLoginConfigurationsByIdWithHttpInfo(String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations/{configurationId}'
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

  /// Delete login configurations by ID
  ///
  /// Delete login configurations by ID
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  Future<void> deleteLoginConfigurationsById(String configurationId,) async {
    final response = await deleteLoginConfigurationsByIdWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Client Metadata By  OAuth 2.0 Client ID
  ///
  /// Get Client Metadata By  OAuth 2.0 Client ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///   OAuth 2.0 Client ID
  Future<Response> getClientMetadataByClientIdWithHttpInfo(String clientId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations/metadata/{clientId}'
      .replaceAll('{clientId}', clientId);

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

  /// Get Client Metadata By  OAuth 2.0 Client ID
  ///
  /// Get Client Metadata By  OAuth 2.0 Client ID
  ///
  /// Parameters:
  ///
  /// * [String] clientId (required):
  ///   OAuth 2.0 Client ID
  Future<LoginConfigurationClientMetadataOutput?> getClientMetadataByClientId(String clientId,) async {
    final response = await getClientMetadataByClientIdWithHttpInfo(clientId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginConfigurationClientMetadataOutput',) as LoginConfigurationClientMetadataOutput;
    
    }
    return null;
  }

  /// Get login configuration by ID
  ///
  /// Get login configuration by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  Future<Response> getLoginConfigurationsByIdWithHttpInfo(String configurationId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations/{configurationId}'
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

  /// Get login configuration by ID
  ///
  /// Get login configuration by ID
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  Future<LoginConfigurationObject?> getLoginConfigurationsById(String configurationId,) async {
    final response = await getLoginConfigurationsByIdWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginConfigurationObject',) as LoginConfigurationObject;
    
    }
    return null;
  }

  /// List login configurations
  ///
  /// Endpoint to retrieve list of login configurations
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<Response> listLoginConfigurationsWithHttpInfo({ int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations';

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

  /// List login configurations
  ///
  /// Endpoint to retrieve list of login configurations
  ///
  /// Parameters:
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  Future<ListLoginConfigurationOutput?> listLoginConfigurations({ int? limit, String? exclusiveStartKey, }) async {
    final response = await listLoginConfigurationsWithHttpInfo( limit: limit, exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListLoginConfigurationOutput',) as ListLoginConfigurationOutput;
    
    }
    return null;
  }

  /// Update login configurations by ID
  ///
  /// Update login configurations by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  ///
  /// * [UpdateLoginConfigurationInput] updateLoginConfigurationInput:
  ///   UpdateLoginConfigurationsById
  Future<Response> updateLoginConfigurationsByIdWithHttpInfo(String configurationId, { UpdateLoginConfigurationInput? updateLoginConfigurationInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/configurations/{configurationId}'
      .replaceAll('{configurationId}', configurationId);

    // ignore: prefer_final_locals
    Object? postBody = updateLoginConfigurationInput;

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

  /// Update login configurations by ID
  ///
  /// Update login configurations by ID
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   The id of the login configuration
  ///
  /// * [UpdateLoginConfigurationInput] updateLoginConfigurationInput:
  ///   UpdateLoginConfigurationsById
  Future<LoginConfigurationObject?> updateLoginConfigurationsById(String configurationId, { UpdateLoginConfigurationInput? updateLoginConfigurationInput, }) async {
    final response = await updateLoginConfigurationsByIdWithHttpInfo(configurationId,  updateLoginConfigurationInput: updateLoginConfigurationInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginConfigurationObject',) as LoginConfigurationObject;
    
    }
    return null;
  }
}
