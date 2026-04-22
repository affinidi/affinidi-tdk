# AccountsApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                    | HTTP request                           | Description |
| --------------------------------------------------------- | -------------------------------------- | ----------- |
| [**createAccount**](#createaccount)                       | **POST** /v1/accounts                  |             |
| [**createAccountWithProfile**](#createaccountwithprofile) | **POST** /v1/accounts/profiles         |             |
| [**deleteAccount**](#deleteaccount)                       | **DELETE** /v1/accounts/{accountIndex} |             |
| [**listAccounts**](#listaccounts)                         | **GET** /v1/accounts                   |             |
| [**listProfiles**](#listprofiles)                         | **GET** /v1/accounts/profiles          |             |
| [**patchAccount**](#patchaccount)                         | **PATCH** /v1/accounts/{accountIndex}  |             |
| [**updateAccount**](#updateaccount)                       | **PUT** /v1/accounts/{accountIndex}    |             |

# **createAccount**

> CreateAccountOK createAccount(createAccountInput)

creates account

### Example

```typescript
import {
  AccountsApi,
  Configuration,
  CreateAccountInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let createAccountInput: CreateAccountInput //CreateAccount

const { status, data } = await apiInstance.createAccount(createAccountInput)
```

### Parameters

| Name                   | Type                   | Description   | Notes |
| ---------------------- | ---------------------- | ------------- | ----- |
| **createAccountInput** | **CreateAccountInput** | CreateAccount |       |

### Return type

**CreateAccountOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccountWithProfile**

> CreateAccountWithProfileOK createAccountWithProfile(createAccountWithProfileInput)

creates account and corresponding profile at the same time

### Example

```typescript
import {
  AccountsApi,
  Configuration,
  CreateAccountWithProfileInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let createAccountWithProfileInput: CreateAccountWithProfileInput //CreateAccountWithProfile

const { status, data } = await apiInstance.createAccountWithProfile(
  createAccountWithProfileInput,
)
```

### Parameters

| Name                              | Type                              | Description              | Notes |
| --------------------------------- | --------------------------------- | ------------------------ | ----- |
| **createAccountWithProfileInput** | **CreateAccountWithProfileInput** | CreateAccountWithProfile |       |

### Return type

**CreateAccountWithProfileOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CreateAccountWithProfileOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAccount**

> DeleteAccountDto deleteAccount()

Delete account.

### Example

```typescript
import {
  AccountsApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let accountIndex: number // (default to undefined)

const { status, data } = await apiInstance.deleteAccount(accountIndex)
```

### Parameters

| Name             | Type         | Description | Notes                 |
| ---------------- | ------------ | ----------- | --------------------- |
| **accountIndex** | [**number**] |             | defaults to undefined |

### Return type

**DeleteAccountDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **202**     | DeleteAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAccounts**

> ListAccountsDto listAccounts()

List accounts of associated profiles.

### Example

```typescript
import {
  AccountsApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let limit: number //Maximum number of accounts to fetch in a list (optional) (default to 50)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listAccounts(
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **limit**             | [**number**] | Maximum number of accounts to fetch in a list                                                                                                                  | (optional) defaults to 50        |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ListAccountsDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListAccountsOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProfiles**

> ListProfilesOK listProfiles()

lists children of the root node with accounts

### Example

```typescript
import {
  AccountsApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

const { status, data } = await apiInstance.listProfiles()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**ListProfilesOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | ListProfilesOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patchAccount**

> UpdateAccountDto patchAccount(patchAccountInput)

Patch account.

### Example

```typescript
import {
  AccountsApi,
  Configuration,
  PatchAccountInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let accountIndex: number // (default to undefined)
let patchAccountInput: PatchAccountInput //PatchAccount

const { status, data } = await apiInstance.patchAccount(
  accountIndex,
  patchAccountInput,
)
```

### Parameters

| Name                  | Type                  | Description  | Notes                 |
| --------------------- | --------------------- | ------------ | --------------------- |
| **patchAccountInput** | **PatchAccountInput** | PatchAccount |                       |
| **accountIndex**      | [**number**]          |              | defaults to undefined |

### Return type

**UpdateAccountDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | PatchAccountOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccount**

> UpdateAccountDto updateAccount(updateAccountInput)

Update account.

### Example

```typescript
import {
  AccountsApi,
  Configuration,
  UpdateAccountInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new AccountsApi(configuration)

let accountIndex: number // (default to undefined)
let updateAccountInput: UpdateAccountInput //UpdateAccount

const { status, data } = await apiInstance.updateAccount(
  accountIndex,
  updateAccountInput,
)
```

### Parameters

| Name                   | Type                   | Description   | Notes                 |
| ---------------------- | ---------------------- | ------------- | --------------------- |
| **updateAccountInput** | **UpdateAccountInput** | UpdateAccount |                       |
| **accountIndex**       | [**number**]           |               | defaults to undefined |

### Return type

**UpdateAccountDto**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | UpdateAccountOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
