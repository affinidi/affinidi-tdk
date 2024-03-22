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
  Future<Response> corsCompleteOtpOperationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/otp/complete';

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
  Future<CorsCompleteOtpOperationOK?> corsCompleteOtpOperation() async {
    final response = await corsCompleteOtpOperationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorsCompleteOtpOperationOK',) as CorsCompleteOtpOperationOK;
    
    }
    return null;
  }

  /// CORS Support
  ///
  /// Enables CORS by returning correct headers
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> corsInitiateOtpOperationWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/otp/initiate';

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
  Future<CorsInitiateOtpOperationOK?> corsInitiateOtpOperation() async {
    final response = await corsInitiateOtpOperationWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CorsInitiateOtpOperationOK',) as CorsInitiateOtpOperationOK;
    
    }
    return null;
  }
}
