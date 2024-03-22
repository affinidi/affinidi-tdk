//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OtpApi {
  OtpApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/otp/complete' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CompleteRequest] completeRequest (required):
  ///   CompleteOtpOperation
  Future<Response> completeOtpOperationWithHttpInfo(CompleteRequest completeRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/otp/complete';

    // ignore: prefer_final_locals
    Object? postBody = completeRequest;

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
  /// * [CompleteRequest] completeRequest (required):
  ///   CompleteOtpOperation
  Future<CompleteResponse?> completeOtpOperation(CompleteRequest completeRequest,) async {
    final response = await completeOtpOperationWithHttpInfo(completeRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CompleteResponse',) as CompleteResponse;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/otp/initiate' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [InitiateRequest] initiateRequest (required):
  ///   InitiateOtpOperation
  Future<Response> initiateOtpOperationWithHttpInfo(InitiateRequest initiateRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/otp/initiate';

    // ignore: prefer_final_locals
    Object? postBody = initiateRequest;

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
  /// * [InitiateRequest] initiateRequest (required):
  ///   InitiateOtpOperation
  Future<InitiateResponse?> initiateOtpOperation(InitiateRequest initiateRequest,) async {
    final response = await initiateOtpOperationWithHttpInfo(initiateRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InitiateResponse',) as InitiateResponse;
    
    }
    return null;
  }
}
