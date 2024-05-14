//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AllowListApi {
  AllowListApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Allow Single or Multiple Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<Response> allowGroupsWithHttpInfo({ GroupNamesInput? groupNamesInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/allow-list/groups/add';

    // ignore: prefer_final_locals
    Object? postBody = groupNamesInput;

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

  /// Allow Single or Multiple Groups
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<void> allowGroups({ GroupNamesInput? groupNamesInput, }) async {
    final response = await allowGroupsWithHttpInfo( groupNamesInput: groupNamesInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Disallow Single or Multiple Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<Response> disallowGroupsWithHttpInfo({ GroupNamesInput? groupNamesInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/allow-list/groups/remove';

    // ignore: prefer_final_locals
    Object? postBody = groupNamesInput;

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

  /// Disallow Single or Multiple Groups
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<void> disallowGroups({ GroupNamesInput? groupNamesInput, }) async {
    final response = await disallowGroupsWithHttpInfo( groupNamesInput: groupNamesInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Allowed Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<Response> listAllowedGroupsWithHttpInfo({ String? pageToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/allow-list/groups';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (pageToken != null) {
      queryParams.addAll(_queryParams('', 'pageToken', pageToken));
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

  /// Get Allowed Groups
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<GroupNames?> listAllowedGroups({ String? pageToken, }) async {
    final response = await listAllowedGroupsWithHttpInfo( pageToken: pageToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupNames',) as GroupNames;
    
    }
    return null;
  }
}
