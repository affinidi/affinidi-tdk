# affinidi_tdk_iota_client.CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                            | HTTP request          | Description |
| ----------------------------------------------------------------- | --------------------- | ----------- |
| [**iot_oidc4_vp_callback**](CallbackApi.md#iot_oidc4_vp_callback) | **POST** /v1/callback |

# **iot_oidc4_vp_callback**

> CallbackResponseOK iot_oidc4_vp_callback(callback_input)

It handles the client's (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Example

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.callback_input import CallbackInput
from affinidi_tdk_iota_client.models.callback_response_ok import CallbackResponseOK
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.CallbackApi(api_client)
    callback_input = affinidi_tdk_iota_client.CallbackInput() # CallbackInput | CallbackRequestInput

    try:
        api_response = api_instance.iot_oidc4_vp_callback(callback_input)
        print("The response of CallbackApi->iot_oidc4_vp_callback:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CallbackApi->iot_oidc4_vp_callback: %s\n" % e)
```

### Parameters

| Name               | Type                                  | Description          | Notes |
| ------------------ | ------------------------------------- | -------------------- | ----- |
| **callback_input** | [**CallbackInput**](CallbackInput.md) | CallbackRequestInput |

### Return type

[**CallbackResponseOK**](CallbackResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CallbackResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
