# affinidi_tdk_vault_data_manager_client.api.WellKnownApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                   | HTTP request                   | Description |
| -------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownJwks**](WellKnownApi.md#getwellknownjwks) | **GET** /.well-known/jwks.json |

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';

final api = AffinidiTdkVaultDataManagerClient().getWellKnownApi();

try {
    final response = api.getWellKnownJwks();
    print(response);
} catch on DioException (e) {
    print('Exception when calling WellKnownApi->getWellKnownJwks: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonWebKeySetDto**](JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
