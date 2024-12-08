# affinidi_tdk_credential_issuance_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                               | HTTP request                                                                            | Description                   |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ----------------------------- |
| [**changeCredentialSatatus**](DefaultApi.md#changecredentialsatatus) | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status.     |
| [**getStatusList**](DefaultApi.md#getstatuslist)                     | **GET** /v1/{projectId}/status-list/{statusListId}                                      | Return status list credential |
| [**listIssuanceDataRecords**](DefaultApi.md#listissuancedatarecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records                  |

# **changeCredentialSatatus**

> FlowData changeCredentialSatatus(projectId, configurationId)

change credential status.

change credential status.

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final projectId = projectId_example; // String | project id
final configurationId = configurationId_example; // String | configuration id

try {
    final result = api_instance.changeCredentialSatatus(projectId, configurationId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->changeCredentialSatatus: $e\n');
}
```

### Parameters

| Name                | Type       | Description      | Notes |
| ------------------- | ---------- | ---------------- | ----- |
| **projectId**       | **String** | project id       |
| **configurationId** | **String** | configuration id |

### Return type

[**FlowData**](FlowData.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatusList**

> GetStatusListResultDto getStatusList(projectId, statusListId)

Return status list credential

Return status list credential

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';

final api_instance = DefaultApi();
final projectId = projectId_example; // String |
final statusListId = statusListId_example; // String | id of the status list

try {
    final result = api_instance.getStatusList(projectId, statusListId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getStatusList: $e\n');
}
```

### Parameters

| Name             | Type       | Description           | Notes |
| ---------------- | ---------- | --------------------- | ----- |
| **projectId**    | **String** |                       |
| **statusListId** | **String** | id of the status list |

### Return type

[**GetStatusListResultDto**](GetStatusListResultDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIssuanceDataRecords**

> ListIssuanceRecordResponse listIssuanceDataRecords(projectId, configurationId, limit, exclusiveStartKey)

List records

Retrieve a list of issuance data records.

### Example

```dart
import 'package:affinidi_tdk_credential_issuance_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final projectId = projectId_example; // String | Affinidi project id
final configurationId = configurationId_example; // String | The id of the issuance configuration
final limit = 56; // int | Maximum number of records to fetch in a list
final exclusiveStartKey = exclusiveStartKey_example; // String | exclusiveStartKey for retrieving the next batch of data.

try {
    final result = api_instance.listIssuanceDataRecords(projectId, configurationId, limit, exclusiveStartKey);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->listIssuanceDataRecords: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                              | Notes                      |
| --------------------- | ---------- | -------------------------------------------------------- | -------------------------- |
| **projectId**         | **String** | Affinidi project id                                      |
| **configurationId**   | **String** | The id of the issuance configuration                     |
| **limit**             | **int**    | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusiveStartKey** | **String** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**ListIssuanceRecordResponse**](ListIssuanceRecordResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
