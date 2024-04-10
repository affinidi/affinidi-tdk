# affinidi_tdk_client_cwe.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                         | HTTP request                      | Description |
| ---------------------------------------------- | --------------------------------- | ----------- |
| [**deleteWallet**](DefaultApi.md#deletewallet) | **DELETE** /v1/wallets/{walletId} |

# **deleteWallet**

> deleteWallet(walletId)

delete wallet by walletId

### Example

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final walletId = walletId_example; // String | id of the wallet

try {
    api_instance.deleteWallet(walletId);
} catch (e) {
    print('Exception when calling DefaultApi->deleteWallet: $e\n');
}
```

### Parameters

| Name         | Type       | Description      | Notes |
| ------------ | ---------- | ---------------- | ----- |
| **walletId** | **String** | id of the wallet |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
