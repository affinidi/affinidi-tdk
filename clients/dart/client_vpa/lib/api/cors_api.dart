//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CorsApi {
  CorsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> corsLoginSessionAcceptResponseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/{sessionId}/accept-response';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'OPTIONS',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  Future<CorsLoginSessionAcceptResponseOK?> corsLoginSessionAcceptResponse() async {
    final response = await corsLoginSessionAcceptResponseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorsLoginSessionAcceptResponseOK',) as CorsLoginSessionAcceptResponseOK;
    
    }
    return null;
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> corsLoginSessionForIdpWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/for-idp';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'OPTIONS',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  Future<CorsLoginSessionForIdpOK?> corsLoginSessionForIdp() async {
    final response = await corsLoginSessionForIdpWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorsLoginSessionForIdpOK',) as CorsLoginSessionForIdpOK;
    
    }
    return null;
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> corsLoginSessionRejectResponseWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/login/sessions/{sessionId}/reject-response';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'OPTIONS',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  Future<CorsLoginSessionRejectResponseOK?> corsLoginSessionRejectResponse() async {
    final response = await corsLoginSessionRejectResponseWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorsLoginSessionRejectResponseOK',) as CorsLoginSessionRejectResponseOK;
    
    }
    return null;
  }
}
