//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SessionApi {
  SessionApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Accept OIDC VP Response for Login Session
  ///
  /// Accepts and Validates the OIDC VP Response sent by the Wallet
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///   The id of the login session
  ///
  /// * [Map<String, Object>] requestBody:
  ///   LoginSessionAcceptResponse
  Future<Response> loginSessionAcceptResponseWithHttpInfo(String sessionId, { Map<String, Object>? requestBody, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/{sessionId}/accept-response'
      .replaceAll('{sessionId}', sessionId);

    // ignore: prefer_final_locals
    Object? postBody = requestBody;

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

  /// Accept OIDC VP Response for Login Session
  ///
  /// Accepts and Validates the OIDC VP Response sent by the Wallet
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///   The id of the login session
  ///
  /// * [Map<String, Object>] requestBody:
  ///   LoginSessionAcceptResponse
  Future<Map<String, Object>?> loginSessionAcceptResponse(String sessionId, { Map<String, Object>? requestBody, }) async {
    final response = await loginSessionAcceptResponseWithHttpInfo(sessionId,  requestBody: requestBody, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }

  /// Create Login Session for IDP Login
  ///
  /// Creates Login Session for IDP Login by using the Login Challenge
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginSessionForIDPInput] loginSessionForIDPInput:
  ///   LoginSessionForIdp
  Future<Response> loginSessionForIdpWithHttpInfo({ LoginSessionForIDPInput? loginSessionForIDPInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/for-idp';

    // ignore: prefer_final_locals
    Object? postBody = loginSessionForIDPInput;

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

  /// Create Login Session for IDP Login
  ///
  /// Creates Login Session for IDP Login by using the Login Challenge
  ///
  /// Parameters:
  ///
  /// * [LoginSessionForIDPInput] loginSessionForIDPInput:
  ///   LoginSessionForIdp
  Future<LoginSessionDto?> loginSessionForIdp({ LoginSessionForIDPInput? loginSessionForIDPInput, }) async {
    final response = await loginSessionForIdpWithHttpInfo( loginSessionForIDPInput: loginSessionForIDPInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'LoginSessionDto',) as LoginSessionDto;
    
    }
    return null;
  }

  /// Reject Response for Login Session
  ///
  /// The user declines the request for access to their data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///   The id of the login session
  ///
  /// * [LoginSessionRejectResponseRequest] loginSessionRejectResponseRequest:
  ///   LoginSessionRejectResponse
  Future<Response> loginSessionRejectResponseWithHttpInfo(String sessionId, { LoginSessionRejectResponseRequest? loginSessionRejectResponseRequest, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/{sessionId}/reject-response'
      .replaceAll('{sessionId}', sessionId);

    // ignore: prefer_final_locals
    Object? postBody = loginSessionRejectResponseRequest;

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

  /// Reject Response for Login Session
  ///
  /// The user declines the request for access to their data
  ///
  /// Parameters:
  ///
  /// * [String] sessionId (required):
  ///   The id of the login session
  ///
  /// * [LoginSessionRejectResponseRequest] loginSessionRejectResponseRequest:
  ///   LoginSessionRejectResponse
  Future<Map<String, Object>?> loginSessionRejectResponse(String sessionId, { LoginSessionRejectResponseRequest? loginSessionRejectResponseRequest, }) async {
    final response = await loginSessionRejectResponseWithHttpInfo(sessionId,  loginSessionRejectResponseRequest: loginSessionRejectResponseRequest, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Map<String, Object>'),);

    }
    return null;
  }
}
