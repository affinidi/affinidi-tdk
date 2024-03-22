# affinidi_tdk_client_vpa.AllowListApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                          | Description |
| -------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**allow_groups**](AllowListApi.md#allow_groups)               | **POST** /v1/allow-list/groups/add    |
| [**disallow_groups**](AllowListApi.md#disallow_groups)         | **POST** /v1/allow-list/groups/remove |
| [**list_allowed_groups**](AllowListApi.md#list_allowed_groups) | **GET** /v1/allow-list/groups         |

# **allow_groups**

> allow_groups(group_names_input=group_names_input)

Allow Single or Multiple Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.group_names_input import GroupNamesInput
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.AllowListApi(api_client)
    group_names_input = affinidi_tdk_client_vpa.GroupNamesInput() # GroupNamesInput | List of group names as input (optional)

    try:
        api_instance.allow_groups(group_names_input=group_names_input)
    except Exception as e:
        print("Exception when calling AllowListApi->allow_groups: %s\n" % e)
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

# **disallow_groups**

> disallow_groups(group_names_input=group_names_input)

Disallow Single or Multiple Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.group_names_input import GroupNamesInput
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.AllowListApi(api_client)
    group_names_input = affinidi_tdk_client_vpa.GroupNamesInput() # GroupNamesInput | List of group names as input (optional)

    try:
        api_instance.disallow_groups(group_names_input=group_names_input)
    except Exception as e:
        print("Exception when calling AllowListApi->disallow_groups: %s\n" % e)
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

# **list_allowed_groups**

> GroupNames list_allowed_groups(page_token=page_token)

Get Allowed Groups

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.group_names import GroupNames
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.AllowListApi(api_client)
    page_token = 'page_token_example' # str |  (optional)

    try:
        api_response = api_instance.list_allowed_groups(page_token=page_token)
        print("The response of AllowListApi->list_allowed_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AllowListApi->list_allowed_groups: %s\n" % e)
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
