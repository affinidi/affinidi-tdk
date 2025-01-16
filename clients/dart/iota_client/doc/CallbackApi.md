# affinidi_tdk_iota_client.api.CallbackApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request          | Description |
| ----------------------------------------------------------- | --------------------- | ----------- |
| [**iotOIDC4VPCallback**](CallbackApi.md#iotoidc4vpcallback) | **POST** /v1/callback |

# **iotOIDC4VPCallback**

> CallbackResponseOK iotOIDC4VPCallback(callbackInput)

It handles the client's (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api = AffinidiTdkIotaClient().getCallbackApi();
final CallbackInput callbackInput = ; // CallbackInput | CallbackRequestInput

try {
    final response = api.iotOIDC4VPCallback(callbackInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CallbackApi->iotOIDC4VPCallback: $e\n');
}
```

### Parameters

| Name              | Type                                  | Description          | Notes |
| ----------------- | ------------------------------------- | -------------------- | ----- |
| **callbackInput** | [**CallbackInput**](CallbackInput.md) | CallbackRequestInput |

### Return type

[**CallbackResponseOK**](CallbackResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
