# affinidi_tdk_iota_client.DcqlQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                 | HTTP request                                                           | Description |
| ---------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------- |
| [**create_dcql_query**](DcqlQueryApi.md#create_dcql_query)             | **POST** /v1/configurations/{configurationId}/dcql-queries             |
| [**delete_dcql_query_by_id**](DcqlQueryApi.md#delete_dcql_query_by_id) | **DELETE** /v1/configurations/{configurationId}/dcql-queries/{queryId} |
| [**get_dcql_query_by_id**](DcqlQueryApi.md#get_dcql_query_by_id)       | **GET** /v1/configurations/{configurationId}/dcql-queries/{queryId}    |
| [**list_dcql_queries**](DcqlQueryApi.md#list_dcql_queries)             | **GET** /v1/configurations/{configurationId}/dcql-queries              |
| [**update_dcql_query_by_id**](DcqlQueryApi.md#update_dcql_query_by_id) | **PATCH** /v1/configurations/{configurationId}/dcql-queries/{queryId}  |

# **create_dcql_query**

> DcqlQueryDto create_dcql_query(configuration_id, create_dcql_query_input)

Creates a new DCQL query in the configuration to query data.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.create_dcql_query_input import CreateDcqlQueryInput
from affinidi_tdk_iota_client.models.dcql_query_dto import DcqlQueryDto
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
    api_instance = affinidi_tdk_iota_client.DcqlQueryApi(api_client)
    configuration_id = 'configuration_id_example' # str | ID of the Affinidi Iota Framework configuration.
    create_dcql_query_input = affinidi_tdk_iota_client.CreateDcqlQueryInput() # CreateDcqlQueryInput | CreateDcqlQuery

    try:
        api_response = api_instance.create_dcql_query(configuration_id, create_dcql_query_input)
        print("The response of DcqlQueryApi->create_dcql_query:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DcqlQueryApi->create_dcql_query: %s\n" % e)
```

### Parameters

| Name                        | Type                                                | Description                                      | Notes |
| --------------------------- | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**        | **str**                                             | ID of the Affinidi Iota Framework configuration. |
| **create_dcql_query_input** | [**CreateDcqlQueryInput**](CreateDcqlQueryInput.md) | CreateDcqlQuery                                  |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **201**     | CreateDcqlQueryOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_dcql_query_by_id**

> delete_dcql_query_by_id(configuration_id, query_id)

Deletes a DCQL query in the configuration by ID.

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
    api_instance = affinidi_tdk_iota_client.DcqlQueryApi(api_client)
    configuration_id = 'configuration_id_example' # str | ID of the Affinidi Iota Framework configuration.
    query_id = 'query_id_example' # str | The ID of the query.

    try:
        api_instance.delete_dcql_query_by_id(configuration_id, query_id)
    except Exception as e:
        print("Exception when calling DcqlQueryApi->delete_dcql_query_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                                      | Notes |
| -------------------- | ------- | ------------------------------------------------ | ----- |
| **configuration_id** | **str** | ID of the Affinidi Iota Framework configuration. |
| **query_id**         | **str** | The ID of the query.                             |

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

# **get_dcql_query_by_id**

> DcqlQueryDto get_dcql_query_by_id(configuration_id, query_id)

Retrieves a DCQL query in the configuration by ID.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.dcql_query_dto import DcqlQueryDto
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
    api_instance = affinidi_tdk_iota_client.DcqlQueryApi(api_client)
    configuration_id = 'configuration_id_example' # str | ID of the Affinidi Iota Framework configuration.
    query_id = 'query_id_example' # str | The ID of the query.

    try:
        api_response = api_instance.get_dcql_query_by_id(configuration_id, query_id)
        print("The response of DcqlQueryApi->get_dcql_query_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DcqlQueryApi->get_dcql_query_by_id: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description                                      | Notes |
| -------------------- | ------- | ------------------------------------------------ | ----- |
| **configuration_id** | **str** | ID of the Affinidi Iota Framework configuration. |
| **query_id**         | **str** | The ID of the query.                             |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers |
| ----------- | ------------------ | ---------------- |
| **200**     | GetDcqlQueryByIdOK | -                |
| **400**     | BadRequestError    | -                |
| **403**     | ForbiddenError     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_dcql_queries**

> ListDcqlQueriesOK list_dcql_queries(configuration_id, limit=limit, exclusive_start_key=exclusive_start_key)

Lists all DCQL queries in the configuration.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.list_dcql_queries_ok import ListDcqlQueriesOK
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
    api_instance = affinidi_tdk_iota_client.DcqlQueryApi(api_client)
    configuration_id = 'configuration_id_example' # str | ID of the Affinidi Iota Framework configuration.
    limit = 56 # int | Maximum number of records to fetch in a list (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional)

    try:
        api_response = api_instance.list_dcql_queries(configuration_id, limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of DcqlQueryApi->list_dcql_queries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DcqlQueryApi->list_dcql_queries: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                                                                                                                                    | Notes      |
| ----------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configuration_id**    | **str** | ID of the Affinidi Iota Framework configuration.                                                                                                               |
| **limit**               | **int** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **str** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListDcqlQueriesOK**](ListDcqlQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | ListDcqlQueriesOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_dcql_query_by_id**

> DcqlQueryDto update_dcql_query_by_id(configuration_id, query_id, update_dcql_query_input)

Updates the DCQL query in the configuration by ID.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.dcql_query_dto import DcqlQueryDto
from affinidi_tdk_iota_client.models.update_dcql_query_input import UpdateDcqlQueryInput
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
    api_instance = affinidi_tdk_iota_client.DcqlQueryApi(api_client)
    configuration_id = 'configuration_id_example' # str | ID of the Affinidi Iota Framework configuration.
    query_id = 'query_id_example' # str | The ID of the query.
    update_dcql_query_input = affinidi_tdk_iota_client.UpdateDcqlQueryInput() # UpdateDcqlQueryInput | UpdateDcqlQueryById

    try:
        api_response = api_instance.update_dcql_query_by_id(configuration_id, query_id, update_dcql_query_input)
        print("The response of DcqlQueryApi->update_dcql_query_by_id:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DcqlQueryApi->update_dcql_query_by_id: %s\n" % e)
```

### Parameters

| Name                        | Type                                                | Description                                      | Notes |
| --------------------------- | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configuration_id**        | **str**                                             | ID of the Affinidi Iota Framework configuration. |
| **query_id**                | **str**                                             | The ID of the query.                             |
| **update_dcql_query_input** | [**UpdateDcqlQueryInput**](UpdateDcqlQueryInput.md) | UpdateDcqlQueryById                              |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | UpdateDcqlQueryByIdOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
