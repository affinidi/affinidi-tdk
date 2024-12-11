# affinidi_tdk_iam_client.TokensApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                            | HTTP request                          | Description |
| ----------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**create_token**](TokensApi.md#create_token)                     | **POST** /v1/tokens                   |
| [**delete_token**](TokensApi.md#delete_token)                     | **DELETE** /v1/tokens/{tokenId}       |
| [**get_token**](TokensApi.md#get_token)                           | **GET** /v1/tokens/{tokenId}          |
| [**list_projects_of_token**](TokensApi.md#list_projects_of_token) | **GET** /v1/tokens/{tokenId}/projects |
| [**list_token**](TokensApi.md#list_token)                         | **GET** /v1/tokens                    |
| [**update_token**](TokensApi.md#update_token)                     | **PATCH** /v1/tokens/{tokenId}        |

# **create_token**

> TokenDto create_token(create_token_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.create_token_input import CreateTokenInput
from affinidi_tdk_iam_client.models.token_dto import TokenDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)
    create_token_input = affinidi_tdk_iam_client.CreateTokenInput() # CreateTokenInput | CreateToken

    try:
        api_response = api_instance.create_token(create_token_input)
        print("The response of TokensApi->create_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->create_token: %s\n" % e)
```

### Parameters

| Name                   | Type                                        | Description | Notes |
| ---------------------- | ------------------------------------------- | ----------- | ----- |
| **create_token_input** | [**CreateTokenInput**](CreateTokenInput.md) | CreateToken |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Created Token   | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token**

> delete_token(token_id)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)
    token_id = 'token_id_example' # str |

    try:
        api_instance.delete_token(token_id)
    except Exception as e:
        print("Exception when calling TokensApi->delete_token: %s\n" % e)
```

### Parameters

| Name         | Type    | Description | Notes |
| ------------ | ------- | ----------- | ----- |
| **token_id** | **str** |             |

### Return type

void (empty response body)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Token Deleted   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_token**

> TokenDto get_token(token_id)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.token_dto import TokenDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)
    token_id = 'token_id_example' # str |

    try:
        api_response = api_instance.get_token(token_id)
        print("The response of TokensApi->get_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->get_token: %s\n" % e)
```

### Parameters

| Name         | Type    | Description | Notes |
| ------------ | ------- | ----------- | ----- |
| **token_id** | **str** |             |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Token           | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_projects_of_token**

> ProjectWithPolicyList list_projects_of_token(token_id, limit=limit, exclusive_start_key=exclusive_start_key)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.project_with_policy_list import ProjectWithPolicyList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)
    token_id = 'token_id_example' # str |
    limit = 56 # int | Maximum number of records to fetch in a list (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | exclusiveStartKey for retrieving the next batch of data. (optional)

    try:
        api_response = api_instance.list_projects_of_token(token_id, limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of TokensApi->list_projects_of_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->list_projects_of_token: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                              | Notes      |
| ----------------------- | ------- | -------------------------------------------------------- | ---------- |
| **token_id**            | **str** |                                                          |
| **limit**               | **int** | Maximum number of records to fetch in a list             | [optional] |
| **exclusive_start_key** | **str** | exclusiveStartKey for retrieving the next batch of data. | [optional] |

### Return type

[**ProjectWithPolicyList**](ProjectWithPolicyList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_token**

> TokenList list_token()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.token_list import TokenList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)

    try:
        api_response = api_instance.list_token()
        print("The response of TokensApi->list_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->list_token: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TokenList**](TokenList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | List of Tokens  | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_token**

> TokenDto update_token(token_id, update_token_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.token_dto import TokenDto
from affinidi_tdk_iam_client.models.update_token_input import UpdateTokenInput
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.TokensApi(api_client)
    token_id = 'token_id_example' # str |
    update_token_input = affinidi_tdk_iam_client.UpdateTokenInput() # UpdateTokenInput | UpdateToken

    try:
        api_response = api_instance.update_token(token_id, update_token_input)
        print("The response of TokensApi->update_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling TokensApi->update_token: %s\n" % e)
```

### Parameters

| Name                   | Type                                        | Description | Notes |
| ---------------------- | ------------------------------------------- | ----------- | ----- |
| **token_id**           | **str**                                     |             |
| **update_token_input** | [**UpdateTokenInput**](UpdateTokenInput.md) | UpdateToken |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Updated Token   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
