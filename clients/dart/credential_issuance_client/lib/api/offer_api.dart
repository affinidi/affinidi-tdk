//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class OfferApi {
  OfferApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Endpoint used to return Credential Offer details, used with `credential_offer_uri` response
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [String] issuanceId (required):
  ///   issuanceId from credential_offer_uri
  Future<Response> getCredentialOfferWithHttpInfo(String projectId, String issuanceId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/{projectId}/offers/{issuanceId}'
      .replaceAll('{projectId}', projectId)
      .replaceAll('{issuanceId}', issuanceId);

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

  /// Endpoint used to return Credential Offer details, used with `credential_offer_uri` response
  ///
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   Affinidi project id
  ///
  /// * [String] issuanceId (required):
  ///   issuanceId from credential_offer_uri
  Future<CredentialOfferResponse?> getCredentialOffer(String projectId, String issuanceId,) async {
    final response = await getCredentialOfferWithHttpInfo(projectId, issuanceId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CredentialOfferResponse',) as CredentialOfferResponse;
    
    }
    return null;
  }
}
