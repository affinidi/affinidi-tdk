//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class GroupApi {
  GroupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/groups/{groupName}/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [AddUserToGroupInput] addUserToGroupInput (required):
  ///   AddUserToGroup
  Future<Response> addUserToGroupWithHttpInfo(String groupName, AddUserToGroupInput addUserToGroupInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups/{groupName}/users'
      .replaceAll('{groupName}', groupName);

    // ignore: prefer_final_locals
    Object? postBody = addUserToGroupInput;

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

  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [AddUserToGroupInput] addUserToGroupInput (required):
  ///   AddUserToGroup
  Future<GroupUserMappingDto?> addUserToGroup(String groupName, AddUserToGroupInput addUserToGroupInput,) async {
    final response = await addUserToGroupWithHttpInfo(groupName, addUserToGroupInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupUserMappingDto',) as GroupUserMappingDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /v1/groups' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateGroupInput] createGroupInput (required):
  ///   CreateGroup
  Future<Response> createGroupWithHttpInfo(CreateGroupInput createGroupInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups';

    // ignore: prefer_final_locals
    Object? postBody = createGroupInput;

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

  /// Parameters:
  ///
  /// * [CreateGroupInput] createGroupInput (required):
  ///   CreateGroup
  Future<GroupDto?> createGroup(CreateGroupInput createGroupInput,) async {
    final response = await createGroupWithHttpInfo(createGroupInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/groups/{groupName}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] groupName (required):
  Future<Response> deleteGroupWithHttpInfo(String groupName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups/{groupName}'
      .replaceAll('{groupName}', groupName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] groupName (required):
  Future<void> deleteGroup(String groupName,) async {
    final response = await deleteGroupWithHttpInfo(groupName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/groups/{groupName}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] groupName (required):
  Future<Response> getGroupByIdWithHttpInfo(String groupName,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups/{groupName}'
      .replaceAll('{groupName}', groupName);

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

  /// Parameters:
  ///
  /// * [String] groupName (required):
  Future<GroupDto?> getGroupById(String groupName,) async {
    final response = await getGroupByIdWithHttpInfo(groupName,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupDto',) as GroupDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/groups/{groupName}/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  ///
  /// * [String] sortOrder:
  ///   sort response in specific order. By default it is in desc order
  Future<Response> listGroupUserMappingsWithHttpInfo(String groupName, { int? limit, String? exclusiveStartKey, String? sortOrder, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups/{groupName}/users'
      .replaceAll('{groupName}', groupName);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (exclusiveStartKey != null) {
      queryParams.addAll(_queryParams('', 'exclusiveStartKey', exclusiveStartKey));
    }
    if (sortOrder != null) {
      queryParams.addAll(_queryParams('', 'sortOrder', sortOrder));
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

  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
  ///
  /// * [String] sortOrder:
  ///   sort response in specific order. By default it is in desc order
  Future<GroupUserMappingsList?> listGroupUserMappings(String groupName, { int? limit, String? exclusiveStartKey, String? sortOrder, }) async {
    final response = await listGroupUserMappingsWithHttpInfo(groupName,  limit: limit, exclusiveStartKey: exclusiveStartKey, sortOrder: sortOrder, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupUserMappingsList',) as GroupUserMappingsList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/groups' operation and returns the [Response].
  Future<Response> listGroupsWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups';

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

  Future<GroupsList?> listGroups() async {
    final response = await listGroupsWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GroupsList',) as GroupsList;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/groups/{groupName}/users' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [RemoveUserFromGroupInput] removeUserFromGroupInput (required):
  ///   Remove user from group
  Future<Response> removeUserFromGroupWithHttpInfo(String groupName, RemoveUserFromGroupInput removeUserFromGroupInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/groups/{groupName}/users'
      .replaceAll('{groupName}', groupName);

    // ignore: prefer_final_locals
    Object? postBody = removeUserFromGroupInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] groupName (required):
  ///
  /// * [RemoveUserFromGroupInput] removeUserFromGroupInput (required):
  ///   Remove user from group
  Future<void> removeUserFromGroup(String groupName, RemoveUserFromGroupInput removeUserFromGroupInput,) async {
    final response = await removeUserFromGroupWithHttpInfo(groupName, removeUserFromGroupInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
