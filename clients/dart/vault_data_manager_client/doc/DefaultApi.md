# affinidi_tdk_vault_data_manager_client.api.DefaultApi

## Load the API package

```dart
import 'package:affinidi_tdk_vault_data_manager_client/api.dart';
```

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                           | HTTP request          | Description |
| ------------------------------------------------ | --------------------- | ----------- |
| [**createAccount**](DefaultApi.md#createaccount) | **POST** /v1/accounts |

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

final api = AffinidiTdkVaultDataManagerClient().getDefaultApi();
final CreateAccountInput createAccountInput = ; // CreateAccountInput | CreateAccount

try {
    final response = api.createAccount(createAccountInput);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultApi->createAccount: $e\n');
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
