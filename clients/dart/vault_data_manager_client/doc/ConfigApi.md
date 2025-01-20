# affinidi_tdk_vault_data_manager_client.api.ConfigApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                  | HTTP request       | Description |
| --------------------------------------- | ------------------ | ----------- |
| [**getConfig**](ConfigApi.md#getconfig) | **GET** /v1/config |

# **getConfig**

> GetConfigOK getConfig()

Retrieves the user profile name and the maximum number of profiles, with default values set to 'default' and 1, respectively.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: AwsSigV4
//defaultApiClient.getAuthentication<ApiKeyAuth>('AwsSigV4').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('AwsSigV4').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getConfigApi();

try {
    final response = api.getConfig();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigApi->getConfig: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetConfigOK**](GetConfigOK.md)

### Authorization

[AwsSigV4](../README.md#AwsSigV4)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
