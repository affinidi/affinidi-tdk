# affinidi_tdk_iam_client.api.ProjectsApi

## Load the API package

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                      | HTTP request                                     | Description |
| --------------------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| [**addPrincipalToProject**](ProjectsApi.md#addprincipaltoproject)           | **POST** /v1/projects/principals                 |
| [**createProject**](ProjectsApi.md#createproject)                           | **POST** /v1/projects                            |
| [**deletePrincipalFromProject**](ProjectsApi.md#deleteprincipalfromproject) | **DELETE** /v1/projects/principals/{principalId} |
| [**listPrincipalsOfProject**](ProjectsApi.md#listprincipalsofproject)       | **GET** /v1/projects/principals                  |
| [**listProject**](ProjectsApi.md#listproject)                               | **GET** /v1/projects                             |
| [**updateProject**](ProjectsApi.md#updateproject)                           | **PATCH** /v1/projects/{projectId}               |

# **addPrincipalToProject**

> addPrincipalToProject(addUserToProjectInput)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final addUserToProjectInput = AddUserToProjectInput(); // AddUserToProjectInput | AddPrincipalToProject

try {
    api_instance.addPrincipalToProject(addUserToProjectInput);
} catch (e) {
    print('Exception when calling ProjectsApi->addPrincipalToProject: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description           | Notes |
| ------------------------- | ----------------------------------------------------- | --------------------- | ----- |
| **addUserToProjectInput** | [**AddUserToProjectInput**](AddUserToProjectInput.md) | AddPrincipalToProject |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**

> ProjectDto createProject(createProjectInput)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final createProjectInput = CreateProjectInput(); // CreateProjectInput | CreateProject

try {
    final result = api_instance.createProject(createProjectInput);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->createProject: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **createProjectInput** | [**CreateProjectInput**](CreateProjectInput.md) | CreateProject |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePrincipalFromProject**

> deletePrincipalFromProject(principalId, principalType)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final principalId = principalId_example; // String | id of principal
final principalType = principalType_example; // String | type of principal

try {
    api_instance.deletePrincipalFromProject(principalId, principalType);
} catch (e) {
    print('Exception when calling ProjectsApi->deletePrincipalFromProject: $e\n');
}
```

### Parameters

| Name              | Type       | Description       | Notes |
| ----------------- | ---------- | ----------------- | ----- |
| **principalId**   | **String** | id of principal   |
| **principalType** | **String** | type of principal |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPrincipalsOfProject**

> UserList listPrincipalsOfProject(limit, exclusiveStartKey)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final result = api_instance.listPrincipalsOfProject(limit, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->listPrincipalsOfProject: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes                       |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                  |

### Return type

[**UserList**](UserList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProject**

> ProjectList listProject(limit, exclusiveStartKey)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final result = api_instance.listProject(limit, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->listProject: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes                       |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                  |

### Return type

[**ProjectList**](ProjectList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**

> ProjectDto updateProject(projectId, updateProjectInput)

### Example

```dart
import 'package:affinidi_tdk_iam_client/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ProjectsApi();
final projectId = projectId_example; // String | projectId
final updateProjectInput = UpdateProjectInput(); // UpdateProjectInput | UpdateProject

try {
    final result = api_instance.updateProject(projectId, updateProjectInput);
    print(result);
} catch (e) {
    print('Exception when calling ProjectsApi->updateProject: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **projectId**          | **String**                                      | projectId     |
| **updateProjectInput** | [**UpdateProjectInput**](UpdateProjectInput.md) | UpdateProject |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
