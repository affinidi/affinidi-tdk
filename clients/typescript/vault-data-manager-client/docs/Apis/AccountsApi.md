# AccountsApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                            | HTTP request                            | Description |
| ------------------------------------------------- | --------------------------------------- | ----------- |
| [**deleteAccount**](AccountsApi.md#deleteAccount) | **DELETE** /v1/accounts/{accountNumber} |             |
| [**listAccounts**](AccountsApi.md#listAccounts)   | **GET** /v1/accounts                    |             |

<a name="deleteAccount"></a>

# **deleteAccount**

> DeleteAccountDto deleteAccount(accountNumber)

    Delete account.

### Parameters

| Name              | Type       | Description | Notes             |
| ----------------- | ---------- | ----------- | ----------------- |
| **accountNumber** | **String** |             | [default to null] |

### Return type

[**DeleteAccountDto**](../Models/DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listAccounts"></a>

# **listAccounts**

> ListAccountsDto listAccounts()

    List accounts of associated profiles.

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountsDto**](../Models/ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
