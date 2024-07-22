# affinidi_tdk_iota_client.api.PexQueryApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request                                                          | Description |
| ----------------------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery**](PexQueryApi.md#createpexquery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |
| [**deletePexQueryById**](PexQueryApi.md#deletepexquerybyid) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |
| [**getPexQueryById**](PexQueryApi.md#getpexquerybyid)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |
| [**listPexQueries**](PexQueryApi.md#listpexqueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |
| [**updatePexQueryById**](PexQueryApi.md#updatepexquerybyid) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |

# **createPexQuery**

> PexQueryDto createPexQuery(configurationId, createPexQueryInput)

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final createPexQueryInput = CreatePexQueryInput(); // CreatePexQueryInput | CreatePexQuery

try {
    final result = api_instance.createPexQuery(configurationId, createPexQueryInput);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->createPexQuery: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description          | Notes |
| ----------------------- | ------------------------------------------------- | -------------------- | ----- |
| **configurationId**     | **String**                                        | iotaConfiguration Id |
| **createPexQueryInput** | [**CreatePexQueryInput**](CreatePexQueryInput.md) | CreatePexQuery       |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePexQueryById**

> deletePexQueryById(configurationId, queryId)

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final queryId = queryId_example; // String | pex-query Id

try {
    api_instance.deletePexQueryById(configurationId, queryId);
} catch (e) {
    print('Exception when calling PexQueryApi->deletePexQueryById: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **configurationId** | **String** | iotaConfiguration Id |
| **queryId**         | **String** | pex-query Id         |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPexQueryById**

> PexQueryDto getPexQueryById(configurationId, queryId)

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final queryId = queryId_example; // String | pex-query Id

try {
    final result = api_instance.getPexQueryById(configurationId, queryId);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->getPexQueryById: $e\n');
}
```

### Parameters

| Name                | Type       | Description          | Notes |
| ------------------- | ---------- | -------------------- | ----- |
| **configurationId** | **String** | iotaConfiguration Id |
| **queryId**         | **String** | pex-query Id         |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPexQueries**

> ListPexQueriesOK listPexQueries(configurationId, limit, exclusiveStartKey)

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final result = api_instance.listPexQueries(configurationId, limit, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->listPexQueries: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configurationId**   | **String** | iotaConfiguration Id                                                                                                                                           |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListPexQueriesOK**](ListPexQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePexQueryById**

> PexQueryDto updatePexQueryById(configurationId, queryId, updatePexQueryInput)

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | iotaConfiguration Id
final queryId = queryId_example; // String | pex-query Id
final updatePexQueryInput = UpdatePexQueryInput(); // UpdatePexQueryInput | UpdatePexQueryById

try {
    final result = api_instance.updatePexQueryById(configurationId, queryId, updatePexQueryInput);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->updatePexQueryById: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description          | Notes |
| ----------------------- | ------------------------------------------------- | -------------------- | ----- |
| **configurationId**     | **String**                                        | iotaConfiguration Id |
| **queryId**             | **String**                                        | pex-query Id         |
| **updatePexQueryInput** | [**UpdatePexQueryInput**](UpdatePexQueryInput.md) | UpdatePexQueryById   |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
