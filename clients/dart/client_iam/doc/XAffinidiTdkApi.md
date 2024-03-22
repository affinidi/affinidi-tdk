# openapi.api.XAffinidiTdkApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                          | HTTP request                                     | Description                           |
| ------------------------------------------------------------------------------- | ------------------------------------------------ | ------------------------------------- |
| [**addPrincipalToProject**](XAffinidiTdkApi.md#addprincipaltoproject)           | **POST** /v1/projects/principals                 |
| [**consumerAuthTokenEndpoint**](XAffinidiTdkApi.md#consumerauthtokenendpoint)   | **POST** /v1/consumer/oauth2/token               | The Consumer OAuth 2.0 Token Endpoint |
| [**createProject**](XAffinidiTdkApi.md#createproject)                           | **POST** /v1/projects                            |
| [**createProjectScopedToken**](XAffinidiTdkApi.md#createprojectscopedtoken)     | **POST** /v1/sts/create-project-scoped-token     |
| [**createToken**](XAffinidiTdkApi.md#createtoken)                               | **POST** /v1/tokens                              |
| [**deletePrincipalFromProject**](XAffinidiTdkApi.md#deleteprincipalfromproject) | **DELETE** /v1/projects/principals/{principalId} |
| [**deleteToken**](XAffinidiTdkApi.md#deletetoken)                               | **DELETE** /v1/tokens/{tokenId}                  |
| [**getPolicies**](XAffinidiTdkApi.md#getpolicies)                               | **GET** /v1/policies/principals/{principalId}    |
| [**getToken**](XAffinidiTdkApi.md#gettoken)                                     | **GET** /v1/tokens/{tokenId}                     |
| [**getWellKnownJwks**](XAffinidiTdkApi.md#getwellknownjwks)                     | **GET** /.well-known/jwks.json                   |
| [**listPrincipalsOfProject**](XAffinidiTdkApi.md#listprincipalsofproject)       | **GET** /v1/projects/principals                  |
| [**listProject**](XAffinidiTdkApi.md#listproject)                               | **GET** /v1/projects                             |
| [**listToken**](XAffinidiTdkApi.md#listtoken)                                   | **GET** /v1/tokens                               |
| [**updatePolicies**](XAffinidiTdkApi.md#updatepolicies)                         | **PUT** /v1/policies/principals/{principalId}    |
| [**updateProject**](XAffinidiTdkApi.md#updateproject)                           | **PATCH** /v1/projects/{projectId}               |
| [**updateToken**](XAffinidiTdkApi.md#updatetoken)                               | **PATCH** /v1/tokens/{tokenId}                   |
| [**v1AuthProxyDelete**](XAffinidiTdkApi.md#v1authproxydelete)                   | **DELETE** /v1/auth/{proxy+}                     |
| [**v1AuthProxyGet**](XAffinidiTdkApi.md#v1authproxyget)                         | **GET** /v1/auth/{proxy+}                        |
| [**v1AuthProxyPatch**](XAffinidiTdkApi.md#v1authproxypatch)                     | **PATCH** /v1/auth/{proxy+}                      |
| [**v1AuthProxyPost**](XAffinidiTdkApi.md#v1authproxypost)                       | **POST** /v1/auth/{proxy+}                       |
| [**v1AuthProxyPut**](XAffinidiTdkApi.md#v1authproxyput)                         | **PUT** /v1/auth/{proxy+}                        |
| [**v1IdpProxyDelete**](XAffinidiTdkApi.md#v1idpproxydelete)                     | **DELETE** /v1/idp/{proxy+}                      |
| [**v1IdpProxyGet**](XAffinidiTdkApi.md#v1idpproxyget)                           | **GET** /v1/idp/{proxy+}                         |
| [**v1IdpProxyPatch**](XAffinidiTdkApi.md#v1idpproxypatch)                       | **PATCH** /v1/idp/{proxy+}                       |
| [**v1IdpProxyPost**](XAffinidiTdkApi.md#v1idpproxypost)                         | **POST** /v1/idp/{proxy+}                        |
| [**v1IdpProxyPut**](XAffinidiTdkApi.md#v1idpproxyput)                           | **PUT** /v1/idp/{proxy+}                         |
| [**whoami**](XAffinidiTdkApi.md#whoami)                                         | **GET** /v1/sts/whoami                           |

# **addPrincipalToProject**

> addPrincipalToProject(addUserToProjectInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final addUserToProjectInput = AddUserToProjectInput(); // AddUserToProjectInput | AddPrincipalToProject

try {
    api_instance.addPrincipalToProject(addUserToProjectInput);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->addPrincipalToProject: $e\n');
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

# **consumerAuthTokenEndpoint**

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput)

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final consumerAuthTokenEndpointInput = ConsumerAuthTokenEndpointInput(); // ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

try {
    final result = api_instance.consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->consumerAuthTokenEndpoint: $e\n');
}
```

### Parameters

| Name                               | Type                                                                    | Description               | Notes |
| ---------------------------------- | ----------------------------------------------------------------------- | ------------------------- | ----- |
| **consumerAuthTokenEndpointInput** | [**ConsumerAuthTokenEndpointInput**](ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |

### Return type

[**ConsumerAuthTokenEndpointOutput**](ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**

> ProjectDto createProject(createProjectInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final createProjectInput = CreateProjectInput(); // CreateProjectInput | CreateProject

try {
    final result = api_instance.createProject(createProjectInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->createProject: $e\n');
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

# **createProjectScopedToken**

> CreateProjectScopedTokenOutput createProjectScopedToken(createProjectScopedTokenInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final createProjectScopedTokenInput = CreateProjectScopedTokenInput(); // CreateProjectScopedTokenInput | CreateProjectScopedToken

try {
    final result = api_instance.createProjectScopedToken(createProjectScopedTokenInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->createProjectScopedToken: $e\n');
}
```

### Parameters

| Name                              | Type                                                                  | Description              | Notes |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **createProjectScopedTokenInput** | [**CreateProjectScopedTokenInput**](CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |

### Return type

[**CreateProjectScopedTokenOutput**](CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createToken**

> TokenDto createToken(createTokenInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final createTokenInput = CreateTokenInput(); // CreateTokenInput | CreateToken

try {
    final result = api_instance.createToken(createTokenInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->createToken: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **createTokenInput** | [**CreateTokenInput**](CreateTokenInput.md) | CreateToken |

### Return type

[**TokenDto**](TokenDto.md)

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
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final principalId = principalId_example; // String | id of principal
final principalType = principalType_example; // String | type of principal

try {
    api_instance.deletePrincipalFromProject(principalId, principalType);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->deletePrincipalFromProject: $e\n');
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

# **deleteToken**

> deleteToken(tokenId)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final tokenId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String |

try {
    api_instance.deleteToken(tokenId);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->deleteToken: $e\n');
}
```

### Parameters

| Name        | Type       | Description | Notes |
| ----------- | ---------- | ----------- | ----- |
| **tokenId** | **String** |             |

### Return type

void (empty response body)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPolicies**

> PolicyDto getPolicies(principalId, principalType)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final principalId = principalId_example; // String |
final principalType = principalType_example; // String |

try {
    final result = api_instance.getPolicies(principalId, principalType);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->getPolicies: $e\n');
}
```

### Parameters

| Name              | Type       | Description | Notes |
| ----------------- | ---------- | ----------- | ----- |
| **principalId**   | **String** |             |
| **principalType** | **String** |             |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToken**

> TokenDto getToken(tokenId)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final tokenId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String |

try {
    final result = api_instance.getToken(tokenId);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->getToken: $e\n');
}
```

### Parameters

| Name        | Type       | Description | Notes |
| ----------- | ---------- | ----------- | ----- |
| **tokenId** | **String** |             |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();

try {
    final result = api_instance.getWellKnownJwks();
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->getWellKnownJwks: $e\n');
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

# **listPrincipalsOfProject**

> UserList listPrincipalsOfProject()

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();

try {
    final result = api_instance.listPrincipalsOfProject();
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->listPrincipalsOfProject: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserList**](UserList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProject**

> ProjectList listProject()

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();

try {
    final result = api_instance.listProject();
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->listProject: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProjectList**](ProjectList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listToken**

> TokenList listToken()

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();

try {
    final result = api_instance.listToken();
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->listToken: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TokenList**](TokenList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePolicies**

> PolicyDto updatePolicies(principalId, principalType, policyDto)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final principalId = principalId_example; // String |
final principalType = principalType_example; // String |
final policyDto = PolicyDto(); // PolicyDto | UpdatePolicies

try {
    final result = api_instance.updatePolicies(principalId, principalType, policyDto);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->updatePolicies: $e\n');
}
```

### Parameters

| Name              | Type                          | Description    | Notes |
| ----------------- | ----------------------------- | -------------- | ----- |
| **principalId**   | **String**                    |                |
| **principalType** | **String**                    |                |
| **policyDto**     | [**PolicyDto**](PolicyDto.md) | UpdatePolicies |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**

> ProjectDto updateProject(projectId, updateProjectInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final projectId = projectId_example; // String | projectId
final updateProjectInput = UpdateProjectInput(); // UpdateProjectInput | UpdateProject

try {
    final result = api_instance.updateProject(projectId, updateProjectInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->updateProject: $e\n');
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

# **updateToken**

> TokenDto updateToken(tokenId, updateTokenInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();
final tokenId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String |
final updateTokenInput = UpdateTokenInput(); // UpdateTokenInput | UpdateToken

try {
    final result = api_instance.updateToken(tokenId, updateTokenInput);
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->updateToken: $e\n');
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **tokenId**          | **String**                                  |             |
| **updateTokenInput** | [**UpdateTokenInput**](UpdateTokenInput.md) | UpdateToken |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyDelete**

> v1AuthProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyDelete(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1AuthProxyDelete: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyGet**

> v1AuthProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyGet(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1AuthProxyGet: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPatch**

> v1AuthProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPatch(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1AuthProxyPatch: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPost**

> v1AuthProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPost(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1AuthProxyPost: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1AuthProxyPut**

> v1AuthProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1AuthProxyPut(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1AuthProxyPut: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyDelete**

> v1IdpProxyDelete(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyDelete(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1IdpProxyDelete: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyGet**

> v1IdpProxyGet(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyGet(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1IdpProxyGet: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPatch**

> v1IdpProxyPatch(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPatch(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1IdpProxyPatch: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPost**

> v1IdpProxyPost(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPost(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1IdpProxyPost: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1IdpProxyPut**

> v1IdpProxyPut(proxy)

### Example

```dart
import 'package:openapi/api.dart';

final api_instance = XAffinidiTdkApi();
final proxy = proxy_example; // String |

try {
    api_instance.v1IdpProxyPut(proxy);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->v1IdpProxyPut: $e\n');
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**

> WhoamiDto whoami()

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: UserTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('UserTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = XAffinidiTdkApi();

try {
    final result = api_instance.whoami();
    print(result);
} catch (e) {
    print('Exception when calling XAffinidiTdkApi->whoami: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiDto**](WhoamiDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
