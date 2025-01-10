//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class NodesApi {
  NodesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// creates node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateNodeInput] createNodeInput (required):
  ///   CreateNode
  Future<Response> createNodeWithHttpInfo(CreateNodeInput createNodeInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes';

    // ignore: prefer_final_locals
    Object? postBody = createNodeInput;

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

  /// creates node
  ///
  /// Parameters:
  ///
  /// * [CreateNodeInput] createNodeInput (required):
  ///   CreateNode
  Future<CreateNodeOK?> createNode(CreateNodeInput createNodeInput,) async {
    final response = await createNodeWithHttpInfo(createNodeInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'CreateNodeOK',) as CreateNodeOK;
    
    }
    return null;
  }

  /// Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  Future<Response> deleteNodeWithHttpInfo(String nodeId,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}'
      .replaceAll('{nodeId}', nodeId);

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

  /// Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  Future<DeleteNodeDto?> deleteNode(String nodeId,) async {
    final response = await deleteNodeWithHttpInfo(nodeId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'DeleteNodeDto',) as DeleteNodeDto;
    
    }
    return null;
  }

  /// Gets detailed information about the node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [String] dek:
  ///   A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided
  Future<Response> getDetailedNodeInfoWithHttpInfo(String nodeId, { String? dek, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dek != null) {
      queryParams.addAll(_queryParams('', 'dek', dek));
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

  /// Gets detailed information about the node
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [String] dek:
  ///   A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided
  Future<GetDetailedNodeInfoOK?> getDetailedNodeInfo(String nodeId, { String? dek, }) async {
    final response = await getDetailedNodeInfoWithHttpInfo(nodeId,  dek: dek, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetDetailedNodeInfoOK',) as GetDetailedNodeInfoOK;
    
    }
    return null;
  }

  /// Initialize root node, and TRASH_BIN
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> initNodesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/init';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Initialize root node, and TRASH_BIN
  Future<InitNodesOK?> initNodes() async {
    final response = await initNodesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'InitNodesOK',) as InitNodesOK;
    
    }
    return null;
  }

  /// lists children of the node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<Response> listNodeChildrenWithHttpInfo(String nodeId, { int? limit, String? exclusiveStartKey, }) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/children'
      .replaceAll('{nodeId}', nodeId);

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

  /// lists children of the node
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [int] limit:
  ///   Maximum number of records to fetch in a list
  ///
  /// * [String] exclusiveStartKey:
  ///   exclusiveStartKey for retrieving the next batch of data.
  Future<ListNodeChildrenOK?> listNodeChildren(String nodeId, { int? limit, String? exclusiveStartKey, }) async {
    final response = await listNodeChildrenWithHttpInfo(nodeId,  limit: limit, exclusiveStartKey: exclusiveStartKey, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListNodeChildrenOK',) as ListNodeChildrenOK;
    
    }
    return null;
  }

  /// lists children of the root node for the consumer
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> listRootNodeChildrenWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes';

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

  /// lists children of the root node for the consumer
  Future<ListRootNodeChildrenOK?> listRootNodeChildren() async {
    final response = await listRootNodeChildrenWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ListRootNodeChildrenOK',) as ListRootNodeChildrenOK;
    
    }
    return null;
  }

  /// Moves a node from source to destination along with the hierarchy
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [MoveNodeInput] moveNodeInput (required):
  ///   MoveNode
  Future<Response> moveNodeWithHttpInfo(String nodeId, MoveNodeInput moveNodeInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/move'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody = moveNodeInput;

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

  /// Moves a node from source to destination along with the hierarchy
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///
  /// * [MoveNodeInput] moveNodeInput (required):
  ///   MoveNode
  Future<MoveNodeDto?> moveNode(String nodeId, MoveNodeInput moveNodeInput,) async {
    final response = await moveNodeWithHttpInfo(nodeId, moveNodeInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveNodeDto',) as MoveNodeDto;
    
    }
    return null;
  }

  /// Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   nodeId of the TRASH_BIN
  ///
  /// * [String] nodeIdToRemove (required):
  ///   nodeId of the node to be deleted from TRASH_BIN
  Future<Response> permanentlyDeleteNodeWithHttpInfo(String nodeId, String nodeIdToRemove,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/remove/{nodeIdToRemove}'
      .replaceAll('{nodeId}', nodeId)
      .replaceAll('{nodeIdToRemove}', nodeIdToRemove);

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

  /// Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   nodeId of the TRASH_BIN
  ///
  /// * [String] nodeIdToRemove (required):
  ///   nodeId of the node to be deleted from TRASH_BIN
  Future<void> permanentlyDeleteNode(String nodeId, String nodeIdToRemove,) async {
    final response = await permanentlyDeleteNodeWithHttpInfo(nodeId, nodeIdToRemove,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Restore node marked for deletion from TRASH_BIN
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   nodeId of the TRASH_BIN
  ///
  /// * [String] nodeIdToRestore (required):
  ///   nodeId of the node to be restored from TRASH_BIN
  ///
  /// * [RestoreNodeFromTrashbin] restoreNodeFromTrashbin (required):
  ///   RestoreNodeFromTrashbin
  Future<Response> restoreNodeFromTrashbinWithHttpInfo(String nodeId, String nodeIdToRestore, RestoreNodeFromTrashbin restoreNodeFromTrashbin,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}/restore/{nodeIdToRestore}'
      .replaceAll('{nodeId}', nodeId)
      .replaceAll('{nodeIdToRestore}', nodeIdToRestore);

    // ignore: prefer_final_locals
    Object? postBody = restoreNodeFromTrashbin;

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

  /// Restore node marked for deletion from TRASH_BIN
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   nodeId of the TRASH_BIN
  ///
  /// * [String] nodeIdToRestore (required):
  ///   nodeId of the node to be restored from TRASH_BIN
  ///
  /// * [RestoreNodeFromTrashbin] restoreNodeFromTrashbin (required):
  ///   RestoreNodeFromTrashbin
  Future<MoveNodeDto?> restoreNodeFromTrashbin(String nodeId, String nodeIdToRestore, RestoreNodeFromTrashbin restoreNodeFromTrashbin,) async {
    final response = await restoreNodeFromTrashbinWithHttpInfo(nodeId, nodeIdToRestore, restoreNodeFromTrashbin,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MoveNodeDto',) as MoveNodeDto;
    
    }
    return null;
  }

  /// Updates a node
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [UpdateNodeInput] updateNodeInput (required):
  ///   UpdateNodeInput
  Future<Response> updateNodeWithHttpInfo(String nodeId, UpdateNodeInput updateNodeInput,) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/nodes/{nodeId}'
      .replaceAll('{nodeId}', nodeId);

    // ignore: prefer_final_locals
    Object? postBody = updateNodeInput;

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

  /// Updates a node
  ///
  /// Parameters:
  ///
  /// * [String] nodeId (required):
  ///   Description for nodeId.
  ///
  /// * [UpdateNodeInput] updateNodeInput (required):
  ///   UpdateNodeInput
  Future<NodeDto?> updateNode(String nodeId, UpdateNodeInput updateNodeInput,) async {
    final response = await updateNodeWithHttpInfo(nodeId, updateNodeInput,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'NodeDto',) as NodeDto;
    
    }
    return null;
  }
}
