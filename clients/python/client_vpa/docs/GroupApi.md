# affinidi_tdk_client_vpa.GroupApi

All URIs are relative to _http://localhost_

| Method                                                               | HTTP request                            | Description |
| -------------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**add_user_to_group**](GroupApi.md#add_user_to_group)               | **POST** /v1/groups/{groupName}/users   |
| [**create_group**](GroupApi.md#create_group)                         | **POST** /v1/groups                     |
| [**delete_group**](GroupApi.md#delete_group)                         | **DELETE** /v1/groups/{groupName}       |
| [**get_group_by_id**](GroupApi.md#get_group_by_id)                   | **GET** /v1/groups/{groupName}          |
| [**list_group_user_mappings**](GroupApi.md#list_group_user_mappings) | **GET** /v1/groups/{groupName}/users    |
| [**list_groups**](GroupApi.md#list_groups)                           | **GET** /v1/groups                      |
| [**remove_user_from_group**](GroupApi.md#remove_user_from_group)     | **DELETE** /v1/groups/{groupName}/users |

# **add_user_to_group**

> GroupUserMappingDto add_user_to_group(group_name, add_user_to_group_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.add_user_to_group_input import AddUserToGroupInput
from affinidi_tdk_client_vpa.models.group_user_mapping_dto import GroupUserMappingDto
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    group_name = 'group_name_example' # str |
    add_user_to_group_input = affinidi_tdk_client_vpa.AddUserToGroupInput() # AddUserToGroupInput | AddUserToGroup

    try:
        api_response = api_instance.add_user_to_group(group_name, add_user_to_group_input)
        print("The response of GroupApi->add_user_to_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupApi->add_user_to_group: %s\n" % e)
```

### Parameters

| Name                        | Type                                              | Description    | Notes |
| --------------------------- | ------------------------------------------------- | -------------- | ----- |
| **group_name**              | **str**                                           |                |
| **add_user_to_group_input** | [**AddUserToGroupInput**](AddUserToGroupInput.md) | AddUserToGroup |

### Return type

[**GroupUserMappingDto**](GroupUserMappingDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_group**

> GroupDto create_group(create_group_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.create_group_input import CreateGroupInput
from affinidi_tdk_client_vpa.models.group_dto import GroupDto
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    create_group_input = affinidi_tdk_client_vpa.CreateGroupInput() # CreateGroupInput | CreateGroup

    try:
        api_response = api_instance.create_group(create_group_input)
        print("The response of GroupApi->create_group:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupApi->create_group: %s\n" % e)
```

### Parameters

| Name                   | Type                                        | Description | Notes |
| ---------------------- | ------------------------------------------- | ----------- | ----- |
| **create_group_input** | [**CreateGroupInput**](CreateGroupInput.md) | CreateGroup |

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **409**     | ConflictError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_group**

> delete_group(group_name)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    group_name = 'group_name_example' # str |

    try:
        api_instance.delete_group(group_name)
    except Exception as e:
        print("Exception when calling GroupApi->delete_group: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **group_name** | **str** |             |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_group_by_id**

> GroupDto get_group_by_id(group_name)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.group_dto import GroupDto
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    group_name = 'group_name_example' # str |

    try:
        api_response = api_instance.get_group_by_id(group_name)
        print("The response of GroupApi->get_group_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupApi->get_group_by_id: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **group_name** | **str** |             |

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_group_user_mappings**

> GroupUserMappingsList list_group_user_mappings(group_name, limit=limit, exclusive_start_key=exclusive_start_key, sort_order=sort_order)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.group_user_mappings_list import GroupUserMappingsList
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    group_name = 'group_name_example' # str |
    limit = 56 # int | Maximum number of records to fetch in a list (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional)
    sort_order = 'sort_order_example' # str | sort response in specific order. By default it is in desc order (optional)

    try:
        api_response = api_instance.list_group_user_mappings(group_name, limit=limit, exclusive_start_key=exclusive_start_key, sort_order=sort_order)
        print("The response of GroupApi->list_group_user_mappings:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupApi->list_group_user_mappings: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                                                                                                                                    | Notes      |
| ----------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **group_name**          | **str** |                                                                                                                                                                |
| **limit**               | **int** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **str** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |
| **sort_order**          | **str** | sort response in specific order. By default it is in desc order                                                                                                | [optional] |

### Return type

[**GroupUserMappingsList**](GroupUserMappingsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_groups**

> GroupsList list_groups()

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.groups_list import GroupsList
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)

    try:
        api_response = api_instance.list_groups()
        print("The response of GroupApi->list_groups:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling GroupApi->list_groups: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GroupsList**](GroupsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **remove_user_from_group**

> remove_user_from_group(group_name, remove_user_from_group_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.remove_user_from_group_input import RemoveUserFromGroupInput
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
    api_instance = affinidi_tdk_client_vpa.GroupApi(api_client)
    group_name = 'group_name_example' # str |
    remove_user_from_group_input = affinidi_tdk_client_vpa.RemoveUserFromGroupInput() # RemoveUserFromGroupInput | Remove user from group

    try:
        api_instance.remove_user_from_group(group_name, remove_user_from_group_input)
    except Exception as e:
        print("Exception when calling GroupApi->remove_user_from_group: %s\n" % e)
```

### Parameters

| Name                             | Type                                                        | Description            | Notes |
| -------------------------------- | ----------------------------------------------------------- | ---------------------- | ----- |
| **group_name**                   | **str**                                                     |                        |
| **remove_user_from_group_input** | [**RemoveUserFromGroupInput**](RemoveUserFromGroupInput.md) | Remove user from group |

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
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
