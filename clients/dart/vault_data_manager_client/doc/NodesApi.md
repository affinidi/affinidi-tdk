# affinidi_tdk_vault_data_manager_client.api.NodesApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                             | HTTP request                                          | Description |
| ------------------------------------------------------------------ | ----------------------------------------------------- | ----------- |
| [**createNode**](NodesApi.md#createnode)                           | **POST** /v1/nodes                                    |
| [**createProfile**](NodesApi.md#createprofile)                     | **POST** /v1/nodes/create-profile                     |
| [**deleteNode**](NodesApi.md#deletenode)                           | **DELETE** /v1/nodes/{nodeId}                         |
| [**getDetailedNodeInfo**](NodesApi.md#getdetailednodeinfo)         | **GET** /v1/nodes/{nodeId}                            |
| [**initNodes**](NodesApi.md#initnodes)                             | **POST** /v1/nodes/init                               |
| [**listNodeChildren**](NodesApi.md#listnodechildren)               | **GET** /v1/nodes/{nodeId}/children                   |
| [**listRootNodeChildren**](NodesApi.md#listrootnodechildren)       | **GET** /v1/nodes                                     |
| [**moveNode**](NodesApi.md#movenode)                               | **POST** /v1/nodes/{nodeId}/move                      |
| [**permanentlyDeleteNode**](NodesApi.md#permanentlydeletenode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |
| [**restoreNodeFromTrashbin**](NodesApi.md#restorenodefromtrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |
| [**updateNode**](NodesApi.md#updatenode)                           | **PATCH** /v1/nodes/{nodeId}                          |

# **createNode**

> CreateNodeOK createNode(createNodeInput)

creates node

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final CreateNodeInput createNodeInput = ; // CreateNodeInput | CreateNode

try {
    final response = api.createNode(createNodeInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->createNode: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description | Notes |
| ------------------- | ----------------------------------------- | ----------- | ----- |
| **createNodeInput** | [**CreateNodeInput**](CreateNodeInput.md) | CreateNode  |

### Return type

[**CreateNodeOK**](CreateNodeOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfile**

> CreateNodeOK createProfile(createProfileInput)

creates Profile with control plane

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final CreateProfileInput createProfileInput = ; // CreateProfileInput | CreateNode

try {
    final response = api.createProfile(createProfileInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->createProfile: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **createProfileInput** | [**CreateProfileInput**](CreateProfileInput.md) | CreateNode  |

### Return type

[**CreateNodeOK**](CreateNodeOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNode**

> DeleteNodeDto deleteNode(nodeId)

Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String |

try {
    final response = api.deleteNode(nodeId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->deleteNode: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **nodeId** | **String** |             |

### Return type

[**DeleteNodeDto**](DeleteNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDetailedNodeInfo**

> GetDetailedNodeInfoOK getDetailedNodeInfo(nodeId, dek)

Gets detailed information about the node

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String |
final String dek = dek_example; // String | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided

try {
    final response = api.getDetailedNodeInfo(nodeId, dek);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->getDetailedNodeInfo: $e\n');
}
```

### Parameters

| Name       | Type       | Description                                                                                                                 | Notes      |
| ---------- | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **nodeId** | **String** |                                                                                                                             |
| **dek**    | **String** | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided | [optional] |

### Return type

[**GetDetailedNodeInfoOK**](GetDetailedNodeInfoOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initNodes**

> InitNodesOK initNodes()

Initialize root node, and TRASH_BIN

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();

try {
    final response = api.initNodes();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->initNodes: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**InitNodesOK**](InitNodesOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNodeChildren**

> ListNodeChildrenOK listNodeChildren(nodeId, limit, exclusiveStartKey)

lists children of the node

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String | Description for nodeId.
final int limit = 56; // int | Maximum number of records to fetch in a list
final String exclusiveStartKey = exclusiveStartKey_example; // String | exclusiveStartKey for retrieving the next batch of data.

try {
    final response = api.listNodeChildren(nodeId, limit, exclusiveStartKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->listNodeChildren: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                              | Notes                      |
| --------------------- | ---------- | -------------------------------------------------------- | -------------------------- |
| **nodeId**            | **String** | Description for nodeId.                                  |
| **limit**             | **int**    | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusiveStartKey** | **String** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**ListNodeChildrenOK**](ListNodeChildrenOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRootNodeChildren**

> ListRootNodeChildrenOK listRootNodeChildren()

lists children of the root node for the consumer

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();

try {
    final response = api.listRootNodeChildren();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->listRootNodeChildren: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListRootNodeChildrenOK**](ListRootNodeChildrenOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveNode**

> MoveNodeDto moveNode(nodeId, moveNodeInput)

Moves a node from source to destination along with the hierarchy

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String |
final MoveNodeInput moveNodeInput = ; // MoveNodeInput | MoveNode

try {
    final response = api.moveNode(nodeId, moveNodeInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->moveNode: $e\n');
}
```

### Parameters

| Name              | Type                                  | Description | Notes |
| ----------------- | ------------------------------------- | ----------- | ----- |
| **nodeId**        | **String**                            |             |
| **moveNodeInput** | [**MoveNodeInput**](MoveNodeInput.md) | MoveNode    |

### Return type

[**MoveNodeDto**](MoveNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permanentlyDeleteNode**

> permanentlyDeleteNode(nodeId, nodeIdToRemove)

Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String | nodeId of the TRASH_BIN
final String nodeIdToRemove = nodeIdToRemove_example; // String | nodeId of the node to be deleted from TRASH_BIN

try {
    api.permanentlyDeleteNode(nodeId, nodeIdToRemove);
} catch on DioException (e) {
    print('Exception when calling NodesApi->permanentlyDeleteNode: $e\n');
}
```

### Parameters

| Name               | Type       | Description                                     | Notes |
| ------------------ | ---------- | ----------------------------------------------- | ----- |
| **nodeId**         | **String** | nodeId of the TRASH_BIN                         |
| **nodeIdToRemove** | **String** | nodeId of the node to be deleted from TRASH_BIN |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreNodeFromTrashbin**

> MoveNodeDto restoreNodeFromTrashbin(nodeId, nodeIdToRestore, restoreNodeFromTrashbin)

Restore node marked for deletion from TRASH_BIN

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String | nodeId of the TRASH_BIN
final String nodeIdToRestore = nodeIdToRestore_example; // String | nodeId of the node to be restored from TRASH_BIN
final RestoreNodeFromTrashbin restoreNodeFromTrashbin = ; // RestoreNodeFromTrashbin | RestoreNodeFromTrashbin

try {
    final response = api.restoreNodeFromTrashbin(nodeId, nodeIdToRestore, restoreNodeFromTrashbin);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->restoreNodeFromTrashbin: $e\n');
}
```

### Parameters

| Name                        | Type                                                      | Description                                      | Notes |
| --------------------------- | --------------------------------------------------------- | ------------------------------------------------ | ----- |
| **nodeId**                  | **String**                                                | nodeId of the TRASH_BIN                          |
| **nodeIdToRestore**         | **String**                                                | nodeId of the node to be restored from TRASH_BIN |
| **restoreNodeFromTrashbin** | [**RestoreNodeFromTrashbin**](RestoreNodeFromTrashbin.md) | RestoreNodeFromTrashbin                          |

### Return type

[**MoveNodeDto**](MoveNodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNode**

> NodeDto updateNode(nodeId, updateNodeInput)

Updates a node

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getNodesApi();
final String nodeId = nodeId_example; // String | Description for nodeId.
final UpdateNodeInput updateNodeInput = ; // UpdateNodeInput | UpdateNodeInput

try {
    final response = api.updateNode(nodeId, updateNodeInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NodesApi->updateNode: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description             | Notes |
| ------------------- | ----------------------------------------- | ----------------------- | ----- |
| **nodeId**          | **String**                                | Description for nodeId. |
| **updateNodeInput** | [**UpdateNodeInput**](UpdateNodeInput.md) | UpdateNodeInput         |

### Return type

[**NodeDto**](NodeDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
