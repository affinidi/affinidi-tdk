# affinidi_tdk_iota_client.api.CallbackApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request          | Description                              |
| ----------------------------------------------------------- | --------------------- | ---------------------------------------- |
| [**iotOIDC4VPCallback**](CallbackApi.md#iotoidc4vpcallback) | **POST** /v1/callback | Processes the callback for OIDC4VP flows |

# **iotOIDC4VPCallback**

> Object iotOIDC4VPCallback(callbackInput)

Processes the callback for OIDC4VP flows

This endpoint handles callbacks from clients with data from OIDC4VP transactions, including state, presentation submission, and verification tokens. It updates the flow status based on the provided state and communicates the outcome through MQTT, ensuring the transaction's completion or notifying of any errors.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api_instance = CallbackApi();
final callbackInput = CallbackInput(); // CallbackInput | CallbackRequestInput

try {
    final result = api_instance.iotOIDC4VPCallback(callbackInput);
    print(result);
} catch (e) {
    print('Exception when calling CallbackApi->iotOIDC4VPCallback: $e\n');
}
```

### Parameters

| Name              | Type                                  | Description          | Notes |
| ----------------- | ------------------------------------- | -------------------- | ----- |
| **callbackInput** | [**CallbackInput**](CallbackInput.md) | CallbackRequestInput |

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
