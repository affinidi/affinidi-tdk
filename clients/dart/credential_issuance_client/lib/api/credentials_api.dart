//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CredentialsApi {
  CredentialsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [CreateCredentialInput] createCredentialInput (required):
  ///   Request body to issue credentials
  Future<Response> generateCredentialsWithHttpInfo(String projectId, CreateCredentialInput createCredentialInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/credential'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = createCredentialInput;

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

  /// Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [CreateCredentialInput] createCredentialInput (required):
  ///   Request body to issue credentials
  Future<CredentialResponse?> generateCredentials(String projectId, CreateCredentialInput createCredentialInput,) async {
    final response = await generateCredentialsWithHttpInfo(projectId, createCredentialInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CredentialResponse',) as CredentialResponse;
    
    }
    return null;
  }
}
