# affinidi_tdk_login_configuration_client.api.ConfigurationApi

## Load the API package

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                 | HTTP request                                          | Description                                |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**createLoginConfigurations**](ConfigurationApi.md#createloginconfigurations)         | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**deleteLoginConfigurationsById**](ConfigurationApi.md#deleteloginconfigurationsbyid) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**getClientMetadataByClientId**](ConfigurationApi.md#getclientmetadatabyclientid)     | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**getLoginConfigurationsById**](ConfigurationApi.md#getloginconfigurationsbyid)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**listLoginConfigurations**](ConfigurationApi.md#listloginconfigurations)             | **GET** /v1/login/configurations                      | List login configurations                  |
| [**updateLoginConfigurationsById**](ConfigurationApi.md#updateloginconfigurationsbyid) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

# **createLoginConfigurations**

> CreateLoginConfigurationOutput createLoginConfigurations(createLoginConfigurationInput)

Create a new login configuration

Create a new login configuration `vpDefinition` and `idTokenMapping` have default settings that provide user email VP presentation definitions. An essential default definition is in place when it comes to the login process for end users using the Chrome extension. This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final CreateLoginConfigurationInput createLoginConfigurationInput = ; // CreateLoginConfigurationInput | CreateLoginConfigurations

try {
    final response = api.createLoginConfigurations(createLoginConfigurationInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->createLoginConfigurations: $e\n');
}
```

### Parameters

| Name                              | Type                                                                  | Description               | Notes      |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------- | ---------- |
| **createLoginConfigurationInput** | [**CreateLoginConfigurationInput**](CreateLoginConfigurationInput.md) | CreateLoginConfigurations | [optional] |

### Return type

[**CreateLoginConfigurationOutput**](CreateLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLoginConfigurationsById**

> deleteLoginConfigurationsById(configurationId)

Delete login configurations by ID

Delete login configurations by ID

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the login configuration

try {
    api.deleteLoginConfigurationsById(configurationId);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->deleteLoginConfigurationsById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                       | Notes |
| ------------------- | ---------- | --------------------------------- | ----- |
| **configurationId** | **String** | The id of the login configuration |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClientMetadataByClientId**

> LoginConfigurationClientMetadataOutput getClientMetadataByClientId(clientId)

Get Client Metadata By OAuth 2.0 Client ID

Get Client Metadata By OAuth 2.0 Client ID

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final String clientId = clientId_example; // String | OAuth 2.0 Client ID

try {
    final response = api.getClientMetadataByClientId(clientId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->getClientMetadataByClientId: $e\n');
}
```

### Parameters

| Name         | Type       | Description         | Notes |
| ------------ | ---------- | ------------------- | ----- |
| **clientId** | **String** | OAuth 2.0 Client ID |

### Return type

[**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLoginConfigurationsById**

> LoginConfigurationObject getLoginConfigurationsById(configurationId)

Get login configuration by ID

Get login configuration by ID

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the login configuration

try {
    final response = api.getLoginConfigurationsById(configurationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->getLoginConfigurationsById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                       | Notes |
| ------------------- | ---------- | --------------------------------- | ----- |
| **configurationId** | **String** | The id of the login configuration |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listLoginConfigurations**

> ListLoginConfigurationOutput listLoginConfigurations(limit, exclusiveStartKey)

List login configurations

Endpoint to retrieve list of login configurations

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final int limit = 56; // int | Maximum number of records to fetch in a list
final String exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final response = api.listLoginConfigurations(limit, exclusiveStartKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->listLoginConfigurations: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoginConfigurationOutput**](ListLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLoginConfigurationsById**

> LoginConfigurationObject updateLoginConfigurationsById(configurationId, updateLoginConfigurationInput)

Update login configurations by ID

Update login configurations by ID

### Example

```dart
import 'package:affinidi_tdk_login_configuration_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkLoginConfigurationClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the login configuration
final UpdateLoginConfigurationInput updateLoginConfigurationInput = ; // UpdateLoginConfigurationInput | UpdateLoginConfigurationsById

try {
    final response = api.updateLoginConfigurationsById(configurationId, updateLoginConfigurationInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationApi->updateLoginConfigurationsById: $e\n');
}
```

### Parameters

| Name                              | Type                                                                  | Description                       | Notes      |
| --------------------------------- | --------------------------------------------------------------------- | --------------------------------- | ---------- |
| **configurationId**               | **String**                                                            | The id of the login configuration |
| **updateLoginConfigurationInput** | [**UpdateLoginConfigurationInput**](UpdateLoginConfigurationInput.md) | UpdateLoginConfigurationsById     | [optional] |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
