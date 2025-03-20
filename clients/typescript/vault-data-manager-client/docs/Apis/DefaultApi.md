# DefaultApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                           | HTTP request          | Description |
| ------------------------------------------------ | --------------------- | ----------- |
| [**createAccount**](DefaultApi.md#createAccount) | **POST** /v1/accounts |             |

<a name="createAccount"></a>

# **createAccount**

> CreateAccountOK createAccount(CreateAccountInput)

    creates account

### Parameters

| Name                   | Type                                                      | Description   | Notes |
| ---------------------- | --------------------------------------------------------- | ------------- | ----- |
| **CreateAccountInput** | [**CreateAccountInput**](../Models/CreateAccountInput.md) | CreateAccount |       |

### Return type

[**CreateAccountOK**](../Models/CreateAccountOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
