# affinidi_tdk_credential_issuance_client.ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                               | HTTP request                                    | Description |
| ------------------------------------------------------------------------------------ | ----------------------------------------------- | ----------- |
| [**create_issuance_config**](ConfigurationApi.md#create_issuance_config)             | **POST** /v1/configurations                     |
| [**delete_issuance_config_by_id**](ConfigurationApi.md#delete_issuance_config_by_id) | **DELETE** /v1/configurations/{configurationId} |
| [**get_issuance_config_by_id**](ConfigurationApi.md#get_issuance_config_by_id)       | **GET** /v1/configurations/{configurationId}    |
| [**get_issuance_config_list**](ConfigurationApi.md#get_issuance_config_list)         | **GET** /v1/configurations                      |
| [**update_issuance_config_by_id**](ConfigurationApi.md#update_issuance_config_by_id) | **PUT** /v1/configurations/{configurationId}    |

# **create_issuance_config**

> IssuanceConfigDto create_issuance_config(create_issuance_config_input)

Create issuance configuration, project have only one configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.create_issuance_config_input import CreateIssuanceConfigInput
from affinidi_tdk_credential_issuance_client.models.issuance_config_dto import IssuanceConfigDto
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)
    create_issuance_config_input = affinidi_tdk_credential_issuance_client.CreateIssuanceConfigInput() # CreateIssuanceConfigInput | Request body of create configuration

    try:
        api_response = api_instance.create_issuance_config(create_issuance_config_input)
        print("The response of ConfigurationApi->create_issuance_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->create_issuance_config: %s\n" % e)
```

### Parameters

| Name                             | Type                                                          | Description                          | Notes |
| -------------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **create_issuance_config_input** | [**CreateIssuanceConfigInput**](CreateIssuanceConfigInput.md) | Request body of create configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_issuance_config_by_id**

> delete_issuance_config_by_id(configuration_id)

Delete project issuance configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the issuance configuration

    try:
        api_instance.delete_issuance_config_by_id(configuration_id)
    except Exception as e:
        print("Exception when calling ConfigurationApi->delete_issuance_config_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                          | Notes |
| -------------------- | ------- | ------------------------------------ | ----- |
| **configuration_id** | **str** | The id of the issuance configuration |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                      | Response headers |
| ----------- | -------------------------------- | ---------------- |
| **204**     | Response for deleting the config | -                |
| **400**     | BadRequestError                  | -                |
| **404**     | NotFoundError                    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuance_config_by_id**

> IssuanceConfigDto get_issuance_config_by_id(configuration_id)

Get issuance configuration by id

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.issuance_config_dto import IssuanceConfigDto
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the issuance configuration

    try:
        api_response = api_instance.get_issuance_config_by_id(configuration_id)
        print("The response of ConfigurationApi->get_issuance_config_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->get_issuance_config_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                          | Notes |
| -------------------- | ------- | ------------------------------------ | ----- |
| **configuration_id** | **str** | The id of the issuance configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuance_config_list**

> IssuanceConfigListResponse get_issuance_config_list()

Get issuance configuration for my selected project

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.issuance_config_list_response import IssuanceConfigListResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)

    try:
        api_response = api_instance.get_issuance_config_list()
        print("The response of ConfigurationApi->get_issuance_config_list:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->get_issuance_config_list: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfigListResponse**](IssuanceConfigListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_issuance_config_by_id**

> IssuanceConfigDto update_issuance_config_by_id(configuration_id, update_issuance_config_input)

Update issuance configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.issuance_config_dto import IssuanceConfigDto
from affinidi_tdk_credential_issuance_client.models.update_issuance_config_input import UpdateIssuanceConfigInput
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.ConfigurationApi(api_client)
    configuration_id = 'configuration_id_example' # str | The id of the issuance configuration
    update_issuance_config_input = affinidi_tdk_credential_issuance_client.UpdateIssuanceConfigInput() # UpdateIssuanceConfigInput | Request body of update configuration

    try:
        api_response = api_instance.update_issuance_config_by_id(configuration_id, update_issuance_config_input)
        print("The response of ConfigurationApi->update_issuance_config_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->update_issuance_config_by_id: %s\n" % e)
```

### Parameters

| Name                             | Type                                                          | Description                          | Notes |
| -------------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **configuration_id**             | **str**                                                       | The id of the issuance configuration |
| **update_issuance_config_input** | [**UpdateIssuanceConfigInput**](UpdateIssuanceConfigInput.md) | Request body of update configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
