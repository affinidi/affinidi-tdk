# affinidi_tdk_credential_issuance_client.api.ConfigurationApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                       | HTTP request                                    | Description |
| ---------------------------------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createIssuanceConfig**](ConfigurationApi.md#createissuanceconfig)         | **POST** /v1/configurations                     |
| [**deleteIssuanceConfigById**](ConfigurationApi.md#deleteissuanceconfigbyid) | **DELETE** /v1/configurations/{configurationId} |
| [**getIssuanceConfigById**](ConfigurationApi.md#getissuanceconfigbyid)       | **GET** /v1/configurations/{configurationId}    |
| [**getIssuanceConfigList**](ConfigurationApi.md#getissuanceconfiglist)       | **GET** /v1/configurations                      |
| [**updateIssuanceConfigById**](ConfigurationApi.md#updateissuanceconfigbyid) | **PUT** /v1/configurations/{configurationId}    |

# **createIssuanceConfig**

> IssuanceConfigDto createIssuanceConfig(createIssuanceConfigInput)

Create issuance configuration, project have only one configuration

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();
final createIssuanceConfigInput = CreateIssuanceConfigInput(); // CreateIssuanceConfigInput | Request body of create configuration

try {
    final result = api_instance.createIssuanceConfig(createIssuanceConfigInput);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->createIssuanceConfig: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description                          | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **createIssuanceConfigInput** | [**CreateIssuanceConfigInput**](CreateIssuanceConfigInput.md) | Request body of create configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssuanceConfigById**

> deleteIssuanceConfigById(configurationId)

Delete project issuance configuration

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();
final configurationId = configurationId_example; // String | The id of the issuance configuration

try {
    api_instance.deleteIssuanceConfigById(configurationId);
} catch (e) {
    print('Exception when calling ConfigurationApi->deleteIssuanceConfigById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                          | Notes |
| ------------------- | ---------- | ------------------------------------ | ----- |
| **configurationId** | **String** | The id of the issuance configuration |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceConfigById**

> IssuanceConfigDto getIssuanceConfigById(configurationId)

Get issuance configuration by id

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();
final configurationId = configurationId_example; // String | The id of the issuance configuration

try {
    final result = api_instance.getIssuanceConfigById(configurationId);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->getIssuanceConfigById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                          | Notes |
| ------------------- | ---------- | ------------------------------------ | ----- |
| **configurationId** | **String** | The id of the issuance configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceConfigList**

> IssuanceConfigListResponse getIssuanceConfigList()

Get issuance configuration for my selected project

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();

try {
    final result = api_instance.getIssuanceConfigList();
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->getIssuanceConfigList: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfigListResponse**](IssuanceConfigListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIssuanceConfigById**

> IssuanceConfigDto updateIssuanceConfigById(configurationId, updateIssuanceConfigInput)

Update issuance configuration

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();
final configurationId = configurationId_example; // String | The id of the issuance configuration
final updateIssuanceConfigInput = UpdateIssuanceConfigInput(); // UpdateIssuanceConfigInput | Request body of update configuration

try {
    final result = api_instance.updateIssuanceConfigById(configurationId, updateIssuanceConfigInput);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->updateIssuanceConfigById: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description                          | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **configurationId**           | **String**                                                    | The id of the issuance configuration |
| **updateIssuanceConfigInput** | [**UpdateIssuanceConfigInput**](UpdateIssuanceConfigInput.md) | Request body of update configuration |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
