# affinidi_tdk_iota_client.CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                            | HTTP request          | Description                              |
| ----------------------------------------------------------------- | --------------------- | ---------------------------------------- |
| [**iot_oidc4_vp_callback**](CallbackApi.md#iot_oidc4_vp_callback) | **POST** /v1/callback | Processes the callback for OIDC4VP flows |

# **iot_oidc4_vp_callback**

> object iot_oidc4_vp_callback(callback_input)

Processes the callback for OIDC4VP flows

This endpoint handles callbacks from clients with data from OIDC4VP transactions, including state, presentation submission, and verification tokens. It updates the flow status based on the provided state and communicates the outcome through MQTT, ensuring the transaction's completion or notifying of any errors.

### Example

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.callback_input import CallbackInput
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
        # Processes the callback for OIDC4VP flows
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

**object**

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
