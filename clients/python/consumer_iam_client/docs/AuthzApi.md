# affinidi_tdk_consumer_iam_client.AuthzApi

All URIs are relative to *https://apse1.api.affinidi.io/cid*

| Method                                                 | HTTP request                                 | Description                             |
| ------------------------------------------------------ | -------------------------------------------- | --------------------------------------- |
| [**delete_access_vfs**](AuthzApi.md#delete_access_vfs) | **DELETE** /v1/authz/vfs/access/{granteeDid} | delete access of granteeDid             |
| [**grant_access_vfs**](AuthzApi.md#grant_access_vfs)   | **POST** /v1/authz/vfs/access/{granteeDid}   | Grant access to the virtual file system |
| [**update_access_vfs**](AuthzApi.md#update_access_vfs) | **PUT** /v1/authz/vfs/access/{granteeDid}    | Update access of granteeDid             |

# **delete_access_vfs**

> delete_access_vfs(grantee_did)

delete access of granteeDid

deleteAccessVfs

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_consumer_iam_client
from affinidi_tdk_consumer_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cid
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_consumer_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/cid"
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
with affinidi_tdk_consumer_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_consumer_iam_client.AuthzApi(api_client)
    grantee_did = 'grantee_did_example' # str |

    try:
        # delete access of granteeDid
        api_instance.delete_access_vfs(grantee_did)
    except Exception as e:
        print("Exception when calling AuthzApi->delete_access_vfs: %s\n" % e)
```

### Parameters

| Name            | Type    | Description | Notes |
| --------------- | ------- | ----------- | ----- |
| **grantee_did** | **str** |             |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Ok              | -                |
| **403**     | ForbiddenError  | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grant_access_vfs**

> GrantAccessOutput grant_access_vfs(grantee_did, grant_access_input)

Grant access to the virtual file system

Grants access rights to a subject for the virtual file system

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_consumer_iam_client
from affinidi_tdk_consumer_iam_client.models.grant_access_input import GrantAccessInput
from affinidi_tdk_consumer_iam_client.models.grant_access_output import GrantAccessOutput
from affinidi_tdk_consumer_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cid
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_consumer_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/cid"
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
with affinidi_tdk_consumer_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_consumer_iam_client.AuthzApi(api_client)
    grantee_did = 'grantee_did_example' # str |
    grant_access_input = affinidi_tdk_consumer_iam_client.GrantAccessInput() # GrantAccessInput | Grant access to virtual file system

    try:
        # Grant access to the virtual file system
        api_response = api_instance.grant_access_vfs(grantee_did, grant_access_input)
        print("The response of AuthzApi->grant_access_vfs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthzApi->grant_access_vfs: %s\n" % e)
```

### Parameters

| Name                   | Type                                        | Description                         | Notes |
| ---------------------- | ------------------------------------------- | ----------------------------------- | ----- |
| **grantee_did**        | **str**                                     |                                     |
| **grant_access_input** | [**GrantAccessInput**](GrantAccessInput.md) | Grant access to virtual file system |

### Return type

[**GrantAccessOutput**](GrantAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                            | Response headers |
| ----------- | -------------------------------------- | ---------------- |
| **200**     | Successfully granted access to Service | -                |
| **403**     | ForbiddenError                         | -                |
| **500**     | UnexpectedError                        | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_access_vfs**

> UpdateAccessOutput update_access_vfs(grantee_did, update_access_input)

Update access of granteeDid

updateAccessVfs

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_consumer_iam_client
from affinidi_tdk_consumer_iam_client.models.update_access_input import UpdateAccessInput
from affinidi_tdk_consumer_iam_client.models.update_access_output import UpdateAccessOutput
from affinidi_tdk_consumer_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cid
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_consumer_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/cid"
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
with affinidi_tdk_consumer_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_consumer_iam_client.AuthzApi(api_client)
    grantee_did = 'grantee_did_example' # str |
    update_access_input = affinidi_tdk_consumer_iam_client.UpdateAccessInput() # UpdateAccessInput | update access to virtual file system

    try:
        # Update access of granteeDid
        api_response = api_instance.update_access_vfs(grantee_did, update_access_input)
        print("The response of AuthzApi->update_access_vfs:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AuthzApi->update_access_vfs: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description                          | Notes |
| ----------------------- | --------------------------------------------- | ------------------------------------ | ----- |
| **grantee_did**         | **str**                                       |                                      |
| **update_access_input** | [**UpdateAccessInput**](UpdateAccessInput.md) | update access to virtual file system |

### Return type

[**UpdateAccessOutput**](UpdateAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                            | Response headers |
| ----------- | -------------------------------------- | ---------------- |
| **200**     | Successfully updated access to Service | -                |
| **403**     | ForbiddenError                         | -                |
| **500**     | UnexpectedError                        | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
