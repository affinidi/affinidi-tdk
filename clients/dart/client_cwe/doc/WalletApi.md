# affinidi_tdk_client_cwe.api.WalletApi

## Load the API package

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
```

All URIs are relative to _http://localhost_

| Method                                            | HTTP request                                    | Description |
| ------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createWallet**](WalletApi.md#createwallet)     | **POST** /v1/wallets                            |
| [**getWallet**](WalletApi.md#getwallet)           | **GET** /v1/wallets/{walletId}                  |
| [**listWallets**](WalletApi.md#listwallets)       | **GET** /v1/wallets                             |
| [**signCredential**](WalletApi.md#signcredential) | **POST** /v1/wallets/{walletId}/sign-credential |

# **createWallet**

> CreateWalletResponse createWallet(createWalletInput)

creates a wallet

### Example

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final createWalletInput = CreateWalletInput(); // CreateWalletInput | CreateWallet

try {
    final result = api_instance.createWallet(createWalletInput);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->createWallet: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description  | Notes      |
| --------------------- | --------------------------------------------- | ------------ | ---------- |
| **createWalletInput** | [**CreateWalletInput**](CreateWalletInput.md) | CreateWallet | [optional] |

### Return type

[**CreateWalletResponse**](CreateWalletResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWallet**

> WalletDto getWallet(walletId)

get wallet details using wallet Id.

### Example

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final walletId = walletId_example; // String | id of the wallet

try {
    final result = api_instance.getWallet(walletId);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->getWallet: $e\n');
}
```

### Parameters

| Name         | Type       | Description      | Notes |
| ------------ | ---------- | ---------------- | ----- |
| **walletId** | **String** | id of the wallet |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWallets**

> WalletsListDto listWallets()

lists all wallets

### Example

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();

try {
    final result = api_instance.listWallets();
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->listWallets: $e\n');
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletsListDto**](WalletsListDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCredential**

> SignCredentialResultDto signCredential(walletId, signCredentialInputDto)

signs credential with the wallet

### Example

```dart
import 'package:affinidi_tdk_client_cwe/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final walletId = walletId_example; // String | id of the wallet
final signCredentialInputDto = SignCredentialInputDto(); // SignCredentialInputDto | SignCredential

try {
    final result = api_instance.signCredential(walletId, signCredentialInputDto);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->signCredential: $e\n');
}
```

### Parameters

| Name                       | Type                                                    | Description      | Notes |
| -------------------------- | ------------------------------------------------------- | ---------------- | ----- |
| **walletId**               | **String**                                              | id of the wallet |
| **signCredentialInputDto** | [**SignCredentialInputDto**](SignCredentialInputDto.md) | SignCredential   |

### Return type

[**SignCredentialResultDto**](SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
