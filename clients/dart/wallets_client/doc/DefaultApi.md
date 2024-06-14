# affinidi_tdk_wallets_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                           | HTTP request                                                                       | Description |
| -------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------- |
| [**getRevocationCredentialStatus**](DefaultApi.md#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |

# **getRevocationCredentialStatus**

> GetRevocationListCredentialResultDto getRevocationCredentialStatus(projectId, walletId, statusId)

Get revocation status list as RevocationListCredential

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = DefaultApi();
final projectId = projectId_example; // String | Description for projectId.
final walletId = walletId_example; // String | Description for walletId.
final statusId = statusId_example; // String | Description for statusId.

try {
    final result = api_instance.getRevocationCredentialStatus(projectId, walletId, statusId);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getRevocationCredentialStatus: $e\n');
}
```

### Parameters

| Name          | Type       | Description                | Notes |
| ------------- | ---------- | -------------------------- | ----- |
| **projectId** | **String** | Description for projectId. |
| **walletId**  | **String** | Description for walletId.  |
| **statusId**  | **String** | Description for statusId.  |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
