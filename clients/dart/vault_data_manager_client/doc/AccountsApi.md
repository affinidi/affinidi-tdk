# affinidi_tdk_vault_data_manager_client.api.AccountsApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                            | HTTP request                           | Description |
| ------------------------------------------------- | -------------------------------------- | ----------- |
| [**createAccount**](AccountsApi.md#createaccount) | **POST** /v1/accounts                  |
| [**deleteAccount**](AccountsApi.md#deleteaccount) | **DELETE** /v1/accounts/{accountIndex} |
| [**listAccounts**](AccountsApi.md#listaccounts)   | **GET** /v1/accounts                   |

# **createAccount**

> CreateAccountOK createAccount(createAccountInput)

creates account

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getAccountsApi();
final CreateAccountInput createAccountInput = ; // CreateAccountInput | CreateAccount

try {
    final response = api.createAccount(createAccountInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountsApi->createAccount: $e\n');
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **createAccountInput** | [**CreateAccountInput**](CreateAccountInput.md) | CreateAccount |

### Return type

[**CreateAccountOK**](CreateAccountOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccount**

> DeleteAccountDto deleteAccount(accountIndex)

Delete account.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getAccountsApi();
final int accountIndex = 56; // int |

try {
    final response = api.deleteAccount(accountIndex);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountsApi->deleteAccount: $e\n');
}
```

### Parameters

| Name             | Type    | Description | Notes |
| ---------------- | ------- | ----------- | ----- |
| **accountIndex** | **int** |             |

### Return type

[**DeleteAccountDto**](DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**

> ListAccountsDto listAccounts(limit, exclusiveStartKey)

List accounts of associated profiles.

### Example

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
// TODO Configure API key authorization: ConsumerTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ConsumerTokenAuth').apiKeyPrefix = 'Bearer';

final api = AffinidiTdkVaultDataManagerClient().getAccountsApi();
final int limit = 56; // int | Maximum number of accounts to fetch in a list
final String exclusiveStartKey = exclusiveStartKey_example; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.

try {
    final response = api.listAccounts(limit, exclusiveStartKey);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AccountsApi->listAccounts: $e\n');
}
```

### Parameters

| Name                  | Type       | Description                                                                                                                                                    | Notes                      |
| --------------------- | ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------- |
| **limit**             | **int**    | Maximum number of accounts to fetch in a list                                                                                                                  | [optional] [default to 50] |
| **exclusiveStartKey** | **String** | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                 |

### Return type

[**ListAccountsDto**](ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
