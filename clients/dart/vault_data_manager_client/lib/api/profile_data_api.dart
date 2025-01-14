//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProfileDataApi {
  ProfileDataApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Retrieves information from a profile.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   the nodeId of the node being operated on
  ///
  /// * [String] dek (required):
  ///   A base64url encoded data encryption key, encrypted using VFS public
  ///
  /// * [String] query:
  ///   data query, TBD maybe encode it with base64 to make it url friendly?
  Future<Response> queryProfileDataWithHttpInfo(String nodeId, String dek, { String? query, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/profile-data'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (query != null) {
      queryParams.addAll(_queryParams('', 'query', query));
    }
      queryParams.addAll(_queryParams('', 'dek', dek));

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

  /// Retrieves information from a profile.
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   the nodeId of the node being operated on
  ///
  /// * [String] dek (required):
  ///   A base64url encoded data encryption key, encrypted using VFS public
  ///
  /// * [String] query:
  ///   data query, TBD maybe encode it with base64 to make it url friendly?
  Future<QueryProfileDataOK?> queryProfileData(String nodeId, String dek, { String? query, }) async {
    final response = await queryProfileDataWithHttpInfo(nodeId, dek,  query: query, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'QueryProfileDataOK',) as QueryProfileDataOK;
    
    }
    return null;
  }

  /// Updates the profile with the given data
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [UpdateProfileDataInput] updateProfileDataInput (required):
  ///   Updates the schema with the given data
  Future<Response> updateProfileDataWithHttpInfo(String nodeId, UpdateProfileDataInput updateProfileDataInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/profile-data'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody = updateProfileDataInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Updates the profile with the given data
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [UpdateProfileDataInput] updateProfileDataInput (required):
  ///   Updates the schema with the given data
  Future<UpdateProfileDataOK?> updateProfileData(String nodeId, UpdateProfileDataInput updateProfileDataInput,) async {
    final response = await updateProfileDataWithHttpInfo(nodeId, updateProfileDataInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UpdateProfileDataOK',) as UpdateProfileDataOK;
    
    }
    return null;
  }
}
