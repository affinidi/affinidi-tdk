//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConsentApi {
  ConsentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// IDP consent request automated by adapter frontend
  ///
  /// IDP consent request automated by adapter frontend
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge:
  ///   Consent challenge provided by IDP
  Future<Response> consentRequestWithHttpInfo({ String? consentChallenge, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/consent/request';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (consentChallenge != null) {
      queryParams.addAll(_queryParams('', 'consent_challenge', consentChallenge));
    }

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

  /// IDP consent request automated by adapter frontend
  ///
  /// IDP consent request automated by adapter frontend
  ///
  /// Parameters:
  ///
  /// * [String] consentChallenge:
  ///   Consent challenge provided by IDP
  Future<void> consentRequest({ String? consentChallenge, }) async {
    final response = await consentRequestWithHttpInfo( consentChallenge: consentChallenge, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
