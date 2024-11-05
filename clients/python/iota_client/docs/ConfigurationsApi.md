# affinidi_tdk_iota_client.ConfigurationsApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                        | HTTP request                                                               | Description |
| --------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**create_iota_configuration**](ConfigurationsApi.md#create_iota_configuration)               | **POST** /v1/configurations                                                |
| [**delete_iota_configuration_by_id**](ConfigurationsApi.md#delete_iota_configuration_by_id)   | **DELETE** /v1/configurations/{configurationId}                            |
| [**get_iota_configuration_by_id**](ConfigurationsApi.md#get_iota_configuration_by_id)         | **GET** /v1/configurations/{configurationId}                               |
| [**get_iota_configuration_meta_data**](ConfigurationsApi.md#get_iota_configuration_meta_data) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |
| [**list_iota_configurations**](ConfigurationsApi.md#list_iota_configurations)                 | **GET** /v1/configurations                                                 |
| [**update_iota_configuration_by_id**](ConfigurationsApi.md#update_iota_configuration_by_id)   | **PATCH** /v1/configurations/{configurationId}                             |

# **create_iota_configuration**

> IotaConfigurationDto create_iota_configuration(create_iota_configuration_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.create_iota_configuration_input import CreateIotaConfigurationInput
from affinidi_tdk_iota_client.models.iota_configuration_dto import IotaConfigurationDto
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)
    create_iota_configuration_input = affinidi_tdk_iota_client.CreateIotaConfigurationInput() # CreateIotaConfigurationInput | CreateConfiguration

    try:
        api_response = api_instance.create_iota_configuration(create_iota_configuration_input)
        print("The response of ConfigurationsApi->create_iota_configuration:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->create_iota_configuration: %s\n" % e)
```

### Parameters

| Name                                | Type                                                                | Description         | Notes |
| ----------------------------------- | ------------------------------------------------------------------- | ------------------- | ----- |
| **create_iota_configuration_input** | [**CreateIotaConfigurationInput**](CreateIotaConfigurationInput.md) | CreateConfiguration |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | CreateConfigurationOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **409**     | ConflictError         | -                |
| **422**     | UnprocessableEntity   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_iota_configuration_by_id**

> delete_iota_configuration_by_id(configuration_id)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id

    try:
        api_instance.delete_iota_configuration_by_id(configuration_id)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->delete_iota_configuration_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description          | Notes |
| -------------------- | ------- | -------------------- | ----- |
| **configuration_id** | **str** | iotaConfiguration Id |

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

# **get_iota_configuration_by_id**

> IotaConfigurationDto get_iota_configuration_by_id(configuration_id)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.iota_configuration_dto import IotaConfigurationDto
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id

    try:
        api_response = api_instance.get_iota_configuration_by_id(configuration_id)
        print("The response of ConfigurationsApi->get_iota_configuration_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->get_iota_configuration_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description          | Notes |
| -------------------- | ------- | -------------------- | ----- |
| **configuration_id** | **str** | iotaConfiguration Id |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **200**     | GetConfigurationByIdOK | -                |
| **400**     | BadRequestError        | -                |
| **403**     | ForbiddenError         | -                |
| **404**     | NotFoundError          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_iota_configuration_meta_data**

> GetIotaConfigurationMetaDataOK get_iota_configuration_meta_data(project_id, configuration_id)

### Example

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.get_iota_configuration_meta_data_ok import GetIotaConfigurationMetaDataOK
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)
    project_id = 'project_id_example' # str | project Id
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id

    try:
        api_response = api_instance.get_iota_configuration_meta_data(project_id, configuration_id)
        print("The response of ConfigurationsApi->get_iota_configuration_meta_data:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->get_iota_configuration_meta_data: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description          | Notes |
| -------------------- | ------- | -------------------- | ----- |
| **project_id**       | **str** | project Id           |
| **configuration_id** | **str** | iotaConfiguration Id |

### Return type

[**GetIotaConfigurationMetaDataOK**](GetIotaConfigurationMetaDataOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | GetIotaConfigurationMetaDataOK | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_iota_configurations**

> ListConfigurationOK list_iota_configurations()

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.list_configuration_ok import ListConfigurationOK
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)

    try:
        api_response = api_instance.list_iota_configurations()
        print("The response of ConfigurationsApi->list_iota_configurations:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->list_iota_configurations: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConfigurationOK**](ListConfigurationOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | ListConfigurationOK | -                |
| **400**     | BadRequestError     | -                |
| **403**     | ForbiddenError      | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_iota_configuration_by_id**

> IotaConfigurationDto update_iota_configuration_by_id(configuration_id, update_configuration_by_id_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.iota_configuration_dto import IotaConfigurationDto
from affinidi_tdk_iota_client.models.update_configuration_by_id_input import UpdateConfigurationByIdInput
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.ConfigurationsApi(api_client)
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id
    update_configuration_by_id_input = affinidi_tdk_iota_client.UpdateConfigurationByIdInput() # UpdateConfigurationByIdInput | UpdateConfigurationById

    try:
        api_response = api_instance.update_iota_configuration_by_id(configuration_id, update_configuration_by_id_input)
        print("The response of ConfigurationsApi->update_iota_configuration_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationsApi->update_iota_configuration_by_id: %s\n" % e)
```

### Parameters

| Name                                 | Type                                                                | Description             | Notes |
| ------------------------------------ | ------------------------------------------------------------------- | ----------------------- | ----- |
| **configuration_id**                 | **str**                                                             | iotaConfiguration Id    |
| **update_configuration_by_id_input** | [**UpdateConfigurationByIdInput**](UpdateConfigurationByIdInput.md) | UpdateConfigurationById |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | UpdateConfigurationByIdOK | -                |
| **400**     | BadRequestError           | -                |
| **403**     | ForbiddenError            | -                |
| **404**     | NotFoundError             | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
