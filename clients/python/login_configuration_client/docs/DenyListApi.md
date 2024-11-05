# affinidi_tdk_login_configuration_client.DenyListApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                        | HTTP request                         | Description |
| ------------------------------------------------------------- | ------------------------------------ | ----------- |
| [**block_groups**](DenyListApi.md#block_groups)               | **POST** /v1/deny-list/groups/add    |
| [**block_users**](DenyListApi.md#block_users)                 | **POST** /v1/deny-list/users/add     |
| [**list_blocked_groups**](DenyListApi.md#list_blocked_groups) | **GET** /v1/deny-list/groups         |
| [**list_blocked_users**](DenyListApi.md#list_blocked_users)   | **GET** /v1/deny-list/users          |
| [**unblock_groups**](DenyListApi.md#unblock_groups)           | **POST** /v1/deny-list/groups/remove |
| [**unblock_users**](DenyListApi.md#unblock_users)             | **POST** /v1/deny-list/users/remove  |

# **block_groups**

> block_groups(group_names_input=group_names_input)

Block Single or Multiple Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.group_names_input import GroupNamesInput
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    group_names_input = affinidi_tdk_login_configuration_client.GroupNamesInput() # GroupNamesInput | List of group names as input (optional)

    try:
        api_instance.block_groups(group_names_input=group_names_input)
    except Exception as e:
        print("Exception when calling DenyListApi->block_groups: %s\n" % e)
```

### Parameters

| Name                  | Type                                      | Description                  | Notes      |
| --------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **group_names_input** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **block_users**

> block_users(blocked_users_input=blocked_users_input)

Block Single or Multiple user ids

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.blocked_users_input import BlockedUsersInput
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    blocked_users_input = affinidi_tdk_login_configuration_client.BlockedUsersInput() # BlockedUsersInput | List of blocked users as input (optional)

    try:
        api_instance.block_users(blocked_users_input=blocked_users_input)
    except Exception as e:
        print("Exception when calling DenyListApi->block_users: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description                    | Notes      |
| ----------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blocked_users_input** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_blocked_groups**

> GroupNames list_blocked_groups(page_token=page_token)

Get Blocked Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.group_names import GroupNames
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    page_token = 'page_token_example' # str |  (optional)

    try:
        api_response = api_instance.list_blocked_groups(page_token=page_token)
        print("The response of DenyListApi->list_blocked_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DenyListApi->list_blocked_groups: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes      |
| -------------- | ------- | ----------- | ---------- |
| **page_token** | **str** |             | [optional] |

### Return type

[**GroupNames**](GroupNames.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | Groups Names Response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_blocked_users**

> BlockedUsers list_blocked_users(page_token=page_token)

Get List of Blocked Users

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.blocked_users import BlockedUsers
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    page_token = 'page_token_example' # str |  (optional)

    try:
        api_response = api_instance.list_blocked_users(page_token=page_token)
        print("The response of DenyListApi->list_blocked_users:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DenyListApi->list_blocked_users: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes      |
| -------------- | ------- | ----------- | ---------- |
| **page_token** | **str** |             | [optional] |

### Return type

[**BlockedUsers**](BlockedUsers.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | Blocked user ids response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblock_groups**

> unblock_groups(group_names_input=group_names_input)

Unblock Single or Multiple Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.group_names_input import GroupNamesInput
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    group_names_input = affinidi_tdk_login_configuration_client.GroupNamesInput() # GroupNamesInput | List of group names as input (optional)

    try:
        api_instance.unblock_groups(group_names_input=group_names_input)
    except Exception as e:
        print("Exception when calling DenyListApi->unblock_groups: %s\n" % e)
```

### Parameters

| Name                  | Type                                      | Description                  | Notes      |
| --------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **group_names_input** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblock_users**

> unblock_users(blocked_users_input=blocked_users_input)

Unblock Single or Multiple user ids

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.blocked_users_input import BlockedUsersInput
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.DenyListApi(api_client)
    blocked_users_input = affinidi_tdk_login_configuration_client.BlockedUsersInput() # BlockedUsersInput | List of blocked users as input (optional)

    try:
        api_instance.unblock_users(blocked_users_input=blocked_users_input)
    except Exception as e:
        print("Exception when calling DenyListApi->unblock_users: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description                    | Notes      |
| ----------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blocked_users_input** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
