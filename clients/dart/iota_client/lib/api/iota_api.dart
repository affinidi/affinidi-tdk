//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class IotaApi {
  IotaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// It exchanges limited token into cognito
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AwsExchangeCredentials] awsExchangeCredentials (required):
  ///   AwsExchangeCredentials
  Future<Response> awsExchangeCredentialsWithHttpInfo(AwsExchangeCredentials awsExchangeCredentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/aws-exchange-credentials';

    // ignore: prefer_final_locals
    Object? postBody = awsExchangeCredentials;

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

  /// It exchanges limited token into cognito
  ///
  /// Parameters:
  ///
  /// * [AwsExchangeCredentials] awsExchangeCredentials (required):
  ///   AwsExchangeCredentials
  Future<AwsExchangeCredentialsOK?> awsExchangeCredentials(AwsExchangeCredentials awsExchangeCredentials,) async {
    final response = await awsExchangeCredentialsWithHttpInfo(awsExchangeCredentials,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AwsExchangeCredentialsOK',) as AwsExchangeCredentialsOK;
    
    }
    return null;
  }

  /// It exchanges project token into cognito
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AwsExchangeCredentialsProjectToken] awsExchangeCredentialsProjectToken (required):
  ///   AwsExchangeCredentialsProjectToken
  Future<Response> awsExchangeCredentialsProjectTokenWithHttpInfo(AwsExchangeCredentialsProjectToken awsExchangeCredentialsProjectToken,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/aws-exchange-credentials/project-token';

    // ignore: prefer_final_locals
    Object? postBody = awsExchangeCredentialsProjectToken;

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

  /// It exchanges project token into cognito
  ///
  /// Parameters:
  ///
  /// * [AwsExchangeCredentialsProjectToken] awsExchangeCredentialsProjectToken (required):
  ///   AwsExchangeCredentialsProjectToken
  Future<IotaExchangeCredentialsOK?> awsExchangeCredentialsProjectToken(AwsExchangeCredentialsProjectToken awsExchangeCredentialsProjectToken,) async {
    final response = await awsExchangeCredentialsProjectTokenWithHttpInfo(awsExchangeCredentialsProjectToken,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IotaExchangeCredentialsOK',) as IotaExchangeCredentialsOK;
    
    }
    return null;
  }

  /// deletes pex queries
  ///
  /// deletes pex queries
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
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

  /// deletes pex queries
  ///
  /// deletes pex queries
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
  Future<void> deletePexQueries(String configurationId,) async {
    final response = await deletePexQueriesWithHttpInfo(configurationId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// It exchanges limited token into cognito sts identity credentials
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [IotaExchangeCredentials] iotaExchangeCredentials (required):
  ///   IotaAwsExchangeCredentials
  Future<Response> iotaExchangeCredentialsWithHttpInfo(IotaExchangeCredentials iotaExchangeCredentials,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/exchange-credentials';

    // ignore: prefer_final_locals
    Object? postBody = iotaExchangeCredentials;

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

  /// It exchanges limited token into cognito sts identity credentials
  ///
  /// Parameters:
  ///
  /// * [IotaExchangeCredentials] iotaExchangeCredentials (required):
  ///   IotaAwsExchangeCredentials
  Future<IotaExchangeCredentialsOK?> iotaExchangeCredentials(IotaExchangeCredentials iotaExchangeCredentials,) async {
    final response = await iotaExchangeCredentialsWithHttpInfo(iotaExchangeCredentials,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'IotaExchangeCredentialsOK',) as IotaExchangeCredentialsOK;
    
    }
    return null;
  }

  /// saves all pex queries
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
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

  /// saves all pex queries
  ///
  /// Parameters:
  ///
  /// * [String] configurationId (required):
  ///   iotaConfiguration Id
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
}
