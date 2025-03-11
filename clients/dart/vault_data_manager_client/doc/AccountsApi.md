# affinidi_tdk_vault_data_manager_client.api.AccountsApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                            | HTTP request                            | Description |
| ------------------------------------------------- | --------------------------------------- | ----------- |
| [**deleteAccount**](AccountsApi.md#deleteaccount) | **DELETE** /v1/accounts/{accountNumber} |
| [**listAccounts**](AccountsApi.md#listaccounts)   | **GET** /v1/accounts                    |

# **deleteAccount**

> DeleteAccountDto deleteAccount(accountNumber)

Delete account.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getAccountsApi();
final String accountNumber = accountNumber_example; // String |

try {
    final response = api.deleteAccount(accountNumber);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountsApi->deleteAccount: $e\n');
}
```

### Parameters

| Name              | Type       | Description | Notes |
| ----------------- | ---------- | ----------- | ----- |
| **accountNumber** | **String** |             |

### Return type

[**DeleteAccountDto**](DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**

> ListAccountsDto listAccounts()

List accounts of associated profiles.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getAccountsApi();

try {
    final response = api.listAccounts();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountsApi->listAccounts: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountsDto**](ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
