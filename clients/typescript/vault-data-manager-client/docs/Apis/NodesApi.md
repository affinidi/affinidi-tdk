# NodesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                             | HTTP request                                          | Description |
| ------------------------------------------------------------------ | ----------------------------------------------------- | ----------- |
| [**createNode**](NodesApi.md#createNode)                           | **POST** /v1/nodes                                    |             |
| [**createProfile**](NodesApi.md#createProfile)                     | **POST** /v1/nodes/create-profile                     |             |
| [**deleteNode**](NodesApi.md#deleteNode)                           | **DELETE** /v1/nodes/{nodeId}                         |             |
| [**getDetailedNodeInfo**](NodesApi.md#getDetailedNodeInfo)         | **GET** /v1/nodes/{nodeId}                            |             |
| [**initNodes**](NodesApi.md#initNodes)                             | **POST** /v1/nodes/init                               |             |
| [**listNodeChildren**](NodesApi.md#listNodeChildren)               | **GET** /v1/nodes/{nodeId}/children                   |             |
| [**listRootNodeChildren**](NodesApi.md#listRootNodeChildren)       | **GET** /v1/nodes                                     |             |
| [**moveNode**](NodesApi.md#moveNode)                               | **POST** /v1/nodes/{nodeId}/move                      |             |
| [**permanentlyDeleteNode**](NodesApi.md#permanentlyDeleteNode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |             |
| [**restoreNodeFromTrashbin**](NodesApi.md#restoreNodeFromTrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |             |
| [**updateNode**](NodesApi.md#updateNode)                           | **PATCH** /v1/nodes/{nodeId}                          |             |

<a name="createNode"></a>

# **createNode**

> CreateNodeOK createNode(CreateNodeInput)

    creates node

### Parameters

| Name                | Type                                                | Description | Notes |
| ------------------- | --------------------------------------------------- | ----------- | ----- |
| **CreateNodeInput** | [**CreateNodeInput**](../Models/CreateNodeInput.md) | CreateNode  |       |

### Return type

[**CreateNodeOK**](../Models/CreateNodeOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createProfile"></a>

# **createProfile**

> CreateNodeOK createProfile(CreateProfileInput)

    creates Profile with control plane

### Parameters

| Name                   | Type                                                      | Description | Notes |
| ---------------------- | --------------------------------------------------------- | ----------- | ----- |
| **CreateProfileInput** | [**CreateProfileInput**](../Models/CreateProfileInput.md) | CreateNode  |       |

### Return type

[**CreateNodeOK**](../Models/CreateNodeOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deleteNode"></a>

# **deleteNode**

> DeleteNodeDto deleteNode(nodeId)

    Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.

### Parameters

| Name       | Type       | Description | Notes             |
| ---------- | ---------- | ----------- | ----------------- |
| **nodeId** | **String** |             | [default to null] |

### Return type

[**DeleteNodeDto**](../Models/DeleteNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getDetailedNodeInfo"></a>

# **getDetailedNodeInfo**

> GetDetailedNodeInfoOK getDetailedNodeInfo(nodeId, dek)

    Gets detailed information about the node

### Parameters

| Name       | Type       | Description                                                                                                                 | Notes                        |
| ---------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **nodeId** | **String** |                                                                                                                             | [default to null]            |
| **dek**    | **String** | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided | [optional] [default to null] |

### Return type

[**GetDetailedNodeInfoOK**](../Models/GetDetailedNodeInfoOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="initNodes"></a>

# **initNodes**

> InitNodesOK initNodes()

    Initialize root node, and TRASH_BIN

### Parameters

This endpoint does not need any parameter.

### Return type

[**InitNodesOK**](../Models/InitNodesOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listNodeChildren"></a>

# **listNodeChildren**

> ListNodeChildrenOK listNodeChildren(nodeId, limit, exclusiveStartKey)

    lists children of the node

### Parameters

| Name                  | Type        | Description                                              | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------- | ---------------------------- |
| **nodeId**            | **String**  | Description for nodeId.                                  | [default to null]            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list             | [optional] [default to 10]   |
| **exclusiveStartKey** | **String**  | exclusiveStartKey for retrieving the next batch of data. | [optional] [default to null] |

### Return type

[**ListNodeChildrenOK**](../Models/ListNodeChildrenOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listRootNodeChildren"></a>

# **listRootNodeChildren**

> ListRootNodeChildrenOK listRootNodeChildren()

    lists children of the root node for the consumer

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListRootNodeChildrenOK**](../Models/ListRootNodeChildrenOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="moveNode"></a>

# **moveNode**

> MoveNodeDto moveNode(nodeId, MoveNodeInput)

    Moves a node from source to destination along with the hierarchy

### Parameters

| Name              | Type                                            | Description | Notes             |
| ----------------- | ----------------------------------------------- | ----------- | ----------------- |
| **nodeId**        | **String**                                      |             | [default to null] |
| **MoveNodeInput** | [**MoveNodeInput**](../Models/MoveNodeInput.md) | MoveNode    |                   |

### Return type

[**MoveNodeDto**](../Models/MoveNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="permanentlyDeleteNode"></a>

# **permanentlyDeleteNode**

> permanentlyDeleteNode(nodeId, nodeIdToRemove)

    Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.

### Parameters

| Name               | Type       | Description                                     | Notes             |
| ------------------ | ---------- | ----------------------------------------------- | ----------------- |
| **nodeId**         | **String** | nodeId of the TRASH_BIN                         | [default to null] |
| **nodeIdToRemove** | **String** | nodeId of the node to be deleted from TRASH_BIN | [default to null] |

### Return type

null (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="restoreNodeFromTrashbin"></a>

# **restoreNodeFromTrashbin**

> MoveNodeDto restoreNodeFromTrashbin(nodeId, nodeIdToRestore, RestoreNodeFromTrashbin)

    Restore node marked for deletion from TRASH_BIN

### Parameters

| Name                        | Type                                                                | Description                                      | Notes             |
| --------------------------- | ------------------------------------------------------------------- | ------------------------------------------------ | ----------------- |
| **nodeId**                  | **String**                                                          | nodeId of the TRASH_BIN                          | [default to null] |
| **nodeIdToRestore**         | **String**                                                          | nodeId of the node to be restored from TRASH_BIN | [default to null] |
| **RestoreNodeFromTrashbin** | [**RestoreNodeFromTrashbin**](../Models/RestoreNodeFromTrashbin.md) | RestoreNodeFromTrashbin                          |                   |

### Return type

[**MoveNodeDto**](../Models/MoveNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateNode"></a>

# **updateNode**

> NodeDto updateNode(nodeId, UpdateNodeInput)

    Updates a node

### Parameters

| Name                | Type                                                | Description             | Notes             |
| ------------------- | --------------------------------------------------- | ----------------------- | ----------------- |
| **nodeId**          | **String**                                          | Description for nodeId. | [default to null] |
| **UpdateNodeInput** | [**UpdateNodeInput**](../Models/UpdateNodeInput.md) | UpdateNodeInput         |                   |

### Return type

[**NodeDto**](../Models/NodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
