# affinidi_tdk_client_cis.ConfigurationApi

All URIs are relative to _http://localhost_

| Method                                                                   | HTTP request                 | Description |
| ------------------------------------------------------------------------ | ---------------------------- | ----------- |
| [**create_issuance_config**](ConfigurationApi.md#create_issuance_config) | **POST** /v1/configuration   |
| [**delete_issuance_config**](ConfigurationApi.md#delete_issuance_config) | **DELETE** /v1/configuration |
| [**get_issuance_config**](ConfigurationApi.md#get_issuance_config)       | **GET** /v1/configuration    |
| [**update_issuance_config**](ConfigurationApi.md#update_issuance_config) | **PUT** /v1/configuration    |

# **create_issuance_config**

> IssuanceConfig create_issuance_config(create_issuance_config_input)

Create issuance configuration, project have only one configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.models.create_issuance_config_input import CreateIssuanceConfigInput
from affinidi_tdk_client_cis.models.issuance_config import IssuanceConfig
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
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
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.ConfigurationApi(api_client)
    create_issuance_config_input = affinidi_tdk_client_cis.CreateIssuanceConfigInput() # CreateIssuanceConfigInput | Request body of create configuration

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

[**IssuanceConfig**](IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_issuance_config**

> delete_issuance_config()

Delete project issuance configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
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
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.ConfigurationApi(api_client)

    try:
        api_instance.delete_issuance_config()
    except Exception as e:
        print("Exception when calling ConfigurationApi->delete_issuance_config: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description                      | Response headers |
| ----------- | -------------------------------- | ---------------- |
| **204**     | Response for deleting the config | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuance_config**

> IssuanceConfig get_issuance_config()

Get issuance configuration for my selected project

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.models.issuance_config import IssuanceConfig
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
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
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.ConfigurationApi(api_client)

    try:
        api_response = api_instance.get_issuance_config()
        print("The response of ConfigurationApi->get_issuance_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->get_issuance_config: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfig**](IssuanceConfig.md)

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

# **update_issuance_config**

> IssuanceConfig update_issuance_config(update_issuance_config_input)

Update issuance configuration

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.models.issuance_config import IssuanceConfig
from affinidi_tdk_client_cis.models.update_issuance_config_input import UpdateIssuanceConfigInput
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
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
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.ConfigurationApi(api_client)
    update_issuance_config_input = affinidi_tdk_client_cis.UpdateIssuanceConfigInput() # UpdateIssuanceConfigInput | Request body of update configuration

    try:
        api_response = api_instance.update_issuance_config(update_issuance_config_input)
        print("The response of ConfigurationApi->update_issuance_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigurationApi->update_issuance_config: %s\n" % e)
```

### Parameters

| Name                             | Type                                                          | Description                          | Notes |
| -------------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **update_issuance_config_input** | [**UpdateIssuanceConfigInput**](UpdateIssuanceConfigInput.md) | Request body of update configuration |

### Return type

[**IssuanceConfig**](IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
