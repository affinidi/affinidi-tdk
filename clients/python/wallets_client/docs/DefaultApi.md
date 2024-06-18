# affinidi_tdk_wallets_client.DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                                 | HTTP request                                                                       | Description |
| -------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------- |
| [**get_revocation_credential_status**](DefaultApi.md#get_revocation_credential_status) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |

# **get_revocation_credential_status**

> GetRevocationListCredentialResultDto get_revocation_credential_status(project_id, wallet_id, status_id)

Get revocation status list as RevocationListCredential

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.get_revocation_list_credential_result_dto import GetRevocationListCredentialResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
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
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.DefaultApi(api_client)
    project_id = 'project_id_example' # str | Description for projectId.
    wallet_id = 'wallet_id_example' # str | Description for walletId.
    status_id = 'status_id_example' # str | Description for statusId.

    try:
        api_response = api_instance.get_revocation_credential_status(project_id, wallet_id, status_id)
        print("The response of DefaultApi->get_revocation_credential_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->get_revocation_credential_status: %s\n" % e)
```

### Parameters

| Name           | Type    | Description                | Notes |
| -------------- | ------- | -------------------------- | ----- |
| **project_id** | **str** | Description for projectId. |
| **wallet_id**  | **str** | Description for walletId.  |
| **status_id**  | **str** | Description for statusId.  |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                     | Response headers |
| ----------- | ------------------------------- | ---------------- |
| **200**     | GetRevocationCredentialStatusOK | -                |
| **404**     | NotFoundError                   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
