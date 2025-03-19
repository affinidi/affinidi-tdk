# AccountsApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                            | HTTP request                           | Description |
| ------------------------------------------------- | -------------------------------------- | ----------- |
| [**deleteAccount**](AccountsApi.md#deleteAccount) | **DELETE** /v1/accounts/{accountIndex} |             |
| [**listAccounts**](AccountsApi.md#listAccounts)   | **GET** /v1/accounts                   |             |

<a name="deleteAccount"></a>

# **deleteAccount**

> DeleteAccountDto deleteAccount(accountIndex)

    Delete account.

### Parameters

| Name             | Type        | Description | Notes             |
| ---------------- | ----------- | ----------- | ----------------- |
| **accountIndex** | **Integer** |             | [default to null] |

### Return type

[**DeleteAccountDto**](../Models/DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listAccounts"></a>

# **listAccounts**

> ListAccountsDto listAccounts(limit, exclusiveStartKey)

    List accounts of associated profiles.

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of accounts to fetch in a list                                                                                                                  | [optional] [default to 50]   |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ListAccountsDto**](../Models/ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
