# affinidi_tdk_login_configuration_client.api.AllowListApi

## Load the API package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                     | HTTP request                          | Description |
| ---------------------------------------------------------- | ------------------------------------- | ----------- |
| [**allowGroups**](AllowListApi.md#allowgroups)             | **POST** /v1/allow-list/groups/add    |
| [**disallowGroups**](AllowListApi.md#disallowgroups)       | **POST** /v1/allow-list/groups/remove |
| [**listAllowedGroups**](AllowListApi.md#listallowedgroups) | **GET** /v1/allow-list/groups         |

# **allowGroups**

> allowGroups(groupNamesInput)

Allow Single or Multiple Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getAllowListApi();
final GroupNamesInput groupNamesInput = ; // GroupNamesInput | List of group names as input

try {
    api.allowGroups(groupNamesInput);
} catch on DioException (e) {
    print('Exception when calling AllowListApi->allowGroups: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description                  | Notes      |
| ------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **groupNamesInput** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disallowGroups**

> disallowGroups(groupNamesInput)

Disallow Single or Multiple Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getAllowListApi();
final GroupNamesInput groupNamesInput = ; // GroupNamesInput | List of group names as input

try {
    api.disallowGroups(groupNamesInput);
} catch on DioException (e) {
    print('Exception when calling AllowListApi->disallowGroups: $e\n');
}
```

### Parameters

| Name                | Type                                      | Description                  | Notes      |
| ------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **groupNamesInput** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllowedGroups**

> GroupNames listAllowedGroups(pageToken)

Get Allowed Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getAllowListApi();
final String pageToken = pageToken_example; // String |

try {
    final response = api.listAllowedGroups(pageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AllowListApi->listAllowedGroups: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes      |
| ------------- | ---------- | ----------- | ---------- |
| **pageToken** | **String** |             | [optional] |

### Return type

[**GroupNames**](GroupNames.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
