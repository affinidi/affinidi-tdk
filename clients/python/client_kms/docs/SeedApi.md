# affinidi_tdk_client_kms.SeedApi

All URIs are relative to _http://localhost_

| Method                                                            | HTTP request                            | Description |
| ----------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**create_seed**](SeedApi.md#create_seed)                         | **POST** /v1/seeds                      |
| [**export_seed_as_mnemonic**](SeedApi.md#export_seed_as_mnemonic) | **POST** /v1/seeds/{id}/export-mnemonic |
| [**get_key**](SeedApi.md#get_key)                                 | **GET** /v1/keys/{id}                   |
| [**get_seed**](SeedApi.md#get_seed)                               | **GET** /v1/seeds/{id}                  |
| [**import_seed**](SeedApi.md#import_seed)                         | **POST** /v1/seeds/import               |
| [**list_seed**](SeedApi.md#list_seed)                             | **GET** /v1/seeds                       |
| [**revoke_seed**](SeedApi.md#revoke_seed)                         | **PATCH** /v1/seeds/{id}/revoke         |

# **create_seed**

> CreateSeedResultDto create_seed(empty_input=empty_input)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.create_seed_result_dto import CreateSeedResultDto
from affinidi_tdk_client_kms.models.empty_input import EmptyInput
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    empty_input = affinidi_tdk_client_kms.EmptyInput() # EmptyInput | CreateSeed (optional)

    try:
        api_response = api_instance.create_seed(empty_input=empty_input)
        print("The response of SeedApi->create_seed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->create_seed: %s\n" % e)
```

### Parameters

| Name            | Type                            | Description | Notes      |
| --------------- | ------------------------------- | ----------- | ---------- |
| **empty_input** | [**EmptyInput**](EmptyInput.md) | CreateSeed  | [optional] |

### Return type

[**CreateSeedResultDto**](CreateSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | Created     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **export_seed_as_mnemonic**

> ExportSeedResultDto export_seed_as_mnemonic(id, empty_input=empty_input)

Export seed as a mnemonic phrase (for seed 128bit / 256bit (default)). Returns the exported seed from the service

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.empty_input import EmptyInput
from affinidi_tdk_client_kms.models.export_seed_result_dto import ExportSeedResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    id = 'id_example' # str | id of seed to be exported
    empty_input = affinidi_tdk_client_kms.EmptyInput() # EmptyInput | ExportSeedAsMnemonic (optional)

    try:
        api_response = api_instance.export_seed_as_mnemonic(id, empty_input=empty_input)
        print("The response of SeedApi->export_seed_as_mnemonic:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->export_seed_as_mnemonic: %s\n" % e)
```

### Parameters

| Name            | Type                            | Description               | Notes      |
| --------------- | ------------------------------- | ------------------------- | ---------- |
| **id**          | **str**                         | id of seed to be exported |
| **empty_input** | [**EmptyInput**](EmptyInput.md) | ExportSeedAsMnemonic      | [optional] |

### Return type

[**ExportSeedResultDto**](ExportSeedResultDto.md)

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

# **get_key**

> GetKeyResultDto get_key(id)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.get_key_result_dto import GetKeyResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    id = 'id_example' # str | id of key

    try:
        api_response = api_instance.get_key(id)
        print("The response of SeedApi->get_key:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->get_key: %s\n" % e)
```

### Parameters

| Name   | Type    | Description | Notes |
| ------ | ------- | ----------- | ----- |
| **id** | **str** | id of key   |

### Return type

[**GetKeyResultDto**](GetKeyResultDto.md)

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

# **get_seed**

> GetSeedResultDto get_seed(id)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.get_seed_result_dto import GetSeedResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    id = 'id_example' # str | id of seed record

    try:
        api_response = api_instance.get_seed(id)
        print("The response of SeedApi->get_seed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->get_seed: %s\n" % e)
```

### Parameters

| Name   | Type    | Description       | Notes |
| ------ | ------- | ----------------- | ----- |
| **id** | **str** | id of seed record |

### Return type

[**GetSeedResultDto**](GetSeedResultDto.md)

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

# **import_seed**

> CreateSeedResultDto import_seed(import_seed_request)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.create_seed_result_dto import CreateSeedResultDto
from affinidi_tdk_client_kms.models.import_seed_request import ImportSeedRequest
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    import_seed_request = affinidi_tdk_client_kms.ImportSeedRequest() # ImportSeedRequest | ImportSeed

    try:
        api_response = api_instance.import_seed(import_seed_request)
        print("The response of SeedApi->import_seed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->import_seed: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description | Notes |
| ----------------------- | --------------------------------------------- | ----------- | ----- |
| **import_seed_request** | [**ImportSeedRequest**](ImportSeedRequest.md) | ImportSeed  |

### Return type

[**CreateSeedResultDto**](CreateSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **201**     | Created     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_seed**

> ListSeedResultDto list_seed(status=status)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.list_seed_result_dto import ListSeedResultDto
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    status = 'status_example' # str |  (optional)

    try:
        api_response = api_instance.list_seed(status=status)
        print("The response of SeedApi->list_seed:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling SeedApi->list_seed: %s\n" % e)
```

### Parameters

| Name       | Type    | Description | Notes      |
| ---------- | ------- | ----------- | ---------- |
| **status** | **str** |             | [optional] |

### Return type

[**ListSeedResultDto**](ListSeedResultDto.md)

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

# **revoke_seed**

> revoke_seed(id, empty_input=empty_input)

revokes the seed, after that the keys derived from this seed cannot be used anymore. Revoked seed id will be listed in seed list with isRevoked=true flag

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kms
from affinidi_tdk_client_kms.models.empty_input import EmptyInput
from affinidi_tdk_client_kms.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kms.Configuration(
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
with affinidi_tdk_client_kms.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kms.SeedApi(api_client)
    id = 'id_example' # str | id of seed record
    empty_input = affinidi_tdk_client_kms.EmptyInput() # EmptyInput | RevokeSeed (optional)

    try:
        api_instance.revoke_seed(id, empty_input=empty_input)
    except Exception as e:
        print("Exception when calling SeedApi->revoke_seed: %s\n" % e)
```

### Parameters

| Name            | Type                            | Description       | Notes      |
| --------------- | ------------------------------- | ----------------- | ---------- |
| **id**          | **str**                         | id of seed record |
| **empty_input** | [**EmptyInput**](EmptyInput.md) | RevokeSeed        | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **204**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
