//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DenyListApi {
  DenyListApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Block Single or Multiple Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<Response> blockGroupsWithHttpInfo({ GroupNamesInput? groupNamesInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/groups/add';

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

  /// Block Single or Multiple Groups
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<void> blockGroups({ GroupNamesInput? groupNamesInput, }) async {
    final response = await blockGroupsWithHttpInfo( groupNamesInput: groupNamesInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Block Single or Multiple user ids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BlockedUsersInput] blockedUsersInput:
  ///   List of blocked users as input
  Future<Response> blockUsersWithHttpInfo({ BlockedUsersInput? blockedUsersInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/users/add';

    // ignore: prefer_final_locals
    Object? postBody = blockedUsersInput;

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

  /// Block Single or Multiple user ids
  ///
  /// Parameters:
  ///
  /// * [BlockedUsersInput] blockedUsersInput:
  ///   List of blocked users as input
  Future<void> blockUsers({ BlockedUsersInput? blockedUsersInput, }) async {
    final response = await blockUsersWithHttpInfo( blockedUsersInput: blockedUsersInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get Blocked Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<Response> listBlockedGroupsWithHttpInfo({ String? pageToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/groups';

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

  /// Get Blocked Groups
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<GroupNames?> listBlockedGroups({ String? pageToken, }) async {
    final response = await listBlockedGroupsWithHttpInfo( pageToken: pageToken, );
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

  /// Get List of Blocked Users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<Response> listBlockedUsersWithHttpInfo({ String? pageToken, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/users';

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

  /// Get List of Blocked Users
  ///
  /// Parameters:
  ///
  /// * [String] pageToken:
  Future<BlockedUsers?> listBlockedUsers({ String? pageToken, }) async {
    final response = await listBlockedUsersWithHttpInfo( pageToken: pageToken, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BlockedUsers',) as BlockedUsers;
    
    }
    return null;
  }

  /// Unblock Single or Multiple Groups
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<Response> unblockGroupsWithHttpInfo({ GroupNamesInput? groupNamesInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/groups/remove';

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

  /// Unblock Single or Multiple Groups
  ///
  /// Parameters:
  ///
  /// * [GroupNamesInput] groupNamesInput:
  ///   List of group names as input
  Future<void> unblockGroups({ GroupNamesInput? groupNamesInput, }) async {
    final response = await unblockGroupsWithHttpInfo( groupNamesInput: groupNamesInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unblock Single or Multiple user ids
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BlockedUsersInput] blockedUsersInput:
  ///   List of blocked users as input
  Future<Response> unblockUsersWithHttpInfo({ BlockedUsersInput? blockedUsersInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/deny-list/users/remove';

    // ignore: prefer_final_locals
    Object? postBody = blockedUsersInput;

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

  /// Unblock Single or Multiple user ids
  ///
  /// Parameters:
  ///
  /// * [BlockedUsersInput] blockedUsersInput:
  ///   List of blocked users as input
  Future<void> unblockUsers({ BlockedUsersInput? blockedUsersInput, }) async {
    final response = await unblockUsersWithHttpInfo( blockedUsersInput: blockedUsersInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
