# affinidi_tdk_wallets_client.api.RevocationApi

## Load the API package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                              | HTTP request                                                                       | Description                        |
| ----------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**getRevocationCredentialStatus**](RevocationApi.md#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |
| [**getRevocationListCredential**](RevocationApi.md#getrevocationlistcredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revokeCredential**](RevocationApi.md#revokecredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| [**revokeCredentials**](RevocationApi.md#revokecredentials)                         | **POST** /v2/wallets/{walletId}/credentials/revoke                                 | Revoke Credentials.                |

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

final api = AffinidiTdkWalletsClient().getRevocationApi();
final String projectId = projectId_example; // String | Description for projectId.
final String walletId = walletId_example; // String | Description for walletId.
final String statusId = statusId_example; // String | Description for statusId.

try {
    final response = api.getRevocationCredentialStatus(projectId, walletId, statusId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RevocationApi->getRevocationCredentialStatus: $e\n');
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

# **getRevocationListCredential**

> GetRevocationListCredentialResultDto getRevocationListCredential(listId, walletId)

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkWalletsClient().getRevocationApi();
final String listId = listId_example; // String |
final String walletId = walletId_example; // String | id of the wallet

try {
    final response = api.getRevocationListCredential(listId, walletId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RevocationApi->getRevocationListCredential: $e\n');
}
```

### Parameters

| Name         | Type       | Description      | Notes |
| ------------ | ---------- | ---------------- | ----- |
| **listId**   | **String** |                  |
| **walletId** | **String** | id of the wallet |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeCredential**

> revokeCredential(walletId, revokeCredentialInput)

Revoke Credential.

Update index/credetial at appropriate revocation list (set revoken is true).

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkWalletsClient().getRevocationApi();
final String walletId = walletId_example; // String | id of the wallet
final RevokeCredentialInput revokeCredentialInput = ; // RevokeCredentialInput | RevokeCredential

try {
    api.revokeCredential(walletId, revokeCredentialInput);
} catch on DioException (e) {
    print('Exception when calling RevocationApi->revokeCredential: $e\n');
}
```

### Parameters

| Name                      | Type                                                  | Description      | Notes |
| ------------------------- | ----------------------------------------------------- | ---------------- | ----- |
| **walletId**              | **String**                                            | id of the wallet |
| **revokeCredentialInput** | [**RevokeCredentialInput**](RevokeCredentialInput.md) | RevokeCredential |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revokeCredentials**

> revokeCredentials(walletId, revokeCredentialsInput)

Revoke Credentials.

Update index/credential at appropriate revocation list (set revoked is true).

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkWalletsClient().getRevocationApi();
final String walletId = walletId_example; // String | id of the wallet
final RevokeCredentialsInput revokeCredentialsInput = ; // RevokeCredentialsInput | RevokeCredentials

try {
    api.revokeCredentials(walletId, revokeCredentialsInput);
} catch on DioException (e) {
    print('Exception when calling RevocationApi->revokeCredentials: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description       | Notes |
| -------------------------- | ------------------------------------------------------- | ----------------- | ----- |
| **walletId**               | **String**                                              | id of the wallet  |
| **revokeCredentialsInput** | [**RevokeCredentialsInput**](RevokeCredentialsInput.md) | RevokeCredentials |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
