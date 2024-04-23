# WalletApi

All URIs are relative to _http://localhost_

| Method                                            | HTTP request                                    | Description |
| ------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createWallet**](WalletApi.md#createWallet)     | **POST** /v1/wallets                            |             |
| [**getWallet**](WalletApi.md#getWallet)           | **GET** /v1/wallets/{walletId}                  |             |
| [**listWallets**](WalletApi.md#listWallets)       | **GET** /v1/wallets                             |             |
| [**signCredential**](WalletApi.md#signCredential) | **POST** /v1/wallets/{walletId}/sign-credential |             |

<a name="createWallet"></a>

# **createWallet**

> CreateWalletResponse createWallet(CreateWalletInput)

    creates a wallet

### Parameters

| Name                  | Type                                                    | Description  | Notes      |
| --------------------- | ------------------------------------------------------- | ------------ | ---------- |
| **CreateWalletInput** | [**CreateWalletInput**](../Models/CreateWalletInput.md) | CreateWallet | [optional] |

### Return type

[**CreateWalletResponse**](../Models/CreateWalletResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getWallet"></a>

# **getWallet**

> WalletDto getWallet(walletId)

    get wallet details using wallet Id.

### Parameters

| Name         | Type       | Description      | Notes             |
| ------------ | ---------- | ---------------- | ----------------- |
| **walletId** | **String** | id of the wallet | [default to null] |

### Return type

[**WalletDto**](../Models/WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listWallets"></a>

# **listWallets**

> WalletsListDto listWallets()

    lists all wallets

### Parameters

This endpoint does not need any parameter.

### Return type

[**WalletsListDto**](../Models/WalletsListDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="signCredential"></a>

# **signCredential**

> SignCredentialResultDto signCredential(walletId, SignCredentialInputDto)

    signs credential with the wallet

### Parameters

| Name                       | Type                                                              | Description      | Notes             |
| -------------------------- | ----------------------------------------------------------------- | ---------------- | ----------------- |
| **walletId**               | **String**                                                        | id of the wallet | [default to null] |
| **SignCredentialInputDto** | [**SignCredentialInputDto**](../Models/SignCredentialInputDto.md) | SignCredential   |                   |

### Return type

[**SignCredentialResultDto**](../Models/SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
