# affinidi_tdk_vault_data_manager_client.NodesApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                                   | HTTP request                                          | Description |
| ------------------------------------------------------------------------ | ----------------------------------------------------- | ----------- |
| [**create_node**](NodesApi.md#create_node)                               | **POST** /v1/nodes                                    |
| [**delete_node**](NodesApi.md#delete_node)                               | **DELETE** /v1/nodes/{nodeId}                         |
| [**get_detailed_node_info**](NodesApi.md#get_detailed_node_info)         | **GET** /v1/nodes/{nodeId}                            |
| [**init_nodes**](NodesApi.md#init_nodes)                                 | **POST** /v1/nodes/init                               |
| [**list_node_children**](NodesApi.md#list_node_children)                 | **GET** /v1/nodes/{nodeId}/children                   |
| [**list_root_node_children**](NodesApi.md#list_root_node_children)       | **GET** /v1/nodes                                     |
| [**move_node**](NodesApi.md#move_node)                                   | **POST** /v1/nodes/{nodeId}/move                      |
| [**permanently_delete_node**](NodesApi.md#permanently_delete_node)       | **DELETE** /v1/nodes/{nodeId}/remove/{nodeIdToRemove} |
| [**restore_node_from_trashbin**](NodesApi.md#restore_node_from_trashbin) | **POST** /v1/nodes/{nodeId}/restore/{nodeIdToRestore} |
| [**update_node**](NodesApi.md#update_node)                               | **PATCH** /v1/nodes/{nodeId}                          |

# **create_node**

> CreateNodeOK create_node(create_node_input, parent_node_id=parent_node_id)

creates node

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.create_node_input import CreateNodeInput
from affinidi_tdk_vault_data_manager_client.models.create_node_ok import CreateNodeOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    create_node_input = affinidi_tdk_vault_data_manager_client.CreateNodeInput() # CreateNodeInput | CreateNode
    parent_node_id = 'parent_node_id_example' # str | parent node id, if not provided then root element is used (optional)

    try:
        api_response = api_instance.create_node(create_node_input, parent_node_id=parent_node_id)
        print("The response of NodesApi->create_node:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->create_node: %s\n" % e)
```

### Parameters

| Name                  | Type                                      | Description                                               | Notes      |
| --------------------- | ----------------------------------------- | --------------------------------------------------------- | ---------- |
| **create_node_input** | [**CreateNodeInput**](CreateNodeInput.md) | CreateNode                                                |
| **parent_node_id**    | **str**                                   | parent node id, if not provided then root element is used | [optional] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_node**

> DeleteNodeDto delete_node(node_id)

Mark a node and any attached files for deletion. If the node is a folder, perform the same action for all its children if the profile type is PROFILE, VC_ROOT, or VC. For other node types, move them to the TRASH_BIN node.

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.delete_node_dto import DeleteNodeDto
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str |

    try:
        api_response = api_instance.delete_node(node_id)
        print("The response of NodesApi->delete_node:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->delete_node: %s\n" % e)
```

### Parameters

| Name        | Type    | Description | Notes |
| ----------- | ------- | ----------- | ----- |
| **node_id** | **str** |             |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_detailed_node_info**

> GetDetailedNodeInfoOK get_detailed_node_info(node_id, dek=dek)

Gets detailed information about the node

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.get_detailed_node_info_ok import GetDetailedNodeInfoOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str |
    dek = 'dek_example' # str | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided (optional)

    try:
        api_response = api_instance.get_detailed_node_info(node_id, dek=dek)
        print("The response of NodesApi->get_detailed_node_info:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->get_detailed_node_info: %s\n" % e)
```

### Parameters

| Name        | Type    | Description                                                                                                                 | Notes      |
| ----------- | ------- | --------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **node_id** | **str** |                                                                                                                             |
| **dek**     | **str** | A base64url encoded data encryption key, encrypted using VFS public key. getUrl will not be returned if dek is not provided | [optional] |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **init_nodes**

> InitNodesOK init_nodes()

Initialize root node, and TRASH_BIN

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.init_nodes_ok import InitNodesOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)

    try:
        api_response = api_instance.init_nodes()
        print("The response of NodesApi->init_nodes:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->init_nodes: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_node_children**

> ListNodeChildrenOK list_node_children(node_id, limit=limit, exclusive_start_key=exclusive_start_key)

lists children of the node

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.list_node_children_ok import ListNodeChildrenOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str | Description for nodeId.
    limit = 10 # int | Maximum number of records to fetch in a list (optional) (default to 10)
    exclusive_start_key = 'exclusive_start_key_example' # str | exclusiveStartKey for retrieving the next batch of data. (optional)

    try:
        api_response = api_instance.list_node_children(node_id, limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of NodesApi->list_node_children:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->list_node_children: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                              | Notes                      |
| ----------------------- | ------- | -------------------------------------------------------- | -------------------------- |
| **node_id**             | **str** | Description for nodeId.                                  |
| **limit**               | **int** | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusive_start_key** | **str** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_root_node_children**

> ListRootNodeChildrenOK list_root_node_children()

lists children of the root node for the consumer

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.list_root_node_children_ok import ListRootNodeChildrenOK
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)

    try:
        api_response = api_instance.list_root_node_children()
        print("The response of NodesApi->list_root_node_children:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->list_root_node_children: %s\n" % e)
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

### HTTP response details

| Status code | Description            | Response headers                                                                                                  |
| ----------- | ---------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListRootNodeChildrenOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **move_node**

> MoveNodeDto move_node(node_id, move_node_input)

Moves a node from source to destination along with the hierarchy

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.move_node_dto import MoveNodeDto
from affinidi_tdk_vault_data_manager_client.models.move_node_input import MoveNodeInput
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str |
    move_node_input = affinidi_tdk_vault_data_manager_client.MoveNodeInput() # MoveNodeInput | MoveNode

    try:
        api_response = api_instance.move_node(node_id, move_node_input)
        print("The response of NodesApi->move_node:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->move_node: %s\n" % e)
```

### Parameters

| Name                | Type                                  | Description | Notes |
| ------------------- | ------------------------------------- | ----------- | ----- |
| **node_id**         | **str**                               |             |
| **move_node_input** | [**MoveNodeInput**](MoveNodeInput.md) | MoveNode    |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permanently_delete_node**

> permanently_delete_node(node_id, node_id_to_remove)

Permanently delete a node from TRASH_BIN, if the node is not in the TRASH_BIN it cannot delete.

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str | nodeId of the TRASH_BIN
    node_id_to_remove = 'node_id_to_remove_example' # str | nodeId of the node to be deleted from TRASH_BIN

    try:
        api_instance.permanently_delete_node(node_id, node_id_to_remove)
    except Exception as e:
        print("Exception when calling NodesApi->permanently_delete_node: %s\n" % e)
```

### Parameters

| Name                  | Type    | Description                                     | Notes |
| --------------------- | ------- | ----------------------------------------------- | ----- |
| **node_id**           | **str** | nodeId of the TRASH_BIN                         |
| **node_id_to_remove** | **str** | nodeId of the node to be deleted from TRASH_BIN |

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

# **restore_node_from_trashbin**

> MoveNodeDto restore_node_from_trashbin(node_id, node_id_to_restore, restore_node_from_trashbin)

Restore node marked for deletion from TRASH_BIN

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.move_node_dto import MoveNodeDto
from affinidi_tdk_vault_data_manager_client.models.restore_node_from_trashbin import RestoreNodeFromTrashbin
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str | nodeId of the TRASH_BIN
    node_id_to_restore = 'node_id_to_restore_example' # str | nodeId of the node to be restored from TRASH_BIN
    restore_node_from_trashbin = affinidi_tdk_vault_data_manager_client.RestoreNodeFromTrashbin() # RestoreNodeFromTrashbin | RestoreNodeFromTrashbin

    try:
        api_response = api_instance.restore_node_from_trashbin(node_id, node_id_to_restore, restore_node_from_trashbin)
        print("The response of NodesApi->restore_node_from_trashbin:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->restore_node_from_trashbin: %s\n" % e)
```

### Parameters

| Name                           | Type                                                      | Description                                      | Notes |
| ------------------------------ | --------------------------------------------------------- | ------------------------------------------------ | ----- |
| **node_id**                    | **str**                                                   | nodeId of the TRASH_BIN                          |
| **node_id_to_restore**         | **str**                                                   | nodeId of the node to be restored from TRASH_BIN |
| **restore_node_from_trashbin** | [**RestoreNodeFromTrashbin**](RestoreNodeFromTrashbin.md) | RestoreNodeFromTrashbin                          |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_node**

> NodeDto update_node(node_id, update_node_input)

Updates a node

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.node_dto import NodeDto
from affinidi_tdk_vault_data_manager_client.models.update_node_input import UpdateNodeInput
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.NodesApi(api_client)
    node_id = 'node_id_example' # str | Description for nodeId.
    update_node_input = affinidi_tdk_vault_data_manager_client.UpdateNodeInput() # UpdateNodeInput | UpdateNodeInput

    try:
        api_response = api_instance.update_node(node_id, update_node_input)
        print("The response of NodesApi->update_node:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling NodesApi->update_node: %s\n" % e)
```

### Parameters

| Name                  | Type                                      | Description             | Notes |
| --------------------- | ----------------------------------------- | ----------------------- | ----- |
| **node_id**           | **str**                                   | Description for nodeId. |
| **update_node_input** | [**UpdateNodeInput**](UpdateNodeInput.md) | UpdateNodeInput         |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
