# CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request          | Description                              |
| ----------------------------------------------------------- | --------------------- | ---------------------------------------- |
| [**iotOIDC4VPCallback**](CallbackApi.md#iotOIDC4VPCallback) | **POST** /v1/callback | Processes the callback for OIDC4VP flows |

<a name="iotOIDC4VPCallback"></a>

# **iotOIDC4VPCallback**

> CallbackResponseOK iotOIDC4VPCallback(CallbackInput)

Processes the callback for OIDC4VP flows

    This endpoint handles callbacks from clients with data from OIDC4VP transactions, including state, presentation submission, and verification tokens. It updates the flow status based on the provided state and communicates the outcome through MQTT, ensuring the transaction&#39;s completion or notifying of any errors.

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
