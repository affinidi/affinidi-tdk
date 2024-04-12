# affinidi_tdk_client_cwe.DefaultApi

All URIs are relative to _http://localhost_

| Method                                           | HTTP request                      | Description |
| ------------------------------------------------ | --------------------------------- | ----------- |
| [**delete_wallet**](DefaultApi.md#delete_wallet) | **DELETE** /v1/wallets/{walletId} |

# **delete_wallet**

> delete_wallet(wallet_id)

delete wallet by walletId

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cwe
from affinidi_tdk_client_cwe.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cwe.Configuration(
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
with affinidi_tdk_client_cwe.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cwe.DefaultApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet

    try:
        api_instance.delete_wallet(wallet_id)
    except Exception as e:
        print("Exception when calling DefaultApi->delete_wallet: %s\n" % e)
```

### Parameters

| Name          | Type    | Description      | Notes |
| ------------- | ------- | ---------------- | ----- |
| **wallet_id** | **str** | id of the wallet |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **204**     | Deleted     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
