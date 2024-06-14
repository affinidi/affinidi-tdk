# WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                            | HTTP request                                    | Description |
| ------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createWallet**](WalletApi.md#createWallet)     | **POST** /v1/wallets                            |             |
| [**deleteWallet**](WalletApi.md#deleteWallet)     | **DELETE** /v1/wallets/{walletId}               |             |
| [**getWallet**](WalletApi.md#getWallet)           | **GET** /v1/wallets/{walletId}                  |             |
| [**listWallets**](WalletApi.md#listWallets)       | **GET** /v1/wallets                             |             |
| [**signCredential**](WalletApi.md#signCredential) | **POST** /v1/wallets/{walletId}/sign-credential |             |
| [**signJwtToken**](WalletApi.md#signJwtToken)     | **POST** /v1/wallets/{walletId}/sign-jwt        |             |
| [**updateWallet**](WalletApi.md#updateWallet)     | **PATCH** /v1/wallets/{walletId}                |             |

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

<a name="deleteWallet"></a>

# **deleteWallet**

> deleteWallet(walletId)

    delete wallet by walletId

### Parameters

| Name         | Type       | Description      | Notes             |
| ------------ | ---------- | ---------------- | ----------------- |
| **walletId** | **String** | id of the wallet | [default to null] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

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

<a name="signJwtToken"></a>

# **signJwtToken**

> SignJwtTokenOK signJwtToken(walletId, SignJwtToken)

    signs a jwt token with the wallet

### Parameters

| Name             | Type                                          | Description       | Notes             |
| ---------------- | --------------------------------------------- | ----------------- | ----------------- |
| **walletId**     | **String**                                    | id of the wallet. | [default to null] |
| **SignJwtToken** | [**SignJwtToken**](../Models/SignJwtToken.md) | SignJwtToken      |                   |

### Return type

[**SignJwtTokenOK**](../Models/SignJwtTokenOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="updateWallet"></a>

# **updateWallet**

> WalletDto updateWallet(walletId, UpdateWalletInput)

    update wallet details using wallet Id.

### Parameters

| Name                  | Type                                                    | Description      | Notes             |
| --------------------- | ------------------------------------------------------- | ---------------- | ----------------- |
| **walletId**          | **String**                                              | id of the wallet | [default to null] |
| **UpdateWalletInput** | [**UpdateWalletInput**](../Models/UpdateWalletInput.md) | UpdateWallet     |                   |

### Return type

[**WalletDto**](../Models/WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
