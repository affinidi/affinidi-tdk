# affinidi_tdk_credential_issuance_client.DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                     | HTTP request                                                                            | Description               |
| -------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| [**change_credential_status**](DefaultApi.md#change_credential_status)     | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status. |
| [**list_issuance_data_records**](DefaultApi.md#list_issuance_data_records) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records              |

# **change_credential_status**

> FlowData change_credential_status(project_id, configuration_id)

change credential status.

change credential status.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.flow_data import FlowData
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.DefaultApi(api_client)
    project_id = 'project_id_example' # str | project id
    configuration_id = 'configuration_id_example' # str | configuration id

    try:
        # change credential status.
        api_response = api_instance.change_credential_status(project_id, configuration_id)
        print("The response of DefaultApi->change_credential_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->change_credential_status: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description      | Notes |
| -------------------- | ------- | ---------------- | ----- |
| **project_id**       | **str** | project id       |
| **configuration_id** | **str** | configuration id |

### Return type

[**FlowData**](FlowData.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | updated credential entity | -                |
| **400**     | BadRequestError           | -                |
| **404**     | NotFoundError             | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_issuance_data_records**

> ListIssuanceRecordResponse list_issuance_data_records(project_id, configuration_id, limit=limit, exclusive_start_key=exclusive_start_key)

List records

Retrieve a list of issuance data records.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.list_issuance_record_response import ListIssuanceRecordResponse
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.DefaultApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    configuration_id = 'configuration_id_example' # str | The id of the issuance configuration
    limit = 10 # int | Maximum number of records to fetch in a list (optional) (default to 10)
    exclusive_start_key = 'exclusive_start_key_example' # str | exclusiveStartKey for retrieving the next batch of data. (optional)

    try:
        # List records
        api_response = api_instance.list_issuance_data_records(project_id, configuration_id, limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of DefaultApi->list_issuance_data_records:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->list_issuance_data_records: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                              | Notes                      |
| ----------------------- | ------- | -------------------------------------------------------- | -------------------------- |
| **project_id**          | **str** | Affinidi project id                                      |
| **configuration_id**    | **str** | The id of the issuance configuration                     |
| **limit**               | **int** | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusive_start_key** | **str** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**ListIssuanceRecordResponse**](ListIssuanceRecordResponse.md)

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
