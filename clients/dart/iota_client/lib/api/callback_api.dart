//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class CallbackApi {
  CallbackApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Processes the callback for OIDC4VP flows
  ///
  /// This endpoint handles callbacks from clients with data from OIDC4VP transactions, including state, presentation submission, and verification tokens. It updates the flow status based on the provided state and communicates the outcome through MQTT, ensuring the transaction's completion or notifying of any errors. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CallbackInput] callbackInput (required):
  ///   CallbackRequestInput
  Future<Response> iotOIDC4VPCallbackWithHttpInfo(CallbackInput callbackInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/callback';

    // ignore: prefer_final_locals
    Object? postBody = callbackInput;

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

  /// Processes the callback for OIDC4VP flows
  ///
  /// This endpoint handles callbacks from clients with data from OIDC4VP transactions, including state, presentation submission, and verification tokens. It updates the flow status based on the provided state and communicates the outcome through MQTT, ensuring the transaction's completion or notifying of any errors. 
  ///
  /// Parameters:
  ///
  /// * [CallbackInput] callbackInput (required):
  ///   CallbackRequestInput
  Future<CallbackResponseOK?> iotOIDC4VPCallback(CallbackInput callbackInput,) async {
    final response = await iotOIDC4VPCallbackWithHttpInfo(callbackInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CallbackResponseOK',) as CallbackResponseOK;
    
    }
    return null;
  }
}
