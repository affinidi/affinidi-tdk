# affinidi_tdk_client_vpa.CorsApi

All URIs are relative to _http://localhost_

| Method                                                                                  | HTTP request                                               | Description  |
| --------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ------------ |
| [**cors_login_session_accept_response**](CorsApi.md#cors_login_session_accept_response) | **OPTIONS** /v1/login/sessions/{sessionId}/accept-response | CORS Support |
| [**cors_login_session_for_idp**](CorsApi.md#cors_login_session_for_idp)                 | **OPTIONS** /v1/login/sessions/for-idp                     | CORS Support |
| [**cors_login_session_reject_response**](CorsApi.md#cors_login_session_reject_response) | **OPTIONS** /v1/login/sessions/{sessionId}/reject-response | CORS Support |

# **cors_login_session_accept_response**

> CorsLoginSessionAcceptResponseOK cors_login_session_accept_response()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.cors_login_session_accept_response_ok import CorsLoginSessionAcceptResponseOK
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
    api_instance = affinidi_tdk_client_vpa.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_login_session_accept_response()
        print("The response of CorsApi->cors_login_session_accept_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_login_session_accept_response: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionAcceptResponseOK**](CorsLoginSessionAcceptResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                      | Response headers                                                                                                  |
| ----------- | -------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsLoginSessionAcceptResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_login_session_for_idp**

> CorsLoginSessionForIdpOK cors_login_session_for_idp()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.cors_login_session_for_idp_ok import CorsLoginSessionForIdpOK
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
    api_instance = affinidi_tdk_client_vpa.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_login_session_for_idp()
        print("The response of CorsApi->cors_login_session_for_idp:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_login_session_for_idp: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionForIdpOK**](CorsLoginSessionForIdpOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers                                                                                                  |
| ----------- | ------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsLoginSessionForIdpOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_login_session_reject_response**

> CorsLoginSessionRejectResponseOK cors_login_session_reject_response()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_vpa
from affinidi_tdk_client_vpa.models.cors_login_session_reject_response_ok import CorsLoginSessionRejectResponseOK
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
    api_instance = affinidi_tdk_client_vpa.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_login_session_reject_response()
        print("The response of CorsApi->cors_login_session_reject_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_login_session_reject_response: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsLoginSessionRejectResponseOK**](CorsLoginSessionRejectResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                      | Response headers                                                                                                  |
| ----------- | -------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsLoginSessionRejectResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
