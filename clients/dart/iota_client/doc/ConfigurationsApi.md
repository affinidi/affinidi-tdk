# affinidi_tdk_iota_client.api.ConfigurationsApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to _http://localhost_

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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationsApi();
final createIotaConfigurationInput = CreateIotaConfigurationInput(); // CreateIotaConfigurationInput | CreateConfiguration

try {
    final result = api_instance.createIotaConfiguration(createIotaConfigurationInput);
    print(result);
} catch (e) {
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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationsApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id

try {
    api_instance.deleteIotaConfigurationById(configurationId);
} catch (e) {
    print('Exception when calling ConfigurationsApi->deleteIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **configurationId** | **String** | iotaConfiguration Id |

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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationsApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id

try {
    final result = api_instance.getIotaConfigurationById(configurationId);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationsApi->getIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **configurationId** | **String** | iotaConfiguration Id |

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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';

final api_instance = ConfigurationsApi();
final projectId = projectId_example; // String | project Id
final configurationId = configurationId_example; // String | iotaConfiguration Id

try {
    final result = api_instance.getIotaConfigurationMetaData(projectId, configurationId);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationsApi->getIotaConfigurationMetaData: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **projectId**       | **String** | project Id           |
| **configurationId** | **String** | iotaConfiguration Id |

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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationsApi();

try {
    final result = api_instance.listIotaConfigurations();
    print(result);
} catch (e) {
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

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationsApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final updateConfigurationByIdInput = UpdateConfigurationByIdInput(); // UpdateConfigurationByIdInput | UpdateConfigurationById

try {
    final result = api_instance.updateIotaConfigurationById(configurationId, updateConfigurationByIdInput);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationsApi->updateIotaConfigurationById: $e\n');
}
```

### Parameters

| Name                             | Type                                                                | Description             | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ----------------------- | ----- |
| **configurationId**              | **String**                                                          | iotaConfiguration Id    |
| **updateConfigurationByIdInput** | [**UpdateConfigurationByIdInput**](UpdateConfigurationByIdInput.md) | UpdateConfigurationById |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
