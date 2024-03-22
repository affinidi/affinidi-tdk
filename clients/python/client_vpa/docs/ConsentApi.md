# affinidi_tdk_client_vpa.ConsentApi

All URIs are relative to _http://localhost_

| Method                                               | HTTP request                | Description                                       |
| ---------------------------------------------------- | --------------------------- | ------------------------------------------------- |
| [**consent_request**](ConsentApi.md#consent_request) | **GET** /v1/consent/request | IDP consent request automated by adapter frontend |

# **consent_request**

> consent_request(consent_challenge=consent_challenge)

IDP consent request automated by adapter frontend

IDP consent request automated by adapter frontend

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_vpa.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_vpa.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_vpa.ConsentApi(api_client)
    consent_challenge = 'consent_challenge_example' # str | Consent challenge provided by IDP (optional)

    try:
        # IDP consent request automated by adapter frontend
        api_instance.consent_request(consent_challenge=consent_challenge)
    except Exception as e:
        print("Exception when calling ConsentApi->consent_request: %s\n" % e)
```

### Parameters

| Name                  | Type    | Description                       | Notes      |
| --------------------- | ------- | --------------------------------- | ---------- |
| **consent_challenge** | **str** | Consent challenge provided by IDP | [optional] |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers   |
| ----------- | ---------------------- | ------------------ |
| **200**     | Ok                     | -                  |
| **307**     | 307 Temporary Redirect | \* Location - <br> |
| **400**     | BadRequestError        | -                  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
