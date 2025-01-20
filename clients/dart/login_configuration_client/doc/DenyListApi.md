# affinidi_tdk_login_configuration_client.api.DenyListApi

## Load the API package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                    | HTTP request                         | Description |
| --------------------------------------------------------- | ------------------------------------ | ----------- |
| [**blockGroups**](DenyListApi.md#blockgroups)             | **POST** /v1/deny-list/groups/add    |
| [**blockUsers**](DenyListApi.md#blockusers)               | **POST** /v1/deny-list/users/add     |
| [**listBlockedGroups**](DenyListApi.md#listblockedgroups) | **GET** /v1/deny-list/groups         |
| [**listBlockedUsers**](DenyListApi.md#listblockedusers)   | **GET** /v1/deny-list/users          |
| [**unblockGroups**](DenyListApi.md#unblockgroups)         | **POST** /v1/deny-list/groups/remove |
| [**unblockUsers**](DenyListApi.md#unblockusers)           | **POST** /v1/deny-list/users/remove  |

# **blockGroups**

> blockGroups(groupNamesInput)

Block Single or Multiple Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final GroupNamesInput groupNamesInput = ; // GroupNamesInput | List of group names as input

try {
    api.blockGroups(groupNamesInput);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->blockGroups: $e\n');
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

# **blockUsers**

> blockUsers(blockedUsersInput)

Block Single or Multiple user ids

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final BlockedUsersInput blockedUsersInput = ; // BlockedUsersInput | List of blocked users as input

try {
    api.blockUsers(blockedUsersInput);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->blockUsers: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description                    | Notes      |
| --------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blockedUsersInput** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlockedGroups**

> GroupNames listBlockedGroups(pageToken)

Get Blocked Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final String pageToken = pageToken_example; // String |

try {
    final response = api.listBlockedGroups(pageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->listBlockedGroups: $e\n');
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

# **listBlockedUsers**

> BlockedUsers listBlockedUsers(pageToken)

Get List of Blocked Users

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final String pageToken = pageToken_example; // String |

try {
    final response = api.listBlockedUsers(pageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->listBlockedUsers: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes      |
| ------------- | ---------- | ----------- | ---------- |
| **pageToken** | **String** |             | [optional] |

### Return type

[**BlockedUsers**](BlockedUsers.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblockGroups**

> unblockGroups(groupNamesInput)

Unblock Single or Multiple Groups

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final GroupNamesInput groupNamesInput = ; // GroupNamesInput | List of group names as input

try {
    api.unblockGroups(groupNamesInput);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->unblockGroups: $e\n');
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

# **unblockUsers**

> unblockUsers(blockedUsersInput)

Unblock Single or Multiple user ids

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getDenyListApi();
final BlockedUsersInput blockedUsersInput = ; // BlockedUsersInput | List of blocked users as input

try {
    api.unblockUsers(blockedUsersInput);
} catch on DioException (e) {
    print('Exception when calling DenyListApi->unblockUsers: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description                    | Notes      |
| --------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blockedUsersInput** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
