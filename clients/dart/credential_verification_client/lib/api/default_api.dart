//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Verifying VC
  ///
  /// Verifying Verifiable Credentials (signatures)  `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyCredentialInput] verifyCredentialInput (required):
  ///   VerifyCredentials
  Future<Response> verifyCredentialsWithHttpInfo(VerifyCredentialInput verifyCredentialInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/verifier/verify-vcs';

    // ignore: prefer_final_locals
    Object? postBody = verifyCredentialInput;

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

  /// Verifying VC
  ///
  /// Verifying Verifiable Credentials (signatures)  `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.
  ///
  /// Parameters:
  ///
  /// * [VerifyCredentialInput] verifyCredentialInput (required):
  ///   VerifyCredentials
  Future<VerifyCredentialOutput?> verifyCredentials(VerifyCredentialInput verifyCredentialInput,) async {
    final response = await verifyCredentialsWithHttpInfo(verifyCredentialInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyCredentialOutput',) as VerifyCredentialOutput;
    
    }
    return null;
  }

  /// Verifying VP
  ///
  /// Verifying Verifiable Presentation (signatures)  `isValid` - true if presentation verified `error` verificaction error.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyPresentationInput] verifyPresentationInput (required):
  ///   VerifyPresentation
  Future<Response> verifyPresentationWithHttpInfo(VerifyPresentationInput verifyPresentationInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/verifier/verify-vp';

    // ignore: prefer_final_locals
    Object? postBody = verifyPresentationInput;

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

  /// Verifying VP
  ///
  /// Verifying Verifiable Presentation (signatures)  `isValid` - true if presentation verified `error` verificaction error.
  ///
  /// Parameters:
  ///
  /// * [VerifyPresentationInput] verifyPresentationInput (required):
  ///   VerifyPresentation
  Future<VerifyPresentationOutput?> verifyPresentation(VerifyPresentationInput verifyPresentationInput,) async {
    final response = await verifyPresentationWithHttpInfo(verifyPresentationInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'VerifyPresentationOutput',) as VerifyPresentationOutput;
    
    }
    return null;
  }
}
