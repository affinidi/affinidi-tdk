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

## createNode

> CreateNodeOK createNode(createNodeInput, ownerDid)

creates node

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        CreateNodeInput createNodeInput = new CreateNodeInput(); // CreateNodeInput | CreateNode
        String ownerDid = "ownerDid_example"; // String | DID of the Node owner
        try {
            CreateNodeOK result = apiInstance.createNode(createNodeInput, ownerDid);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#createNode");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type                                      | Description           | Notes      |
| ------------------- | ----------------------------------------- | --------------------- | ---------- |
| **createNodeInput** | [**CreateNodeInput**](CreateNodeInput.md) | CreateNode            |            |
| **ownerDid**        | **String**                                | DID of the Node owner | [optional] |

### Return type

[**CreateNodeOK**](CreateNodeOK.md)

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

## createProfile

> CreateNodeOK createProfile(createProfileInput)

creates Profile with control plane

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        CreateProfileInput createProfileInput = new CreateProfileInput(); // CreateProfileInput | CreateNode
        try {
            CreateNodeOK result = apiInstance.createProfile(createProfileInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#createProfile");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description | Notes |
| ---------------------- | ----------------------------------------------- | ----------- | ----- |
| **createProfileInput** | [**CreateProfileInput**](CreateProfileInput.md) | CreateNode  |       |

### Return type

[**CreateNodeOK**](CreateNodeOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateNodeOK    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | -                                                                                                                 |

## deleteNode

> DeleteNodeDto deleteNode(nodeId)

Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String |
        try {
            DeleteNodeDto result = apiInstance.deleteNode(nodeId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#deleteNode");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name       | Type       | Description | Notes |
| ---------- | ---------- | ----------- | ----- |
| **nodeId** | **String** |             |       |

### Return type

[**DeleteNodeDto**](DeleteNodeDto.md)

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

## getDetailedNodeInfo

> GetDetailedNodeInfoOK getDetailedNodeInfo(nodeId, dek, ownerDid)

Gets detailed information about the node

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String |
        String dek = "dek_example"; // String | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided
        String ownerDid = "ownerDid_example"; // String | DID of the Node owner
        try {
            GetDetailedNodeInfoOK result = apiInstance.getDetailedNodeInfo(nodeId, dek, ownerDid);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#getDetailedNodeInfo");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name         | Type       | Description                                                                                                                 | Notes      |
| ------------ | ---------- | --------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **nodeId**   | **String** |                                                                                                                             |            |
| **dek**      | **String** | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided | [optional] |
| **ownerDid** | **String** | DID of the Node owner                                                                                                       | [optional] |

### Return type

[**GetDetailedNodeInfoOK**](GetDetailedNodeInfoOK.md)

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

## initNodes

> InitNodesOK initNodes()

Initialize root node, and TRASH_BIN

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        try {
            InitNodesOK result = apiInstance.initNodes();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#initNodes");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
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

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | InitNodesOK     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

## listNodeChildren

> ListNodeChildrenOK listNodeChildren(nodeId, limit, exclusiveStartKey, ownerDid)

lists children of the node

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String | Description for nodeId.
        Integer limit = 10; // Integer | Maximum number of records to fetch in a list
        String exclusiveStartKey = "exclusiveStartKey_example"; // String | exclusiveStartKey for retrieving the next batch of data.
        String ownerDid = "ownerDid_example"; // String | DID of the Node owner
        try {
            ListNodeChildrenOK result = apiInstance.listNodeChildren(nodeId, limit, exclusiveStartKey, ownerDid);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#listNodeChildren");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type        | Description                                              | Notes                      |
| --------------------- | ----------- | -------------------------------------------------------- | -------------------------- |
| **nodeId**            | **String**  | Description for nodeId.                                  |                            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusiveStartKey** | **String**  | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |
| **ownerDid**          | **String**  | DID of the Node owner                                    | [optional]                 |

### Return type

[**ListNodeChildrenOK**](ListNodeChildrenOK.md)

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

## listRootNodeChildren

> ListRootNodeChildrenOK listRootNodeChildren(ownerDid)

lists children of the root node for the consumer

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String ownerDid = "ownerDid_example"; // String | DID of the Node owner
        try {
            ListRootNodeChildrenOK result = apiInstance.listRootNodeChildren(ownerDid);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#listRootNodeChildren");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name         | Type       | Description           | Notes      |
| ------------ | ---------- | --------------------- | ---------- |
| **ownerDid** | **String** | DID of the Node owner | [optional] |

### Return type

[**ListRootNodeChildrenOK**](ListRootNodeChildrenOK.md)

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

## moveNode

> MoveNodeDto moveNode(nodeId, moveNodeInput)

Moves a node from source to destination along with the hierarchy

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String |
        MoveNodeInput moveNodeInput = new MoveNodeInput(); // MoveNodeInput | MoveNode
        try {
            MoveNodeDto result = apiInstance.moveNode(nodeId, moveNodeInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#moveNode");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name              | Type                                  | Description | Notes |
| ----------------- | ------------------------------------- | ----------- | ----- |
| **nodeId**        | **String**                            |             |       |
| **moveNodeInput** | [**MoveNodeInput**](MoveNodeInput.md) | MoveNode    |       |

### Return type

[**MoveNodeDto**](MoveNodeDto.md)

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

## permanentlyDeleteNode

> permanentlyDeleteNode(nodeId, nodeIdToRemove)

Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String | nodeId of the TRASH_BIN
        String nodeIdToRemove = "nodeIdToRemove_example"; // String | nodeId of the node to be deleted from TRASH_BIN
        try {
            apiInstance.permanentlyDeleteNode(nodeId, nodeIdToRemove);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#permanentlyDeleteNode");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name               | Type       | Description                                     | Notes |
| ------------------ | ---------- | ----------------------------------------------- | ----- |
| **nodeId**         | **String** | nodeId of the TRASH_BIN                         |       |
| **nodeIdToRemove** | **String** | nodeId of the node to be deleted from TRASH_BIN |       |

### Return type

null (empty response body)

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

## restoreNodeFromTrashbin

> MoveNodeDto restoreNodeFromTrashbin(nodeId, nodeIdToRestore, restoreNodeFromTrashbin)

Restore node marked for deletion from TRASH_BIN

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String | nodeId of the TRASH_BIN
        String nodeIdToRestore = "nodeIdToRestore_example"; // String | nodeId of the node to be restored from TRASH_BIN
        RestoreNodeFromTrashbin restoreNodeFromTrashbin = new RestoreNodeFromTrashbin(); // RestoreNodeFromTrashbin | RestoreNodeFromTrashbin
        try {
            MoveNodeDto result = apiInstance.restoreNodeFromTrashbin(nodeId, nodeIdToRestore, restoreNodeFromTrashbin);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#restoreNodeFromTrashbin");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                        | Type                                                      | Description                                      | Notes |
| --------------------------- | --------------------------------------------------------- | ------------------------------------------------ | ----- |
| **nodeId**                  | **String**                                                | nodeId of the TRASH_BIN                          |       |
| **nodeIdToRestore**         | **String**                                                | nodeId of the node to be restored from TRASH_BIN |       |
| **restoreNodeFromTrashbin** | [**RestoreNodeFromTrashbin**](RestoreNodeFromTrashbin.md) | RestoreNodeFromTrashbin                          |       |

### Return type

[**MoveNodeDto**](MoveNodeDto.md)

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

## updateNode

> NodeDto updateNode(nodeId, updateNodeInput)

Updates a node

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.NodesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        NodesApi apiInstance = new NodesApi(defaultClient);
        String nodeId = "nodeId_example"; // String | Description for nodeId.
        UpdateNodeInput updateNodeInput = new UpdateNodeInput(); // UpdateNodeInput | UpdateNodeInput
        try {
            NodeDto result = apiInstance.updateNode(nodeId, updateNodeInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling NodesApi#updateNode");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type                                      | Description             | Notes |
| ------------------- | ----------------------------------------- | ----------------------- | ----- |
| **nodeId**          | **String**                                | Description for nodeId. |       |
| **updateNodeInput** | [**UpdateNodeInput**](UpdateNodeInput.md) | UpdateNodeInput         |       |

### Return type

[**NodeDto**](NodeDto.md)

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
