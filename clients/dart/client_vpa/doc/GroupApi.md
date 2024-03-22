# openapi.api.GroupApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request                            | Description |
| -------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**addUserToGroup**](GroupApi.md#addusertogroup)               | **POST** /v1/groups/{groupName}/users   |
| [**createGroup**](GroupApi.md#creategroup)                     | **POST** /v1/groups                     |
| [**deleteGroup**](GroupApi.md#deletegroup)                     | **DELETE** /v1/groups/{groupName}       |
| [**getGroupById**](GroupApi.md#getgroupbyid)                   | **GET** /v1/groups/{groupName}          |
| [**listGroupUserMappings**](GroupApi.md#listgroupusermappings) | **GET** /v1/groups/{groupName}/users    |
| [**listGroups**](GroupApi.md#listgroups)                       | **GET** /v1/groups                      |
| [**removeUserFromGroup**](GroupApi.md#removeuserfromgroup)     | **DELETE** /v1/groups/{groupName}/users |

# **addUserToGroup**

> GroupUserMappingDto addUserToGroup(groupName, addUserToGroupInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final groupName = groupName_example; // String |
final addUserToGroupInput = AddUserToGroupInput(); // AddUserToGroupInput | AddUserToGroup

try {
    final result = api_instance.addUserToGroup(groupName, addUserToGroupInput);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->addUserToGroup: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description    | Notes |
| ----------------------- | ------------------------------------------------- | -------------- | ----- |
| **groupName**           | **String**                                        |                |
| **addUserToGroupInput** | [**AddUserToGroupInput**](AddUserToGroupInput.md) | AddUserToGroup |

### Return type

[**GroupUserMappingDto**](GroupUserMappingDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**

> GroupDto createGroup(createGroupInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final createGroupInput = CreateGroupInput(); // CreateGroupInput | CreateGroup

try {
    final result = api_instance.createGroup(createGroupInput);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->createGroup: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **createGroupInput** | [**CreateGroupInput**](CreateGroupInput.md) | CreateGroup |

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**

> deleteGroup(groupName)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final groupName = groupName_example; // String |

try {
    api_instance.deleteGroup(groupName);
} catch (e) {
    print('Exception when calling GroupApi->deleteGroup: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **groupName** | **String** |             |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupById**

> GroupDto getGroupById(groupName)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final groupName = groupName_example; // String |

try {
    final result = api_instance.getGroupById(groupName);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->getGroupById: $e\n');
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **groupName** | **String** |             |

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroupUserMappings**

> GroupUserMappingsList listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final groupName = groupName_example; // String |
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
final sortOrder = sortOrder_example; // String | sort response in specific order. By default it is in desc order

try {
    final result = api_instance.listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder);
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->listGroupUserMappings: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **groupName**         | **String** |                                                                                                                                                                |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |
| **sortOrder**         | **String** | sort response in specific order. By default it is in desc order                                                                                                | [optional] |

### Return type

[**GroupUserMappingsList**](GroupUserMappingsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**

> GroupsList listGroups()

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();

try {
    final result = api_instance.listGroups();
    print(result);
} catch (e) {
    print('Exception when calling GroupApi->listGroups: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GroupsList**](GroupsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUserFromGroup**

> removeUserFromGroup(groupName, removeUserFromGroupInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = GroupApi();
final groupName = groupName_example; // String |
final removeUserFromGroupInput = RemoveUserFromGroupInput(); // RemoveUserFromGroupInput | Remove user from group

try {
    api_instance.removeUserFromGroup(groupName, removeUserFromGroupInput);
} catch (e) {
    print('Exception when calling GroupApi->removeUserFromGroup: $e\n');
}
```

### Parameters

| Name                         | Type                                                        | Description            | Notes |
| ---------------------------- | ----------------------------------------------------------- | ---------------------- | ----- |
| **groupName**                | **String**                                                  |                        |
| **removeUserFromGroupInput** | [**RemoveUserFromGroupInput**](RemoveUserFromGroupInput.md) | Remove user from group |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
