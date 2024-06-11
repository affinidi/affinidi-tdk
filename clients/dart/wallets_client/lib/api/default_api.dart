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

  /// Get revocation status list as RevocationListCredential
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Description for projectId.
  ///
  /// * [String] walletId (required):
  ///   Description for walletId.
  ///
  /// * [String] statusId (required):
  ///   Description for statusId.
  Future<Response> getRevocationCredentialStatusWithHttpInfo(String projectId, String walletId, String statusId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId}'
      .replaceAll('{projectId}', projectId)
      .replaceAll('{walletId}', walletId)
      .replaceAll('{statusId}', statusId);

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

  /// Get revocation status list as RevocationListCredential
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Description for projectId.
  ///
  /// * [String] walletId (required):
  ///   Description for walletId.
  ///
  /// * [String] statusId (required):
  ///   Description for statusId.
  Future<GetRevocationListCredentialResultDto?> getRevocationCredentialStatus(String projectId, String walletId, String statusId,) async {
    final response = await getRevocationCredentialStatusWithHttpInfo(projectId, walletId, statusId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetRevocationListCredentialResultDto',) as GetRevocationListCredentialResultDto;
    
    }
    return null;
  }
}
