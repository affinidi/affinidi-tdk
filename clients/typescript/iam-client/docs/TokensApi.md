# TokensApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                          | HTTP request                          | Description |
| ----------------------------------------------- | ------------------------------------- | ----------- |
| [**createToken**](#createtoken)                 | **POST** /v1/tokens                   |             |
| [**deleteToken**](#deletetoken)                 | **DELETE** /v1/tokens/{tokenId}       |             |
| [**getToken**](#gettoken)                       | **GET** /v1/tokens/{tokenId}          |             |
| [**listProjectsOfToken**](#listprojectsoftoken) | **GET** /v1/tokens/{tokenId}/projects |             |
| [**listToken**](#listtoken)                     | **GET** /v1/tokens                    |             |
| [**updateToken**](#updatetoken)                 | **PATCH** /v1/tokens/{tokenId}        |             |

# **createToken**

> TokenDto createToken(createTokenInput)

### Example

```typescript
import {
  TokensApi,
  Configuration,
  CreateTokenInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let createTokenInput: CreateTokenInput //CreateToken

const { status, data } = await apiInstance.createToken(createTokenInput)
```

### Parameters

| Name                 | Type                 | Description | Notes |
| -------------------- | -------------------- | ----------- | ----- |
| **createTokenInput** | **CreateTokenInput** | CreateToken |       |

### Return type

**TokenDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Created Token   | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteToken**

> deleteToken()

### Example

```typescript
import { TokensApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let tokenId: string // (default to undefined)

const { status, data } = await apiInstance.deleteToken(tokenId)
```

### Parameters

| Name        | Type         | Description | Notes                 |
| ----------- | ------------ | ----------- | --------------------- |
| **tokenId** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Token Deleted   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getToken**

> TokenDto getToken()

### Example

```typescript
import { TokensApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let tokenId: string // (default to undefined)

const { status, data } = await apiInstance.getToken(tokenId)
```

### Parameters

| Name        | Type         | Description | Notes                 |
| ----------- | ------------ | ----------- | --------------------- |
| **tokenId** | [**string**] |             | defaults to undefined |

### Return type

**TokenDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Token           | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProjectsOfToken**

> ProjectWithPolicyList listProjectsOfToken()

### Example

```typescript
import { TokensApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let tokenId: string // (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to 100)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listProjectsOfToken(
  tokenId,
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **tokenId**           | [**string**] |                                                                                                                                                                | defaults to undefined            |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to 100       |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ProjectWithPolicyList**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listToken**

> TokenList listToken()

### Example

```typescript
import { TokensApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let limit: number //Maximum number of records to fetch in a list (optional) (default to 100)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listToken(limit, exclusiveStartKey)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to 100       |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**TokenList**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | List of Tokens  | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateToken**

> TokenDto updateToken(updateTokenInput)

### Example

```typescript
import {
  TokensApi,
  Configuration,
  UpdateTokenInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new TokensApi(configuration)

let tokenId: string // (default to undefined)
let updateTokenInput: UpdateTokenInput //UpdateToken

const { status, data } = await apiInstance.updateToken(
  tokenId,
  updateTokenInput,
)
```

### Parameters

| Name                 | Type                 | Description | Notes                 |
| -------------------- | -------------------- | ----------- | --------------------- |
| **updateTokenInput** | **UpdateTokenInput** | UpdateToken |                       |
| **tokenId**          | [**string**]         |             | defaults to undefined |

### Return type

**TokenDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Updated Token   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
