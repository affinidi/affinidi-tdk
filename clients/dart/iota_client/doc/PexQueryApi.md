# affinidi_tdk_iota_client.api.PexQueryApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request                                                          | Description |
| ----------------------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery**](PexQueryApi.md#createpexquery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |
| [**deletePexQueries**](PexQueryApi.md#deletepexqueries)     | **POST** /v1/configurations/{configurationId}/delete-queries          |
| [**deletePexQueryById**](PexQueryApi.md#deletepexquerybyid) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |
| [**getPexQueryById**](PexQueryApi.md#getpexquerybyid)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |
| [**listPexQueries**](PexQueryApi.md#listpexqueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |
| [**savePexQueries**](PexQueryApi.md#savepexqueries)         | **POST** /v1/configurations/{configurationId}/save-queries            |
| [**updatePexQueryById**](PexQueryApi.md#updatepexquerybyid) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |

# **createPexQuery**

> PexQueryDto createPexQuery(configurationId, createPexQueryInput)

Creates a new Presentation Definition in the configuration to query data.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final createPexQueryInput = CreatePexQueryInput(); // CreatePexQueryInput | CreatePexQuery

try {
    final result = api_instance.createPexQuery(configurationId, createPexQueryInput);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->createPexQuery: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description                                      | Notes |
| ----------------------- | ------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**     | **String**                                        | ID of the Affinidi Iota Framework configuration. |
| **createPexQueryInput** | [**CreatePexQueryInput**](CreatePexQueryInput.md) | CreatePexQuery                                   |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePexQueries**

> deletePexQueries(configurationId)

Deletes all Presentation Definition queries of a configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.

try {
    api_instance.deletePexQueries(configurationId);
} catch (e) {
    print('Exception when calling PexQueryApi->deletePexQueries: $e\n');
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

# **deletePexQueryById**

> deletePexQueryById(configurationId, queryId)

Deletes a Presentation Definition in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final queryId = queryId_example; // String | The ID of the query.

try {
    api_instance.deletePexQueryById(configurationId, queryId);
} catch (e) {
    print('Exception when calling PexQueryApi->deletePexQueryById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |
| **queryId**         | **String** | The ID of the query.                             |

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

Retrieves a Presentation Definition in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final queryId = queryId_example; // String | The ID of the query.

try {
    final result = api_instance.getPexQueryById(configurationId, queryId);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->getPexQueryById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |
| **queryId**         | **String** | The ID of the query.                             |

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

Lists all Presentation Definitions in the configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
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
| **configurationId**   | **String** | ID of the Affinidi Iota Framework configuration.                                                                                                               |
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

# **savePexQueries**

> Object savePexQueries(configurationId, savePexQueriesUpdateInput)

Saves all Presentation Definition queries of a configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final savePexQueriesUpdateInput = SavePexQueriesUpdateInput(); // SavePexQueriesUpdateInput | SavePexQueriesInput

try {
    final result = api_instance.savePexQueries(configurationId, savePexQueriesUpdateInput);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->savePexQueries: $e\n');
}
```

### Parameters

| Name                          | Type                                                          | Description                                      | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**           | **String**                                                    | ID of the Affinidi Iota Framework configuration. |
| **savePexQueriesUpdateInput** | [**SavePexQueriesUpdateInput**](SavePexQueriesUpdateInput.md) | SavePexQueriesInput                              |

### Return type

[**Object**](Object.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePexQueryById**

> PexQueryDto updatePexQueryById(configurationId, queryId, updatePexQueryInput)

Updates the Presentation Definition in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = PexQueryApi();
final configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final queryId = queryId_example; // String | The ID of the query.
final updatePexQueryInput = UpdatePexQueryInput(); // UpdatePexQueryInput | UpdatePexQueryById

try {
    final result = api_instance.updatePexQueryById(configurationId, queryId, updatePexQueryInput);
    print(result);
} catch (e) {
    print('Exception when calling PexQueryApi->updatePexQueryById: $e\n');
}
```

### Parameters

| Name                    | Type                                              | Description                                      | Notes |
| ----------------------- | ------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**     | **String**                                        | ID of the Affinidi Iota Framework configuration. |
| **queryId**             | **String**                                        | The ID of the query.                             |
| **updatePexQueryInput** | [**UpdatePexQueryInput**](UpdatePexQueryInput.md) | UpdatePexQueryById                               |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
