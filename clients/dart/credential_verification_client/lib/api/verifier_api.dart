//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VerifierApi {
  VerifierApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Validates JWT token
  ///
  /// Validates JWT object.  returns   isValid: boolean   payload: payload from JWT
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ValidateJwtInput] validateJwtInput (required):
  ///   ValidateJwt
  Future<Response> validateJwtWithHttpInfo(ValidateJwtInput validateJwtInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/verifier/validate-jwt';

    // ignore: prefer_final_locals
    Object? postBody = validateJwtInput;

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

  /// Validates JWT token
  ///
  /// Validates JWT object.  returns   isValid: boolean   payload: payload from JWT
  ///
  /// Parameters:
  ///
  /// * [ValidateJwtInput] validateJwtInput (required):
  ///   ValidateJwt
  Future<ValidateJwtOutput?> validateJwt(ValidateJwtInput validateJwtInput,) async {
    final response = await validateJwtWithHttpInfo(validateJwtInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ValidateJwtOutput',) as ValidateJwtOutput;
    
    }
    return null;
  }
}
