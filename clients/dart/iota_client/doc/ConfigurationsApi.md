# affinidi_tdk_iota_client.api.ConfigurationsApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                | HTTP request                                                               | Description |
| ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**createIotaConfiguration**](ConfigurationsApi.md#createiotaconfiguration)           | **POST** /v1/configurations                                                |
| [**deleteIotaConfigurationById**](ConfigurationsApi.md#deleteiotaconfigurationbyid)   | **DELETE** /v1/configurations/{configurationId}                            |
| [**getIotaConfigurationById**](ConfigurationsApi.md#getiotaconfigurationbyid)         | **GET** /v1/configurations/{configurationId}                               |
| [**getIotaConfigurationMetaData**](ConfigurationsApi.md#getiotaconfigurationmetadata) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |
| [**listIotaConfigurations**](ConfigurationsApi.md#listiotaconfigurations)             | **GET** /v1/configurations                                                 |
| [**updateIotaConfigurationById**](ConfigurationsApi.md#updateiotaconfigurationbyid)   | **PATCH** /v1/configurations/{configurationId}                             |

# **createIotaConfiguration**

> IotaConfigurationDto createIotaConfiguration(createIotaConfigurationInput)

Creates a new Affinidi Iota Framework configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getConfigurationsApi();
final CreateIotaConfigurationInput createIotaConfigurationInput = ; // CreateIotaConfigurationInput | CreateConfiguration

try {
    final response = api.createIotaConfiguration(createIotaConfigurationInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->createIotaConfiguration: $e\n');
}
```

### Parameters

| Name                             | Type                                                                | Description         | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ------------------- | ----- |
| **createIotaConfigurationInput** | [**CreateIotaConfigurationInput**](CreateIotaConfigurationInput.md) | CreateConfiguration |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIotaConfigurationById**

> deleteIotaConfigurationById(configurationId)

Deletes an Affinidi Iota Framework configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getConfigurationsApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.

try {
    api.deleteIotaConfigurationById(configurationId);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->deleteIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIotaConfigurationById**

> IotaConfigurationDto getIotaConfigurationById(configurationId)

Retrieves the details of an Affinidi Iota Framework configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getConfigurationsApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.

try {
    final response = api.getIotaConfigurationById(configurationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->getIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIotaConfigurationMetaData**

> GetIotaConfigurationMetaDataOK getIotaConfigurationMetaData(projectId, configurationId)

Retrieves the client metadata of an Affinidi Iota Framework configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api = AffinidiTdkIotaClient().getConfigurationsApi();
final String projectId = projectId_example; // String | The ID of the project.
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.

try {
    final response = api.getIotaConfigurationMetaData(projectId, configurationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->getIotaConfigurationMetaData: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **projectId**       | **String** | The ID of the project.                           |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |

### Return type

[**GetIotaConfigurationMetaDataOK**](GetIotaConfigurationMetaDataOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIotaConfigurations**

> ListConfigurationOK listIotaConfigurations()

List all Affinidi Iota Framework configurations.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getConfigurationsApi();

try {
    final response = api.listIotaConfigurations();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->listIotaConfigurations: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListConfigurationOK**](ListConfigurationOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIotaConfigurationById**

> IotaConfigurationDto updateIotaConfigurationById(configurationId, updateConfigurationByIdInput)

Updates the details of an Affinidi Iota Framework configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getConfigurationsApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final UpdateConfigurationByIdInput updateConfigurationByIdInput = ; // UpdateConfigurationByIdInput | UpdateConfigurationById

try {
    final response = api.updateIotaConfigurationById(configurationId, updateConfigurationByIdInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ConfigurationsApi->updateIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                             | Type                                                                | Description                                      | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**              | **String**                                                          | ID of the Affinidi Iota Framework configuration. |
| **updateConfigurationByIdInput** | [**UpdateConfigurationByIdInput**](UpdateConfigurationByIdInput.md) | UpdateConfigurationById                          |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
