# affinidi_tdk_iota_client.DefaultApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                | Description |
| -------------------------------------------------------------- | --------------------------- | ----------- |
| [**list_logged_consents**](DefaultApi.md#list_logged_consents) | **GET** /v1/logged-consents |

# **list_logged_consents**

> ListLoggedConsentsOK list_logged_consents(user_id=user_id, limit=limit, exclusive_start_key=exclusive_start_key)

returns a list of logged consents for the project

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.list_logged_consents_ok import ListLoggedConsentsOK
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.DefaultApi(api_client)
    user_id = 'user_id_example' # str |  (optional)
    limit = 56 # int | Maximum number of records to fetch in a list (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional)

    try:
        api_response = api_instance.list_logged_consents(user_id=user_id, limit=limit, exclusive_start_key=exclusive_start_key)
        print("The response of DefaultApi->list_logged_consents:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->list_logged_consents: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                                                                                                                                    | Notes      |
| ----------------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **user_id**             | **str** |                                                                                                                                                                | [optional] |
| **limit**               | **int** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusive_start_key** | **str** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoggedConsentsOK**](ListLoggedConsentsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | ListLoggedConsentsOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
