# AccountsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                            | HTTP request                   | Description |
| ------------------------------------------------- | ------------------------------ | ----------- |
| [**listAccountPasskeys**](#listaccountpasskeys)   | **GET** /v1/accounts/passkeys  |             |
| [**listAccountProviders**](#listaccountproviders) | **GET** /v1/accounts/providers |             |

# **listAccountPasskeys**

> PasskeyList listAccountPasskeys()

### Example

```typescript
import { AccountsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

const { status, data } = await apiInstance.listAccountPasskeys()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**PasskeyList**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                       | Response headers                                                                           |
| ----------- | ------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **200**     | Registered passkeys for the authenticated account | \* Cache-Control - Always no-store; account authentication methods must not be cached <br> |
| **403**     | ForbiddenError                                    | -                                                                                          |
| **404**     | NotFoundError                                     | -                                                                                          |
| **422**     | UnprocessableEntity                               | -                                                                                          |
| **424**     | FailedDependencyError                             | -                                                                                          |
| **500**     | UnexpectedError                                   | -                                                                                          |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccountProviders**

> ProviderList listAccountProviders()

### Example

```typescript
import { AccountsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

const { status, data } = await apiInstance.listAccountProviders()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**ProviderList**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                                        | Response headers                                                                           |
| ----------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| **200**     | Linked and unlinked social providers for the authenticated account | \* Cache-Control - Always no-store; account authentication methods must not be cached <br> |
| **403**     | ForbiddenError                                                     | -                                                                                          |
| **404**     | NotFoundError                                                      | -                                                                                          |
| **422**     | UnprocessableEntity                                                | -                                                                                          |
| **424**     | FailedDependencyError                                              | -                                                                                          |
| **500**     | UnexpectedError                                                    | -                                                                                          |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
