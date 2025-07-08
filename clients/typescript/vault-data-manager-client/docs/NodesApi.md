# NodesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                  | HTTP request                                          | Description |
| ------------------------------------------------------- | ----------------------------------------------------- | ----------- |
| [**createNode**](#createnode)                           | **POST** /v1/nodes                                    |             |
| [**deleteNode**](#deletenode)                           | **DELETE** /v1/nodes/{nodeId}                         |             |
| [**getDetailedNodeInfo**](#getdetailednodeinfo)         | **GET** /v1/nodes/{nodeId}                            |             |
| [**initNodes**](#initnodes)                             | **POST** /v1/nodes/init                               |             |
| [**listNodeChildren**](#listnodechildren)               | **GET** /v1/nodes/{nodeId}/children                   |             |
| [**listRootNodeChildren**](#listrootnodechildren)       | **GET** /v1/nodes                                     |             |
| [**moveNode**](#movenode)                               | **POST** /v1/nodes/{nodeId}/move                      |             |
| [**permanentlyDeleteNode**](#permanentlydeletenode)     | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |             |
| [**restoreNodeFromTrashbin**](#restorenodefromtrashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |             |
| [**updateNode**](#updatenode)                           | **PATCH** /v1/nodes/{nodeId}                          |             |

# **createNode**

> CreateNodeOK createNode(createNodeInput)

creates node

### Example

```typescript
import {
  NodesApi,
  Configuration,
  CreateNodeInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let createNodeInput: CreateNodeInput //CreateNode

const { status, data } = await apiInstance.createNode(createNodeInput)
```

### Parameters

| Name                | Type                | Description | Notes |
| ------------------- | ------------------- | ----------- | ----- |
| **createNodeInput** | **CreateNodeInput** | CreateNode  |       |

### Return type

**CreateNodeOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateNodeOK    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteNode**

> DeleteNodeDto deleteNode()

Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string // (default to undefined)

const { status, data } = await apiInstance.deleteNode(nodeId)
```

### Parameters

| Name       | Type         | Description | Notes                 |
| ---------- | ------------ | ----------- | --------------------- |
| **nodeId** | [**string**] |             | defaults to undefined |

### Return type

**DeleteNodeDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | DeleteNodeOk    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDetailedNodeInfo**

> GetDetailedNodeInfoOK getDetailedNodeInfo()

Gets detailed information about the node

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string // (default to undefined)
let dek: string //A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided (optional) (default to undefined)

const { status, data } = await apiInstance.getDetailedNodeInfo(nodeId, dek)
```

### Parameters

| Name       | Type         | Description                                                                                                                 | Notes                            |
| ---------- | ------------ | --------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **nodeId** | [**string**] |                                                                                                                             | defaults to undefined            |
| **dek**    | [**string**] | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided | (optional) defaults to undefined |

### Return type

**GetDetailedNodeInfoOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers                                                                                                  |
| ----------- | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | GetDetailedNodeInfoOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initNodes**

> InitNodesOK initNodes()

Initialize root node, and TRASH_BIN

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

const { status, data } = await apiInstance.initNodes()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**InitNodesOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | InitNodesOK     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listNodeChildren**

> ListNodeChildrenOK listNodeChildren()

lists children of the node

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string //Description for nodeId. (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to 10)
let exclusiveStartKey: string //exclusiveStartKey for retrieving the next batch of data. (optional) (default to undefined)

const { status, data } = await apiInstance.listNodeChildren(
  nodeId,
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                              | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------- | -------------------------------- |
| **nodeId**            | [**string**] | Description for nodeId.                                  | defaults to undefined            |
| **limit**             | [**number**] | Maximum number of records to fetch in a list             | (optional) defaults to 10        |
| **exclusiveStartKey** | [**string**] | exclusiveStartKey for retrieving the next batch of data. | (optional) defaults to undefined |

### Return type

**ListNodeChildrenOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListNodeChildrenOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listRootNodeChildren**

> ListRootNodeChildrenOK listRootNodeChildren()

lists children of the root node for the consumer

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

const { status, data } = await apiInstance.listRootNodeChildren()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**ListRootNodeChildrenOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers                                                                                                  |
| ----------- | ---------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListRootNodeChildrenOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **moveNode**

> MoveNodeDto moveNode(moveNodeInput)

Moves a node from source to destination along with the hierarchy

### Example

```typescript
import {
  NodesApi,
  Configuration,
  MoveNodeInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string // (default to undefined)
let moveNodeInput: MoveNodeInput //MoveNode

const { status, data } = await apiInstance.moveNode(nodeId, moveNodeInput)
```

### Parameters

| Name              | Type              | Description | Notes                 |
| ----------------- | ----------------- | ----------- | --------------------- |
| **moveNodeInput** | **MoveNodeInput** | MoveNode    |                       |
| **nodeId**        | [**string**]      |             | defaults to undefined |

### Return type

**MoveNodeDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | UpdateNodeOK    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permanentlyDeleteNode**

> permanentlyDeleteNode()

Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.

### Example

```typescript
import {
  NodesApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string //nodeId of the TRASH_BIN (default to undefined)
let nodeIdToRemove: string //nodeId of the node to be deleted from TRASH_BIN (default to undefined)

const { status, data } = await apiInstance.permanentlyDeleteNode(
  nodeId,
  nodeIdToRemove,
)
```

### Parameters

| Name               | Type         | Description                                     | Notes                 |
| ------------------ | ------------ | ----------------------------------------------- | --------------------- |
| **nodeId**         | [**string**] | nodeId of the TRASH_BIN                         | defaults to undefined |
| **nodeIdToRemove** | [**string**] | nodeId of the node to be deleted from TRASH_BIN | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers                                                                                                  |
| ----------- | ------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | Permanently deleted | -                                                                                                                 |
| **400**     | BadRequestError     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **restoreNodeFromTrashbin**

> MoveNodeDto restoreNodeFromTrashbin(restoreNodeFromTrashbin)

Restore node marked for deletion from TRASH_BIN

### Example

```typescript
import {
  NodesApi,
  Configuration,
  RestoreNodeFromTrashbin,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string //nodeId of the TRASH_BIN (default to undefined)
let nodeIdToRestore: string //nodeId of the node to be restored from TRASH_BIN (default to undefined)
let restoreNodeFromTrashbin: RestoreNodeFromTrashbin //RestoreNodeFromTrashbin

const { status, data } = await apiInstance.restoreNodeFromTrashbin(
  nodeId,
  nodeIdToRestore,
  restoreNodeFromTrashbin,
)
```

### Parameters

| Name                        | Type                        | Description                                      | Notes                 |
| --------------------------- | --------------------------- | ------------------------------------------------ | --------------------- |
| **restoreNodeFromTrashbin** | **RestoreNodeFromTrashbin** | RestoreNodeFromTrashbin                          |                       |
| **nodeId**                  | [**string**]                | nodeId of the TRASH_BIN                          | defaults to undefined |
| **nodeIdToRestore**         | [**string**]                | nodeId of the node to be restored from TRASH_BIN | defaults to undefined |

### Return type

**MoveNodeDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | RestoreNodeOk   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateNode**

> NodeDto updateNode(updateNodeInput)

Updates a node

### Example

```typescript
import {
  NodesApi,
  Configuration,
  UpdateNodeInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new NodesApi(configuration)

let nodeId: string //Description for nodeId. (default to undefined)
let updateNodeInput: UpdateNodeInput //UpdateNodeInput

const { status, data } = await apiInstance.updateNode(nodeId, updateNodeInput)
```

### Parameters

| Name                | Type                | Description             | Notes                 |
| ------------------- | ------------------- | ----------------------- | --------------------- |
| **updateNodeInput** | **UpdateNodeInput** | UpdateNodeInput         |                       |
| **nodeId**          | [**string**]        | Description for nodeId. | defaults to undefined |

### Return type

**NodeDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | UpdateNodeOK    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
