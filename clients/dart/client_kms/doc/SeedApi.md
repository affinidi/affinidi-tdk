# openapi.api.SeedApi

## Load the API package

```dart
import 'package:openapi/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                      | HTTP request                            | Description |
| ----------------------------------------------------------- | --------------------------------------- | ----------- |
| [**createSeed**](SeedApi.md#createseed)                     | **POST** /v1/seeds                      |
| [**exportSeedAsMnemonic**](SeedApi.md#exportseedasmnemonic) | **POST** /v1/seeds/{id}/export-mnemonic |
| [**getKey**](SeedApi.md#getkey)                             | **GET** /v1/keys/{id}                   |
| [**getSeed**](SeedApi.md#getseed)                           | **GET** /v1/seeds/{id}                  |
| [**importSeed**](SeedApi.md#importseed)                     | **POST** /v1/seeds/import               |
| [**listSeed**](SeedApi.md#listseed)                         | **GET** /v1/seeds                       |
| [**revokeSeed**](SeedApi.md#revokeseed)                     | **PATCH** /v1/seeds/{id}/revoke         |

# **createSeed**

> CreateSeedResultDto createSeed(emptyInput)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final emptyInput = EmptyInput(); // EmptyInput | CreateSeed

try {
    final result = api_instance.createSeed(emptyInput);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->createSeed: $e\n');
}
```

### Parameters

| Name           | Type                            | Description | Notes      |
| -------------- | ------------------------------- | ----------- | ---------- |
| **emptyInput** | [**EmptyInput**](EmptyInput.md) | CreateSeed  | [optional] |

### Return type

[**CreateSeedResultDto**](CreateSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportSeedAsMnemonic**

> ExportSeedResultDto exportSeedAsMnemonic(id, emptyInput)

Export seed as a mnemonic phrase (for seed 128bit / 256bit (default)). Returns the exported seed from the service

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final id = id_example; // String | id of seed to be exported
final emptyInput = EmptyInput(); // EmptyInput | ExportSeedAsMnemonic

try {
    final result = api_instance.exportSeedAsMnemonic(id, emptyInput);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->exportSeedAsMnemonic: $e\n');
}
```

### Parameters

| Name           | Type                            | Description               | Notes      |
| -------------- | ------------------------------- | ------------------------- | ---------- |
| **id**         | **String**                      | id of seed to be exported |
| **emptyInput** | [**EmptyInput**](EmptyInput.md) | ExportSeedAsMnemonic      | [optional] |

### Return type

[**ExportSeedResultDto**](ExportSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getKey**

> GetKeyResultDto getKey(id)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final id = id_example; // String | id of key

try {
    final result = api_instance.getKey(id);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->getKey: $e\n');
}
```

### Parameters

| Name   | Type       | Description | Notes |
| ------ | ---------- | ----------- | ----- |
| **id** | **String** | id of key   |

### Return type

[**GetKeyResultDto**](GetKeyResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSeed**

> GetSeedResultDto getSeed(id)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final id = id_example; // String | id of seed record

try {
    final result = api_instance.getSeed(id);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->getSeed: $e\n');
}
```

### Parameters

| Name   | Type       | Description       | Notes |
| ------ | ---------- | ----------------- | ----- |
| **id** | **String** | id of seed record |

### Return type

[**GetSeedResultDto**](GetSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importSeed**

> CreateSeedResultDto importSeed(importSeedRequest)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final importSeedRequest = ImportSeedRequest(); // ImportSeedRequest | ImportSeed

try {
    final result = api_instance.importSeed(importSeedRequest);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->importSeed: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description | Notes |
| --------------------- | --------------------------------------------- | ----------- | ----- |
| **importSeedRequest** | [**ImportSeedRequest**](ImportSeedRequest.md) | ImportSeed  |

### Return type

[**CreateSeedResultDto**](CreateSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listSeed**

> ListSeedResultDto listSeed(status)

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final status = status_example; // String |

try {
    final result = api_instance.listSeed(status);
    print(result);
} catch (e) {
    print('Exception when calling SeedApi->listSeed: $e\n');
}
```

### Parameters

| Name       | Type       | Description | Notes      |
| ---------- | ---------- | ----------- | ---------- |
| **status** | **String** |             | [optional] |

### Return type

[**ListSeedResultDto**](ListSeedResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeSeed**

> revokeSeed(id, emptyInput)

revokes the seed, after that the keys derived from this seed cannot be used anymore. Revoked seed id will be listed in seed list with isRevoked=true flag

### Example

```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = SeedApi();
final id = id_example; // String | id of seed record
final emptyInput = EmptyInput(); // EmptyInput | RevokeSeed

try {
    api_instance.revokeSeed(id, emptyInput);
} catch (e) {
    print('Exception when calling SeedApi->revokeSeed: $e\n');
}
```

### Parameters

| Name           | Type                            | Description       | Notes      |
| -------------- | ------------------------------- | ----------------- | ---------- |
| **id**         | **String**                      | id of seed record |
| **emptyInput** | [**EmptyInput**](EmptyInput.md) | RevokeSeed        | [optional] |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
