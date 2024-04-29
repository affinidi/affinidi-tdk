//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProjectsApi {
  ProjectsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /v1/projects/principals' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [AddUserToProjectInput] addUserToProjectInput (required):
  ///   AddPrincipalToProject
  Future<Response> addPrincipalToProjectWithHttpInfo(AddUserToProjectInput addUserToProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals';

    // ignore: prefer_final_locals
    Object? postBody = addUserToProjectInput;

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
  /// * [AddUserToProjectInput] addUserToProjectInput (required):
  ///   AddPrincipalToProject
  Future<void> addPrincipalToProject(AddUserToProjectInput addUserToProjectInput,) async {
    final response = await addPrincipalToProjectWithHttpInfo(addUserToProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'POST /v1/projects' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [CreateProjectInput] createProjectInput (required):
  ///   CreateProject
  Future<Response> createProjectWithHttpInfo(CreateProjectInput createProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

    // ignore: prefer_final_locals
    Object? postBody = createProjectInput;

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
  /// * [CreateProjectInput] createProjectInput (required):
  ///   CreateProject
  Future<ProjectDto?> createProject(CreateProjectInput createProjectInput,) async {
    final response = await createProjectWithHttpInfo(createProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectDto',) as ProjectDto;
    
    }
    return null;
  }

  /// Performs an HTTP 'DELETE /v1/projects/principals/{principalId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] principalId (required):
  ///   id of principal
  ///
  /// * [String] principalType (required):
  ///   type of principal
  Future<Response> deletePrincipalFromProjectWithHttpInfo(String principalId, String principalType,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals/{principalId}'
      .replaceAll('{principalId}', principalId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'principalType', principalType));

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
  /// * [String] principalId (required):
  ///   id of principal
  ///
  /// * [String] principalType (required):
  ///   type of principal
  Future<void> deletePrincipalFromProject(String principalId, String principalType,) async {
    final response = await deletePrincipalFromProjectWithHttpInfo(principalId, principalType,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Performs an HTTP 'GET /v1/projects/principals' operation and returns the [Response].
  Future<Response> listPrincipalsOfProjectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/principals';

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

  Future<UserList?> listPrincipalsOfProject() async {
    final response = await listPrincipalsOfProjectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'UserList',) as UserList;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /v1/projects' operation and returns the [Response].
  Future<Response> listProjectWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects';

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

  Future<ProjectList?> listProject() async {
    final response = await listProjectWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectList',) as ProjectList;
    
    }
    return null;
  }

  /// Performs an HTTP 'PATCH /v1/projects/{projectId}' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   projectId
  ///
  /// * [UpdateProjectInput] updateProjectInput (required):
  ///   UpdateProject
  Future<Response> updateProjectWithHttpInfo(String projectId, UpdateProjectInput updateProjectInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/projects/{projectId}'
      .replaceAll('{projectId}', projectId);

    // ignore: prefer_final_locals
    Object? postBody = updateProjectInput;

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

  /// Parameters:
  ///
  /// * [String] projectId (required):
  ///   projectId
  ///
  /// * [UpdateProjectInput] updateProjectInput (required):
  ///   UpdateProject
  Future<ProjectDto?> updateProject(String projectId, UpdateProjectInput updateProjectInput,) async {
    final response = await updateProjectWithHttpInfo(projectId, updateProjectInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ProjectDto',) as ProjectDto;
    
    }
    return null;
  }
}
