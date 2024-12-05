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

  /// Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.
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

  /// Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.
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

  /// Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
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

  /// Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
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

  /// Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [FetchIOTAVPResponseInput] fetchIOTAVPResponseInput (required):
  ///   FetchIOTAVPResponseInput
  Future<Response> fetchIotaVpResponseWithHttpInfo(FetchIOTAVPResponseInput fetchIOTAVPResponseInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/fetch-iota-response';

    // ignore: prefer_final_locals
    Object? postBody = fetchIOTAVPResponseInput;

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

  /// Fetches the client's callback that contains the user's shared data in a Verifiable Presentation format after a successful data-sharing flow.
  ///
  /// Parameters:
  ///
  /// * [FetchIOTAVPResponseInput] fetchIOTAVPResponseInput (required):
  ///   FetchIOTAVPResponseInput
  Future<FetchIOTAVPResponseOK?> fetchIotaVpResponse(FetchIOTAVPResponseInput fetchIOTAVPResponseInput,) async {
    final response = await fetchIotaVpResponseWithHttpInfo(fetchIOTAVPResponseInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'FetchIOTAVPResponseOK',) as FetchIOTAVPResponseOK;
    
    }
    return null;
  }

  /// Generates the request token for the Redirect mode to initiate the data-sharing flow.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [InitiateDataSharingRequestInput] initiateDataSharingRequestInput (required):
  ///   InitiateDataSharingRequestInput
  Future<Response> initiateDataSharingRequestWithHttpInfo(InitiateDataSharingRequestInput initiateDataSharingRequestInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/initiate-data-sharing-request';

    // ignore: prefer_final_locals
    Object? postBody = initiateDataSharingRequestInput;

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

  /// Generates the request token for the Redirect mode to initiate the data-sharing flow.
  ///
  /// Parameters:
  ///
  /// * [InitiateDataSharingRequestInput] initiateDataSharingRequestInput (required):
  ///   InitiateDataSharingRequestInput
  Future<InitiateDataSharingRequestOK?> initiateDataSharingRequest(InitiateDataSharingRequestInput initiateDataSharingRequestInput,) async {
    final response = await initiateDataSharingRequestWithHttpInfo(initiateDataSharingRequestInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InitiateDataSharingRequestOK',) as InitiateDataSharingRequestOK;
    
    }
    return null;
  }

  /// Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
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

  /// Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.
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
}
