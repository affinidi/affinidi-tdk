# affinidi_tdk_vault_data_manager_client.api.ProfileDataApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                       | HTTP request                              | Description |
| ------------------------------------------------------------ | ----------------------------------------- | ----------- |
| [**queryProfileData**](ProfileDataApi.md#queryprofiledata)   | **GET** /v1/nodes/{nodeId}/profile-data   |
| [**updateProfileData**](ProfileDataApi.md#updateprofiledata) | **PATCH** /v1/nodes/{nodeId}/profile-data |

# **queryProfileData**

> QueryProfileDataOK queryProfileData(nodeId, dek, query)

Retrieves information from a profile.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getProfileDataApi();
final String nodeId = nodeId_example; // String | the nodeId of the node being operated on
final String dek = dek_example; // String | A base64url encoded data encryption key, encrypted using VFS public
final String query = query_example; // String | data query, TBD maybe encode it with base64 to make it url friendly?

try {
    final response = api.queryProfileData(nodeId, dek, query);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileDataApi->queryProfileData: $e\n');
}
```

### Parameters

| Name       | Type       | Description                                                          | Notes      |
| ---------- | ---------- | -------------------------------------------------------------------- | ---------- |
| **nodeId** | **String** | the nodeId of the node being operated on                             |
| **dek**    | **String** | A base64url encoded data encryption key, encrypted using VFS public  |
| **query**  | **String** | data query, TBD maybe encode it with base64 to make it url friendly? | [optional] |

### Return type

[**QueryProfileDataOK**](QueryProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfileData**

> UpdateProfileDataOK updateProfileData(nodeId, updateProfileDataInput)

Updates the profile with the given data

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getProfileDataApi();
final String nodeId = nodeId_example; // String |
final UpdateProfileDataInput updateProfileDataInput = ; // UpdateProfileDataInput | Updates the schema with the given data

try {
    final response = api.updateProfileData(nodeId, updateProfileDataInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProfileDataApi->updateProfileData: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description                            | Notes |
| -------------------------- | ------------------------------------------------------- | -------------------------------------- | ----- |
| **nodeId**                 | **String**                                              |                                        |
| **updateProfileDataInput** | [**UpdateProfileDataInput**](UpdateProfileDataInput.md) | Updates the schema with the given data |

### Return type

[**UpdateProfileDataOK**](UpdateProfileDataOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
