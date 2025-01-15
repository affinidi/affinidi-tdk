# affinidi_tdk_credential_issuance_client.api.ConfigurationApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

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

final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();
final CreateIssuanceConfigInput createIssuanceConfigInput = ; // CreateIssuanceConfigInput | Request body of create configuration

try {
    final response = api.createIssuanceConfig(createIssuanceConfigInput);
    print(response);
} catch on DioException (e) {
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

final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the issuance configuration

try {
    api.deleteIssuanceConfigById(configurationId);
} catch on DioException (e) {
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

final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the issuance configuration

try {
    final response = api.getIssuanceConfigById(configurationId);
    print(response);
} catch on DioException (e) {
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

final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();

try {
    final response = api.getIssuanceConfigList();
    print(response);
} catch on DioException (e) {
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

final api = AffinidiTdkCredentialIssuanceClient().getConfigurationApi();
final String configurationId = configurationId_example; // String | The id of the issuance configuration
final UpdateIssuanceConfigInput updateIssuanceConfigInput = ; // UpdateIssuanceConfigInput | Request body of update configuration

try {
    final response = api.updateIssuanceConfigById(configurationId, updateIssuanceConfigInput);
    print(response);
} catch on DioException (e) {
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
