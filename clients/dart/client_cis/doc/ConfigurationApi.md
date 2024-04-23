# affinidi_tdk_client_cis.api.ConfigurationApi

## Load the API package

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                               | HTTP request                 | Description |
| -------------------------------------------------------------------- | ---------------------------- | ----------- |
| [**createIssuanceConfig**](ConfigurationApi.md#createissuanceconfig) | **POST** /v1/configuration   |
| [**deleteIssuanceConfig**](ConfigurationApi.md#deleteissuanceconfig) | **DELETE** /v1/configuration |
| [**getIssuanceConfig**](ConfigurationApi.md#getissuanceconfig)       | **GET** /v1/configuration    |
| [**updateIssuanceConfig**](ConfigurationApi.md#updateissuanceconfig) | **PUT** /v1/configuration    |

# **createIssuanceConfig**

> IssuanceConfig createIssuanceConfig(createIssuanceConfigInput)

Create issuance configuration, project have only one configuration

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
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

[**IssuanceConfig**](IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssuanceConfig**

> deleteIssuanceConfig()

Delete project issuance configuration

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();

try {
    api_instance.deleteIssuanceConfig();
} catch (e) {
    print('Exception when calling ConfigurationApi->deleteIssuanceConfig: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceConfig**

> IssuanceConfig getIssuanceConfig()

Get issuance configuration for my selected project

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();

try {
    final result = api_instance.getIssuanceConfig();
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->getIssuanceConfig: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**IssuanceConfig**](IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIssuanceConfig**

> IssuanceConfig updateIssuanceConfig(updateIssuanceConfigInput)

Update issuance configuration

### Example

```dart
import 'package:affinidi_tdk_client_cis/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = ConfigurationApi();
final updateIssuanceConfigInput = UpdateIssuanceConfigInput(); // UpdateIssuanceConfigInput | Request body of update configuration

try {
    final result = api_instance.updateIssuanceConfig(updateIssuanceConfigInput);
    print(result);
} catch (e) {
    print('Exception when calling ConfigurationApi->updateIssuanceConfig: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description                          | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **updateIssuanceConfigInput** | [**UpdateIssuanceConfigInput**](UpdateIssuanceConfigInput.md) | Request body of update configuration |

### Return type

[**IssuanceConfig**](IssuanceConfig.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
