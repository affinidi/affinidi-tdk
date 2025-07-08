# CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                        | HTTP request          | Description |
| --------------------------------------------- | --------------------- | ----------- |
| [**iotOIDC4VPCallback**](#iotoidc4vpcallback) | **POST** /v1/callback |             |

# **iotOIDC4VPCallback**

> CallbackResponseOK iotOIDC4VPCallback(callbackInput)

It handles the client\'s (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Example

```typescript
import {
  CallbackApi,
  Configuration,
  CallbackInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new CallbackApi(configuration)

let callbackInput: CallbackInput //CallbackRequestInput

const { status, data } = await apiInstance.iotOIDC4VPCallback(callbackInput)
```

### Parameters

| Name              | Type              | Description          | Notes |
| ----------------- | ----------------- | -------------------- | ----- |
| **callbackInput** | **CallbackInput** | CallbackRequestInput |       |

### Return type

**CallbackResponseOK**

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
