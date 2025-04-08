# affinidi_tdk_iam_client.api.AuthzApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                             | HTTP request                                 | Description                             |
| -------------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| [**deleteAccessVfs**](AuthzApi.md#deleteaccessvfs) | **DELETE** /v1/authz/vfs/access/{subjectDID} | delete access of subjectDiD             |
| [**grantAccessVfs**](AuthzApi.md#grantaccessvfs)   | **POST** /v1/authz/vfs/access                | Grant access to the virtual file system |
| [**updateAccessVfs**](AuthzApi.md#updateaccessvfs) | **PUT** /v1/authz/vfs/access/{subjectDID}    | Update access of subjectDiD             |

# **deleteAccessVfs**

> deleteAccessVfs(subjectDID)

delete access of subjectDiD

deleteAccessVfs

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getAuthzApi();
final String subjectDID = subjectDID_example; // String |

try {
    api.deleteAccessVfs(subjectDID);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->deleteAccessVfs: $e\n');
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **subjectDID** | **String** |             |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **updateAccessVfs**

> UpdateAccessOutput updateAccessVfs(subjectDID, updateAccessInput)

Update access of subjectDiD

updateAccessVfs

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getAuthzApi();
final String subjectDID = subjectDID_example; // String |
final UpdateAccessInput updateAccessInput = ; // UpdateAccessInput | update access to virtual file system

try {
    final response = api.updateAccessVfs(subjectDID, updateAccessInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->updateAccessVfs: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description                          | Notes |
| --------------------- | --------------------------------------------- | ------------------------------------ | ----- |
| **subjectDID**        | **String**                                    |                                      |
| **updateAccessInput** | [**UpdateAccessInput**](UpdateAccessInput.md) | update access to virtual file system |

### Return type

[**UpdateAccessOutput**](UpdateAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
