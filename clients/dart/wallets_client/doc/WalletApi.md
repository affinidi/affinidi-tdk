# affinidi_tdk_wallets_client.api.WalletApi

## Load the API package

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
```

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                            | HTTP request                                    | Description |
| ------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createWallet**](WalletApi.md#createwallet)     | **POST** /v1/wallets                            |
| [**deleteWallet**](WalletApi.md#deletewallet)     | **DELETE** /v1/wallets/{walletId}               |
| [**getWallet**](WalletApi.md#getwallet)           | **GET** /v1/wallets/{walletId}                  |
| [**listWallets**](WalletApi.md#listwallets)       | **GET** /v1/wallets                             |
| [**signCredential**](WalletApi.md#signcredential) | **POST** /v1/wallets/{walletId}/sign-credential |
| [**signJwtToken**](WalletApi.md#signjwttoken)     | **POST** /v1/wallets/{walletId}/sign-jwt        |
| [**updateWallet**](WalletApi.md#updatewallet)     | **PATCH** /v1/wallets/{walletId}                |

# **createWallet**

> CreateWalletResponse createWallet(createWalletInput)

creates a wallet

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
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

# **deleteWallet**

> deleteWallet(walletId)

delete wallet by walletId

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final walletId = walletId_example; // String | id of the wallet

try {
    api_instance.deleteWallet(walletId);
} catch (e) {
    print('Exception when calling WalletApi->deleteWallet: $e\n');
}
```

### Parameters

| Name         | Type       | Description      | Notes |
| ------------ | ---------- | ---------------- | ----- |
| **walletId** | **String** | id of the wallet |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWallet**

> WalletDto getWallet(walletId)

get wallet details using wallet Id.

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
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

> WalletsListDto listWallets(didType)

lists all wallets

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final didType = didType_example; // String |

try {
    final result = api_instance.listWallets(didType);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->listWallets: $e\n');
}
```

### Parameters

| Name        | Type       | Description | Notes      |
| ----------- | ---------- | ----------- | ---------- |
| **didType** | **String** |             | [optional] |

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
import 'package:affinidi_tdk_wallets_client/api.dart';
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

# **signJwtToken**

> SignJwtTokenOK signJwtToken(walletId, signJwtToken)

signs a jwt token with the wallet

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final walletId = walletId_example; // String | id of the wallet.
final signJwtToken = SignJwtToken(); // SignJwtToken | SignJwtToken

try {
    final result = api_instance.signJwtToken(walletId, signJwtToken);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->signJwtToken: $e\n');
}
```

### Parameters

| Name             | Type                                | Description       | Notes |
| ---------------- | ----------------------------------- | ----------------- | ----- |
| **walletId**     | **String**                          | id of the wallet. |
| **signJwtToken** | [**SignJwtToken**](SignJwtToken.md) | SignJwtToken      |

### Return type

[**SignJwtTokenOK**](SignJwtTokenOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWallet**

> WalletDto updateWallet(walletId, updateWalletInput)

update wallet details using wallet Id.

### Example

```dart
import 'package:affinidi_tdk_wallets_client/api.dart';
// TODO Configure API key authorization: ProjectTokenAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('ProjectTokenAuth').apiKeyPrefix = 'Bearer';

final api_instance = WalletApi();
final walletId = walletId_example; // String | id of the wallet
final updateWalletInput = UpdateWalletInput(); // UpdateWalletInput | UpdateWallet

try {
    final result = api_instance.updateWallet(walletId, updateWalletInput);
    print(result);
} catch (e) {
    print('Exception when calling WalletApi->updateWallet: $e\n');
}
```

### Parameters

| Name                  | Type                                          | Description      | Notes |
| --------------------- | --------------------------------------------- | ---------------- | ----- |
| **walletId**          | **String**                                    | id of the wallet |
| **updateWalletInput** | [**UpdateWalletInput**](UpdateWalletInput.md) | UpdateWallet     |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
