# affinidi_tdk_iota_client.api.DcqlQueryApi

## Load the API package

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                         | HTTP request                                                           | Description |
| -------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------- |
| [**createDcqlQuery**](DcqlQueryApi.md#createdcqlquery)         | **POST** /v1/configurations/{configurationId}/dcql-queries             |
| [**deleteDcqlQueryById**](DcqlQueryApi.md#deletedcqlquerybyid) | **DELETE** /v1/configurations/{configurationId}/dcql-queries/{queryId} |
| [**getDcqlQueryById**](DcqlQueryApi.md#getdcqlquerybyid)       | **GET** /v1/configurations/{configurationId}/dcql-queries/{queryId}    |
| [**listDcqlQueries**](DcqlQueryApi.md#listdcqlqueries)         | **GET** /v1/configurations/{configurationId}/dcql-queries              |
| [**updateDcqlQueryById**](DcqlQueryApi.md#updatedcqlquerybyid) | **PATCH** /v1/configurations/{configurationId}/dcql-queries/{queryId}  |

# **createDcqlQuery**

> DcqlQueryDto createDcqlQuery(configurationId, createDcqlQueryInput)

Creates a new DCQL query in the configuration to query data.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getDcqlQueryApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final CreateDcqlQueryInput createDcqlQueryInput = ; // CreateDcqlQueryInput | CreateDcqlQuery

try {
    final response = api.createDcqlQuery(configurationId, createDcqlQueryInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DcqlQueryApi->createDcqlQuery: $e\n');
}
```

### Parameters

| Name                     | Type                                                | Description                                      | Notes |
| ------------------------ | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**      | **String**                                          | ID of the Affinidi Iota Framework configuration. |
| **createDcqlQueryInput** | [**CreateDcqlQueryInput**](CreateDcqlQueryInput.md) | CreateDcqlQuery                                  |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDcqlQueryById**

> deleteDcqlQueryById(configurationId, queryId)

Deletes a DCQL query in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getDcqlQueryApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final String queryId = queryId_example; // String | The ID of the query.

try {
    api.deleteDcqlQueryById(configurationId, queryId);
} catch on DioException (e) {
    print('Exception when calling DcqlQueryApi->deleteDcqlQueryById: $e\n');
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

# **getDcqlQueryById**

> DcqlQueryDto getDcqlQueryById(configurationId, queryId)

Retrieves a DCQL query in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getDcqlQueryApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final String queryId = queryId_example; // String | The ID of the query.

try {
    final response = api.getDcqlQueryById(configurationId, queryId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DcqlQueryApi->getDcqlQueryById: $e\n');
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |
| **queryId**         | **String** | The ID of the query.                             |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDcqlQueries**

> ListDcqlQueriesOK listDcqlQueries(configurationId, limit, exclusiveStartKey)

Lists all DCQL queries in the configuration.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getDcqlQueryApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final int limit = 56; // int | Maximum number of records to fetch in a list
final String exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final response = api.listDcqlQueries(configurationId, limit, exclusiveStartKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DcqlQueryApi->listDcqlQueries: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configurationId**   | **String** | ID of the Affinidi Iota Framework configuration.                                                                                                               |
| **limit**             | **int**    | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListDcqlQueriesOK**](ListDcqlQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDcqlQueryById**

> DcqlQueryDto updateDcqlQueryById(configurationId, queryId, updateDcqlQueryInput)

Updates the DCQL query in the configuration by ID.

### Example

```dart
import 'package:affinidi_tdk_iota_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkIotaClient().getDcqlQueryApi();
final String configurationId = configurationId_example; // String | ID of the Affinidi Iota Framework configuration.
final String queryId = queryId_example; // String | The ID of the query.
final UpdateDcqlQueryInput updateDcqlQueryInput = ; // UpdateDcqlQueryInput | UpdateDcqlQueryById

try {
    final response = api.updateDcqlQueryById(configurationId, queryId, updateDcqlQueryInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DcqlQueryApi->updateDcqlQueryById: $e\n');
}
```

### Parameters

| Name                     | Type                                                | Description                                      | Notes |
| ------------------------ | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**      | **String**                                          | ID of the Affinidi Iota Framework configuration. |
| **queryId**              | **String**                                          | The ID of the query.                             |
| **updateDcqlQueryInput** | [**UpdateDcqlQueryInput**](UpdateDcqlQueryInput.md) | UpdateDcqlQueryById                              |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
