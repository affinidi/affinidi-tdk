# affinidi_tdk_client_iam.XAffinidiTdkApi

All URIs are relative to _http://localhost_

| Method                                                                                | HTTP request                                     | Description                           |
| ------------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------- |
| [**add_principal_to_project**](XAffinidiTdkApi.md#add_principal_to_project)           | **POST** /v1/projects/principals                 |
| [**consumer_auth_token_endpoint**](XAffinidiTdkApi.md#consumer_auth_token_endpoint)   | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint |
| [**create_project**](XAffinidiTdkApi.md#create_project)                               | **POST** /v1/projects                            |
| [**create_project_scoped_token**](XAffinidiTdkApi.md#create_project_scoped_token)     | **POST** /v1/sts/create-project-scoped-token     |
| [**create_token**](XAffinidiTdkApi.md#create_token)                                   | **POST** /v1/tokens                              |
| [**delete_principal_from_project**](XAffinidiTdkApi.md#delete_principal_from_project) | **DELETE** /v1/projects/principals/{principalId} |
| [**delete_token**](XAffinidiTdkApi.md#delete_token)                                   | **DELETE** /v1/tokens/{tokenId}                  |
| [**get_policies**](XAffinidiTdkApi.md#get_policies)                                   | **GET** /v1/policies/principals/{principalId}    |
| [**get_token**](XAffinidiTdkApi.md#get_token)                                         | **GET** /v1/tokens/{tokenId}                     |
| [**get_well_known_jwks**](XAffinidiTdkApi.md#get_well_known_jwks)                     | **GET** /.well-known/jwks.json                   |
| [**list_principals_of_project**](XAffinidiTdkApi.md#list_principals_of_project)       | **GET** /v1/projects/principals                  |
| [**list_project**](XAffinidiTdkApi.md#list_project)                                   | **GET** /v1/projects                             |
| [**list_token**](XAffinidiTdkApi.md#list_token)                                       | **GET** /v1/tokens                               |
| [**update_policies**](XAffinidiTdkApi.md#update_policies)                             | **PUT** /v1/policies/principals/{principalId}    |
| [**update_project**](XAffinidiTdkApi.md#update_project)                               | **PATCH** /v1/projects/{projectId}               |
| [**update_token**](XAffinidiTdkApi.md#update_token)                                   | **PATCH** /v1/tokens/{tokenId}                   |
| [**v1_auth_proxy_delete**](XAffinidiTdkApi.md#v1_auth_proxy_delete)                   | **DELETE** /v1/auth/{proxy+}                     |
| [**v1_auth_proxy_get**](XAffinidiTdkApi.md#v1_auth_proxy_get)                         | **GET** /v1/auth/{proxy+}                        |
| [**v1_auth_proxy_patch**](XAffinidiTdkApi.md#v1_auth_proxy_patch)                     | **PATCH** /v1/auth/{proxy+}                      |
| [**v1_auth_proxy_post**](XAffinidiTdkApi.md#v1_auth_proxy_post)                       | **POST** /v1/auth/{proxy+}                       |
| [**v1_auth_proxy_put**](XAffinidiTdkApi.md#v1_auth_proxy_put)                         | **PUT** /v1/auth/{proxy+}                        |
| [**v1_idp_proxy_delete**](XAffinidiTdkApi.md#v1_idp_proxy_delete)                     | **DELETE** /v1/idp/{proxy+}                      |
| [**v1_idp_proxy_get**](XAffinidiTdkApi.md#v1_idp_proxy_get)                           | **GET** /v1/idp/{proxy+}                         |
| [**v1_idp_proxy_patch**](XAffinidiTdkApi.md#v1_idp_proxy_patch)                       | **PATCH** /v1/idp/{proxy+}                       |
| [**v1_idp_proxy_post**](XAffinidiTdkApi.md#v1_idp_proxy_post)                         | **POST** /v1/idp/{proxy+}                        |
| [**v1_idp_proxy_put**](XAffinidiTdkApi.md#v1_idp_proxy_put)                           | **PUT** /v1/idp/{proxy+}                         |
| [**whoami**](XAffinidiTdkApi.md#whoami)                                               | **GET** /v1/sts/whoami                           |

# **add_principal_to_project**

> add_principal_to_project(add_user_to_project_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.add_user_to_project_input import AddUserToProjectInput
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    add_user_to_project_input = affinidi_tdk_client_iam.AddUserToProjectInput() # AddUserToProjectInput | AddPrincipalToProject

    try:
        api_instance.add_principal_to_project(add_user_to_project_input)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->add_principal_to_project: %s\n" % e)
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

# **consumer_auth_token_endpoint**

> ConsumerAuthTokenEndpointOutput consumer_auth_token_endpoint(consumer_auth_token_endpoint_input)

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.consumer_auth_token_endpoint_input import ConsumerAuthTokenEndpointInput
from affinidi_tdk_client_iam.models.consumer_auth_token_endpoint_output import ConsumerAuthTokenEndpointOutput
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    consumer_auth_token_endpoint_input = affinidi_tdk_client_iam.ConsumerAuthTokenEndpointInput() # ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

    try:
        # The Consumer OAuth 2.0 Token Endpoint
        api_response = api_instance.consumer_auth_token_endpoint(consumer_auth_token_endpoint_input)
        print("The response of XAffinidiTdkApi->consumer_auth_token_endpoint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->consumer_auth_token_endpoint: %s\n" % e)
```

### Parameters

| Name                                   | Type                                                                    | Description               | Notes |
| -------------------------------------- | ----------------------------------------------------------------------- | ------------------------- | ----- |
| **consumer_auth_token_endpoint_input** | [**ConsumerAuthTokenEndpointInput**](ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |

### Return type

[**ConsumerAuthTokenEndpointOutput**](ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Consumer Token OK Response | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError             | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_project**

> ProjectDto create_project(create_project_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.create_project_input import CreateProjectInput
from affinidi_tdk_client_iam.models.project_dto import ProjectDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    create_project_input = affinidi_tdk_client_iam.CreateProjectInput() # CreateProjectInput | CreateProject

    try:
        api_response = api_instance.create_project(create_project_input)
        print("The response of XAffinidiTdkApi->create_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->create_project: %s\n" % e)
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

# **create_project_scoped_token**

> CreateProjectScopedTokenOutput create_project_scoped_token(create_project_scoped_token_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.create_project_scoped_token_input import CreateProjectScopedTokenInput
from affinidi_tdk_client_iam.models.create_project_scoped_token_output import CreateProjectScopedTokenOutput
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    create_project_scoped_token_input = affinidi_tdk_client_iam.CreateProjectScopedTokenInput() # CreateProjectScopedTokenInput | CreateProjectScopedToken

    try:
        api_response = api_instance.create_project_scoped_token(create_project_scoped_token_input)
        print("The response of XAffinidiTdkApi->create_project_scoped_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->create_project_scoped_token: %s\n" % e)
```

### Parameters

| Name                                  | Type                                                                  | Description              | Notes |
| ------------------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **create_project_scoped_token_input** | [**CreateProjectScopedTokenInput**](CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |

### Return type

[**CreateProjectScopedTokenOutput**](CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                   | Response headers |
| ----------- | ----------------------------- | ---------------- |
| **200**     | Created Project Scoped Tokens | -                |
| **400**     | BadRequestError               | -                |
| **403**     | ForbiddenError                | -                |
| **500**     | UnexpectedError               | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_token**

> TokenDto create_token(create_token_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.create_token_input import CreateTokenInput
from affinidi_tdk_client_iam.models.token_dto import TokenDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    create_token_input = affinidi_tdk_client_iam.CreateTokenInput() # CreateTokenInput | CreateToken

    try:
        api_response = api_instance.create_token(create_token_input)
        print("The response of XAffinidiTdkApi->create_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->create_token: %s\n" % e)
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

# **delete_principal_from_project**

> delete_principal_from_project(principal_id, principal_type)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    principal_id = 'principal_id_example' # str | id of principal
    principal_type = 'principal_type_example' # str | type of principal

    try:
        api_instance.delete_principal_from_project(principal_id, principal_type)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->delete_principal_from_project: %s\n" % e)
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
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_token**

> delete_token(token_id)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    token_id = 'token_id_example' # str |

    try:
        api_instance.delete_token(token_id)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->delete_token: %s\n" % e)
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

# **get_policies**

> PolicyDto get_policies(principal_id, principal_type)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.policy_dto import PolicyDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    principal_id = 'principal_id_example' # str |
    principal_type = 'principal_type_example' # str |

    try:
        api_response = api_instance.get_policies(principal_id, principal_type)
        print("The response of XAffinidiTdkApi->get_policies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->get_policies: %s\n" % e)
```

### Parameters

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **principal_id**   | **str** |             |
| **principal_type** | **str** |             |

### Return type

[**PolicyDto**](PolicyDto.md)

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
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.token_dto import TokenDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    token_id = 'token_id_example' # str |

    try:
        api_response = api_instance.get_token(token_id)
        print("The response of XAffinidiTdkApi->get_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->get_token: %s\n" % e)
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

# **get_well_known_jwks**

> JsonWebKeySetDto get_well_known_jwks()

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.json_web_key_set_dto import JsonWebKeySetDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)

    try:
        api_response = api_instance.get_well_known_jwks()
        print("The response of XAffinidiTdkApi->get_well_known_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->get_well_known_jwks: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonWebKeySetDto**](JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                              | Response headers |
| ----------- | ---------------------------------------- | ---------------- |
| **200**     | List of JWK used by the services as JWKS | -                |
| **500**     | UnexpectedError                          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_principals_of_project**

> UserList list_principals_of_project()

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.user_list import UserList
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)

    try:
        api_response = api_instance.list_principals_of_project()
        print("The response of XAffinidiTdkApi->list_principals_of_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->list_principals_of_project: %s\n" % e)
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
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.project_list import ProjectList
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)

    try:
        api_response = api_instance.list_project()
        print("The response of XAffinidiTdkApi->list_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->list_project: %s\n" % e)
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

# **list_token**

> TokenList list_token()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.token_list import TokenList
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)

    try:
        api_response = api_instance.list_token()
        print("The response of XAffinidiTdkApi->list_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->list_token: %s\n" % e)
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

# **update_policies**

> PolicyDto update_policies(principal_id, principal_type, policy_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.policy_dto import PolicyDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    principal_id = 'principal_id_example' # str |
    principal_type = 'principal_type_example' # str |
    policy_dto = affinidi_tdk_client_iam.PolicyDto() # PolicyDto | UpdatePolicies

    try:
        api_response = api_instance.update_policies(principal_id, principal_type, policy_dto)
        print("The response of XAffinidiTdkApi->update_policies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->update_policies: %s\n" % e)
```

### Parameters

| Name               | Type                          | Description    | Notes |
| ------------------ | ----------------------------- | -------------- | ----- |
| **principal_id**   | **str**                       |                |
| **principal_type** | **str**                       |                |
| **policy_dto**     | [**PolicyDto**](PolicyDto.md) | UpdatePolicies |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

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

# **update_project**

> ProjectDto update_project(project_id, update_project_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.project_dto import ProjectDto
from affinidi_tdk_client_iam.models.update_project_input import UpdateProjectInput
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    project_id = 'project_id_example' # str | projectId
    update_project_input = affinidi_tdk_client_iam.UpdateProjectInput() # UpdateProjectInput | UpdateProject

    try:
        api_response = api_instance.update_project(project_id, update_project_input)
        print("The response of XAffinidiTdkApi->update_project:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->update_project: %s\n" % e)
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

# **update_token**

> TokenDto update_token(token_id, update_token_input)

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.token_dto import TokenDto
from affinidi_tdk_client_iam.models.update_token_input import UpdateTokenInput
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    token_id = 'token_id_example' # str |
    update_token_input = affinidi_tdk_client_iam.UpdateTokenInput() # UpdateTokenInput | UpdateToken

    try:
        api_response = api_instance.update_token(token_id, update_token_input)
        print("The response of XAffinidiTdkApi->update_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->update_token: %s\n" % e)
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

# **v1_auth_proxy_delete**

> v1_auth_proxy_delete(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_delete(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_auth_proxy_delete: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_get**

> v1_auth_proxy_get(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_get(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_auth_proxy_get: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_patch**

> v1_auth_proxy_patch(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_patch(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_auth_proxy_patch: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_post**

> v1_auth_proxy_post(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_post(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_auth_proxy_post: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_auth_proxy_put**

> v1_auth_proxy_put(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_auth_proxy_put(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_auth_proxy_put: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_delete**

> v1_idp_proxy_delete(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_delete(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_idp_proxy_delete: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_get**

> v1_idp_proxy_get(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_get(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_idp_proxy_get: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_patch**

> v1_idp_proxy_patch(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_patch(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_idp_proxy_patch: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_post**

> v1_idp_proxy_post(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_post(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_idp_proxy_post: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_idp_proxy_put**

> v1_idp_proxy_put(proxy)

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)
    proxy = 'proxy_example' # str |

    try:
        api_instance.v1_idp_proxy_put(proxy)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->v1_idp_proxy_put: %s\n" % e)
```

### Parameters

| Name      | Type    | Description | Notes |
| --------- | ------- | ----------- | ----- |
| **proxy** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**

> WhoamiDto whoami()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.whoami_dto import WhoamiDto
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
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
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.XAffinidiTdkApi(api_client)

    try:
        api_response = api_instance.whoami()
        print("The response of XAffinidiTdkApi->whoami:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling XAffinidiTdkApi->whoami: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiDto**](WhoamiDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | User info       | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
