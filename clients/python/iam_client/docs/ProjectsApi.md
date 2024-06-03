# affinidi_tdk_iam_client.ProjectsApi

All URIs are relative to _http://localhost_

| Method                                                                            | HTTP request                                     | Description |
| --------------------------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| [**add_principal_to_project**](ProjectsApi.md#add_principal_to_project)           | **POST** /v1/projects/principals                 |
| [**create_project**](ProjectsApi.md#create_project)                               | **POST** /v1/projects                            |
| [**delete_principal_from_project**](ProjectsApi.md#delete_principal_from_project) | **DELETE** /v1/projects/principals/{principalId} |
| [**list_principals_of_project**](ProjectsApi.md#list_principals_of_project)       | **GET** /v1/projects/principals                  |
| [**list_project**](ProjectsApi.md#list_project)                                   | **GET** /v1/projects                             |
| [**update_project**](ProjectsApi.md#update_project)                               | **PATCH** /v1/projects/{projectId}               |

# **add_principal_to_project**

> add_principal_to_project(add_user_to_project_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.add_user_to_project_input import AddUserToProjectInput
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
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
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)
    add_user_to_project_input = affinidi_tdk_iam_client.AddUserToProjectInput() # AddUserToProjectInput | AddPrincipalToProject

    try:
        api_instance.add_principal_to_project(add_user_to_project_input)
    except Exception as e:
        print("Exception when calling ProjectsApi->add_principal_to_project: %s\n" % e)
```

### Parameters

| Name                          | Type                                                  | Description           | Notes |
| ----------------------------- | ----------------------------------------------------- | --------------------- | ----- |
| **add_user_to_project_input** | [**AddUserToProjectInput**](AddUserToProjectInput.md) | AddPrincipalToProject |

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
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_project**

> ProjectDto create_project(create_project_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.create_project_input import CreateProjectInput
from affinidi_tdk_iam_client.models.project_dto import ProjectDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)
    create_project_input = affinidi_tdk_iam_client.CreateProjectInput() # CreateProjectInput | CreateProject

    try:
        api_response = api_instance.create_project(create_project_input)
        print("The response of ProjectsApi->create_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->create_project: %s\n" % e)
```

### Parameters

| Name                     | Type                                            | Description   | Notes |
| ------------------------ | ----------------------------------------------- | ------------- | ----- |
| **create_project_input** | [**CreateProjectInput**](CreateProjectInput.md) | CreateProject |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_principal_from_project**

> delete_principal_from_project(principal_id, principal_type)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
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
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)
    principal_id = 'principal_id_example' # str | id of principal
    principal_type = 'principal_type_example' # str | type of principal

    try:
        api_instance.delete_principal_from_project(principal_id, principal_type)
    except Exception as e:
        print("Exception when calling ProjectsApi->delete_principal_from_project: %s\n" % e)
```

### Parameters

| Name               | Type    | Description       | Notes |
| ------------------ | ------- | ----------------- | ----- |
| **principal_id**   | **str** | id of principal   |
| **principal_type** | **str** | type of principal |

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
| **204**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **409**     | ConflictError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_principals_of_project**

> UserList list_principals_of_project()

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.user_list import UserList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
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
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)

    try:
        api_response = api_instance.list_principals_of_project()
        print("The response of ProjectsApi->list_principals_of_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->list_principals_of_project: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserList**](UserList.md)

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
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_project**

> ProjectList list_project()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.project_list import ProjectList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)

    try:
        api_response = api_instance.list_project()
        print("The response of ProjectsApi->list_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->list_project: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProjectList**](ProjectList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_project**

> ProjectDto update_project(project_id, update_project_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.project_dto import ProjectDto
from affinidi_tdk_iam_client.models.update_project_input import UpdateProjectInput
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ProjectsApi(api_client)
    project_id = 'project_id_example' # str | projectId
    update_project_input = affinidi_tdk_iam_client.UpdateProjectInput() # UpdateProjectInput | UpdateProject

    try:
        api_response = api_instance.update_project(project_id, update_project_input)
        print("The response of ProjectsApi->update_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ProjectsApi->update_project: %s\n" % e)
```

### Parameters

| Name                     | Type                                            | Description   | Notes |
| ------------------------ | ----------------------------------------------- | ------------- | ----- |
| **project_id**           | **str**                                         | projectId     |
| **update_project_input** | [**UpdateProjectInput**](UpdateProjectInput.md) | UpdateProject |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
