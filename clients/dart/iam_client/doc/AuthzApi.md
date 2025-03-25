# affinidi_tdk_iam_client.api.AuthzApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                           | HTTP request                  | Description                             |
| ------------------------------------------------ | ----------------------------- | --------------------------------------- |
| [**grantAccessVfs**](AuthzApi.md#grantaccessvfs) | **POST** /v1/authz/vfs/access | Grant access to the virtual file system |

# **grantAccessVfs**

> GrantAccessOutput grantAccessVfs(grantAccessInput)

Grant access to the virtual file system

Grants access rights to a subject for the virtual file system

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getAuthzApi();
final GrantAccessInput grantAccessInput = ; // GrantAccessInput | Grant access to virtual file system

try {
    final response = api.grantAccessVfs(grantAccessInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->grantAccessVfs: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description                         | Notes |
| -------------------- | ------------------------------------------- | ----------------------------------- | ----- |
| **grantAccessInput** | [**GrantAccessInput**](GrantAccessInput.md) | Grant access to virtual file system |

### Return type

[**GrantAccessOutput**](GrantAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
