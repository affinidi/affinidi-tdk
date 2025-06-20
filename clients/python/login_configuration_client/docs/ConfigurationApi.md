# affinidi_tdk_login_configuration_client.ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                         | HTTP request                                          | Description                                |
| ---------------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**create_login_configurations**](ConfigurationApi.md#create_login_configurations)             | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**delete_login_configurations_by_id**](ConfigurationApi.md#delete_login_configurations_by_id) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**get_client_metadata_by_client_id**](ConfigurationApi.md#get_client_metadata_by_client_id)   | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**get_login_configurations_by_id**](ConfigurationApi.md#get_login_configurations_by_id)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**list_login_configurations**](ConfigurationApi.md#list_login_configurations)                 | **GET** /v1/login/configurations                      | List login configurations                  |
| [**update_login_configurations_by_id**](ConfigurationApi.md#update_login_configurations_by_id) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

# **create_login_configurations**

> CreateLoginConfigurationOutput create_login_configurations(create_login_configuration_input=create_login_configuration_input)

Create a new login configuration

Create a new login configuration

`vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions.

An essential default definition is in place when it comes to the login process for end users using the Chrome extension.

This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.create_login_configuration_input import CreateLoginConfigurationInput
from affinidi_tdk_login_configuration_client.models.create_login_configuration_output import CreateLoginConfigurationOutput
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
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    create_login_configuration_input = affinidi_tdk_login_configuration_client.CreateLoginConfigurationInput() # CreateLoginConfigurationInput | CreateLoginConfigurations (optional)

    try:
        # Create a new login configuration
        api_response = api_instance.create_login_configurations(create_login_configuration_input=create_login_configuration_input)
        print("The response of ConfigurationApi->create_login_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->create_login_configurations: %s\n" % e)
```

### Parameters

| Name                                 | Type                                                                  | Description               | Notes      |
| ------------------------------------ | --------------------------------------------------------------------- | ------------------------- | ---------- |
| **create_login_configuration_input** | [**CreateLoginConfigurationInput**](CreateLoginConfigurationInput.md) | CreateLoginConfigurations | [optional] |

### Return type

[**CreateLoginConfigurationOutput**](CreateLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | Created               | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **424**     | FailedDependencyError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_login_configurations_by_id**

> delete_login_configurations_by_id(configuration_id)

Delete login configurations by ID

Delete login configurations by ID

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
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
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the login configuration

    try:
        # Delete login configurations by ID
        api_instance.delete_login_configurations_by_id(configuration_id)
    except Exception as e:
        print("Exception when calling ConfigurationApi->delete_login_configurations_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                       | Notes |
| -------------------- | ------- | --------------------------------- | ----- |
| **configuration_id** | **str** | The id of the login configuration |

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
| **204**     | Deleted         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_client_metadata_by_client_id**

> LoginConfigurationClientMetadataOutput get_client_metadata_by_client_id(client_id)

Get Client Metadata By OAuth 2.0 Client ID

Get Client Metadata By OAuth 2.0 Client ID

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.login_configuration_client_metadata_output import LoginConfigurationClientMetadataOutput
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    client_id = 'client_id_example' # str | OAuth 2.0 Client ID

    try:
        # Get Client Metadata By  OAuth 2.0 Client ID
        api_response = api_instance.get_client_metadata_by_client_id(client_id)
        print("The response of ConfigurationApi->get_client_metadata_by_client_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->get_client_metadata_by_client_id: %s\n" % e)
```

### Parameters

| Name          | Type    | Description         | Notes |
| ------------- | ------- | ------------------- | ----- |
| **client_id** | **str** | OAuth 2.0 Client ID |

### Return type

[**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_login_configurations_by_id**

> LoginConfigurationObject get_login_configurations_by_id(configuration_id)

Get login configuration by ID

Get login configuration by ID

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.login_configuration_object import LoginConfigurationObject
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
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the login configuration

    try:
        # Get login configuration by ID
        api_response = api_instance.get_login_configurations_by_id(configuration_id)
        print("The response of ConfigurationApi->get_login_configurations_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->get_login_configurations_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                       | Notes |
| -------------------- | ------- | --------------------------------- | ----- |
| **configuration_id** | **str** | The id of the login configuration |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                 | Response headers |
| ----------- | --------------------------- | ---------------- |
| **200**     | GetLoginConfigurationOutput | -                |
| **400**     | BadRequestError             | -                |
| **403**     | ForbiddenError              | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_login_configurations**

> ListLoginConfigurationOutput list_login_configurations(limit=limit, exclusive_start_key=exclusive_start_key)

List login configurations

Endpoint to retrieve list of login configurations

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.list_login_configuration_output import ListLoginConfigurationOutput
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
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    limit = 56 # int | Maximum number of records to fetch in a list (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional)

    try:
        # List login configurations
        api_response = api_instance.list_login_configurations(limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of ConfigurationApi->list_login_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->list_login_configurations: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                                                                                                                                    | Notes      |
| ----------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **limit**               | **int** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **str** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoginConfigurationOutput**](ListLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers |
| ----------- | ---------------------------- | ---------------- |
| **200**     | ListLoginConfigurationOutput | -                |
| **400**     | BadRequestError              | -                |
| **403**     | ForbiddenError               | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_login_configurations_by_id**

> LoginConfigurationObject update_login_configurations_by_id(configuration_id, update_login_configuration_input=update_login_configuration_input)

Update login configurations by ID

Update login configurations by ID

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.login_configuration_object import LoginConfigurationObject
from affinidi_tdk_login_configuration_client.models.update_login_configuration_input import UpdateLoginConfigurationInput
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
    api_instance = affinidi_tdk_login_configuration_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the login configuration
    update_login_configuration_input = affinidi_tdk_login_configuration_client.UpdateLoginConfigurationInput() # UpdateLoginConfigurationInput | UpdateLoginConfigurationsById (optional)

    try:
        # Update login configurations by ID
        api_response = api_instance.update_login_configurations_by_id(configuration_id, update_login_configuration_input=update_login_configuration_input)
        print("The response of ConfigurationApi->update_login_configurations_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->update_login_configurations_by_id: %s\n" % e)
```

### Parameters

| Name                                 | Type                                                                  | Description                       | Notes      |
| ------------------------------------ | --------------------------------------------------------------------- | --------------------------------- | ---------- |
| **configuration_id**                 | **str**                                                               | The id of the login configuration |
| **update_login_configuration_input** | [**UpdateLoginConfigurationInput**](UpdateLoginConfigurationInput.md) | UpdateLoginConfigurationsById     | [optional] |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | UpdateLoginConfigurationOutput | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
