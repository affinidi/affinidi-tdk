# affinidi_tdk_iam_client.api.AuthzApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                             | HTTP request                                 | Description                             |
| -------------------------------------------------- | -------------------------------------------- | --------------------------------------- |
| [**deleteAccessVfs**](AuthzApi.md#deleteaccessvfs) | **DELETE** /v1/authz/vfs/access/{granteeDid} | delete access of granteeDid             |
| [**grantAccessVfs**](AuthzApi.md#grantaccessvfs)   | **POST** /v1/authz/vfs/access/{granteeDid}   | Grant access to the virtual file system |
| [**updateAccessVfs**](AuthzApi.md#updateaccessvfs) | **PUT** /v1/authz/vfs/access/{granteeDid}    | Update access of granteeDid             |

# **deleteAccessVfs**

> deleteAccessVfs(granteeDid)

delete access of granteeDid

deleteAccessVfs

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getAuthzApi();
final String granteeDid = granteeDid_example; // String |

try {
    api.deleteAccessVfs(granteeDid);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->deleteAccessVfs: $e\n');
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **granteeDid** | **String** |             |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grantAccessVfs**

> GrantAccessOutput grantAccessVfs(vFSAccessRight)

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
final VFSAccessRight vFSAccessRight = ; // VFSAccessRight | Grant access to virtual file system

try {
    final response = api.grantAccessVfs(vFSAccessRight);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->grantAccessVfs: $e\n');
}
```

### Parameters

| Name               | Type                                    | Description                         | Notes |
| ------------------ | --------------------------------------- | ----------------------------------- | ----- |
| **vFSAccessRight** | [**VFSAccessRight**](VFSAccessRight.md) | Grant access to virtual file system |

### Return type

[**GrantAccessOutput**](GrantAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccessVfs**

> UpdateAccessOutput updateAccessVfs(granteeDid, vFSAccessRight)

Update access of granteeDid

updateAccessVfs

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIamClient().getAuthzApi();
final String granteeDid = granteeDid_example; // String |
final VFSAccessRight vFSAccessRight = ; // VFSAccessRight | update access to virtual file system

try {
    final response = api.updateAccessVfs(granteeDid, vFSAccessRight);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthzApi->updateAccessVfs: $e\n');
}
```

### Parameters

| Name               | Type                                    | Description                          | Notes |
| ------------------ | --------------------------------------- | ------------------------------------ | ----- |
| **granteeDid**     | **String**                              |                                      |
| **vFSAccessRight** | [**VFSAccessRight**](VFSAccessRight.md) | update access to virtual file system |

### Return type

[**UpdateAccessOutput**](UpdateAccessOutput.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
