# affinidi_tdk_organizational_wallet_client.api.RevocationApi

## Load the API package

```dart
import 'package:affinidi_tdk_organizational_wallet_client/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                                                          | HTTP request                                            | Description                        |
| ------------------------------------------------------------------------------- | ------------------------------------------------------- | ---------------------------------- |
| [**getRevocationListCredential**](RevocationApi.md#getrevocationlistcredential) | **GET** /v1/wallets/{walletId}/revocation-list/{listId} | Return revocation list credential. |
| [**revokeCredential**](RevocationApi.md#revokecredential)                       | **POST** /v1/wallets/{walletId}/revoke                  | Revoke Credential.                 |

# **getRevocationListCredential**

> GetRevocationListCredentialResultDto getRevocationListCredential(listId, walletId)

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

```dart
import 'package:affinidi_tdk_organizational_wallet_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = RevocationApi();
final listId = listId_example; // String |
final walletId = walletId_example; // String | id of the wallet

try {
    final result = api_instance.getRevocationListCredential(listId, walletId);
    print(result);
} catch (e) {
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
import 'package:affinidi_tdk_organizational_wallet_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = RevocationApi();
final walletId = walletId_example; // String | id of the wallet
final revokeCredentialInput = RevokeCredentialInput(); // RevokeCredentialInput | RevokeCredential

try {
    api_instance.revokeCredential(walletId, revokeCredentialInput);
} catch (e) {
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
