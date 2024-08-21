//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ConsumerAuthApi {
  ConsumerAuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// The Consumer OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [ConsumerAuthTokenEndpointInput] consumerAuthTokenEndpointInput (required):
  ///   ConsumerAuthTokenEndpoint
  Future<Response> consumerAuthTokenEndpointWithHttpInfo(ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/consumer/oauth2/token';

    // ignore: prefer_final_locals
    Object? postBody = consumerAuthTokenEndpointInput;

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

  /// The Consumer OAuth 2.0 Token Endpoint
  ///
  /// Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/  The Ory SDK is not yet able to this endpoint properly.
  ///
  /// Parameters:
  ///
  /// * [ConsumerAuthTokenEndpointInput] consumerAuthTokenEndpointInput (required):
  ///   ConsumerAuthTokenEndpoint
  Future<ConsumerAuthTokenEndpointOutput?> consumerAuthTokenEndpoint(ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput,) async {
    final response = await consumerAuthTokenEndpointWithHttpInfo(consumerAuthTokenEndpointInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ConsumerAuthTokenEndpointOutput',) as ConsumerAuthTokenEndpointOutput;
    
    }
    return null;
  }
}
