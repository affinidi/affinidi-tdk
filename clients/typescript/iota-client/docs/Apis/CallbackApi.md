# CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request          | Description |
| ----------------------------------------------------------- | --------------------- | ----------- |
| [**iotOIDC4VPCallback**](CallbackApi.md#iotOIDC4VPCallback) | **POST** /v1/callback |             |

<a name="iotOIDC4VPCallback"></a>

# **iotOIDC4VPCallback**

> CallbackResponseOK iotOIDC4VPCallback(CallbackInput)

    It handles the client&#39;s (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Parameters

| Name              | Type                                            | Description          | Notes |
| ----------------- | ----------------------------------------------- | -------------------- | ----- |
| **CallbackInput** | [**CallbackInput**](../Models/CallbackInput.md) | CallbackRequestInput |       |

### Return type

[**CallbackResponseOK**](../Models/CallbackResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
