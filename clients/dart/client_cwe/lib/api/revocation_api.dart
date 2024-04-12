//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RevocationApi {
  RevocationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Return revocation list credential.
  ///
  /// Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<Response> getRevocationListCredentialWithHttpInfo(String listId, String walletId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}/revocation-list/{listId}'
      .replaceAll('{listId}', listId)
      .replaceAll('{walletId}', walletId);

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

  /// Return revocation list credential.
  ///
  /// Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.
  ///
  /// Parameters:
  ///
  /// * [String] listId (required):
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  Future<GetRevocationListCredentialResultDto?> getRevocationListCredential(String listId, String walletId,) async {
    final response = await getRevocationListCredentialWithHttpInfo(listId, walletId,);
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

  /// Revoke Credential.
  ///
  /// Update index/credetial at appropriate revocation list (set revoken is true).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [RevokeCredentialInput] revokeCredentialInput (required):
  ///   RevokeCredential
  Future<Response> revokeCredentialWithHttpInfo(String walletId, RevokeCredentialInput revokeCredentialInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/wallets/{walletId}/revoke'
      .replaceAll('{walletId}', walletId);

    // ignore: prefer_final_locals
    Object? postBody = revokeCredentialInput;

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

  /// Revoke Credential.
  ///
  /// Update index/credetial at appropriate revocation list (set revoken is true).
  ///
  /// Parameters:
  ///
  /// * [String] walletId (required):
  ///   id of the wallet
  ///
  /// * [RevokeCredentialInput] revokeCredentialInput (required):
  ///   RevokeCredential
  Future<void> revokeCredential(String walletId, RevokeCredentialInput revokeCredentialInput,) async {
    final response = await revokeCredentialWithHttpInfo(walletId, revokeCredentialInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
