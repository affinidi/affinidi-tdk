# WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                            | HTTP request                                            | Description |
| ------------------------------------------------- | ------------------------------------------------------- | ----------- |
| [**createWallet**](#createwallet)                 | **POST** /v1/wallets                                    |             |
| [**deleteWallet**](#deletewallet)                 | **DELETE** /v1/wallets/{walletId}                       |             |
| [**getWallet**](#getwallet)                       | **GET** /v1/wallets/{walletId}                          |             |
| [**listWallets**](#listwallets)                   | **GET** /v1/wallets                                     |             |
| [**signCredential**](#signcredential)             | **POST** /v1/wallets/{walletId}/sign-credential         |             |
| [**signCredentialsJwt**](#signcredentialsjwt)     | **POST** /v2/wallets/{walletId}/credentials/jwt/sign    |             |
| [**signCredentialsLdp**](#signcredentialsldp)     | **POST** /v2/wallets/{walletId}/credentials/ldp/sign    |             |
| [**signCredentialsSdJwt**](#signcredentialssdjwt) | **POST** /v2/wallets/{walletId}/credentials/sd-jwt/sign |             |
| [**signJwtToken**](#signjwttoken)                 | **POST** /v1/wallets/{walletId}/sign-jwt                |             |
| [**signPresentationsLdp**](#signpresentationsldp) | **POST** /v2/wallets/{walletId}/presentations/ldp/sign  |             |
| [**updateWallet**](#updatewallet)                 | **PATCH** /v1/wallets/{walletId}                        |             |

# **createWallet**

> CreateWalletResponse createWallet()

creates a wallet

### Example

```typescript
import {
  WalletApi,
  Configuration,
  CreateWalletInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let createWalletInput: CreateWalletInput //CreateWallet (optional)

const { status, data } = await apiInstance.createWallet(createWalletInput)
```

### Parameters

| Name                  | Type                  | Description  | Notes |
| --------------------- | --------------------- | ------------ | ----- |
| **createWalletInput** | **CreateWalletInput** | CreateWallet |       |

### Return type

**CreateWalletResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **201**     | Created        | -                |
| **403**     | ForbiddenError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteWallet**

> deleteWallet()

delete wallet by walletId

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)

const { status, data } = await apiInstance.deleteWallet(walletId)
```

### Parameters

| Name         | Type         | Description      | Notes                 |
| ------------ | ------------ | ---------------- | --------------------- |
| **walletId** | [**string**] | id of the wallet | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **204**     | Deleted     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWallet**

> WalletDto getWallet()

get wallet details using wallet Id.

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)

const { status, data } = await apiInstance.getWallet(walletId)
```

### Parameters

| Name         | Type         | Description      | Notes                 |
| ------------ | ------------ | ---------------- | --------------------- |
| **walletId** | [**string**] | id of the wallet | defaults to undefined |

### Return type

**WalletDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWallets**

> WalletsListDto listWallets()

lists all wallets

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let didType: 'WEB' | 'KEY' // (optional) (default to undefined)

const { status, data } = await apiInstance.listWallets(didType)
```

### Parameters

| Name        | Type               | Description                                                     | Notes |
| ----------- | ------------------ | --------------------------------------------------------------- | ----- | -------------------------------- |
| **didType** | [\*\*&#39;WEB&#39; | &#39;KEY&#39;**]**Array<&#39;WEB&#39; &#124; &#39;KEY&#39;>\*\* |       | (optional) defaults to undefined |

### Return type

**WalletsListDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCredential**

> SignCredentialResultDto signCredential(signCredentialInputDto)

signs credential with the wallet

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignCredentialInputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signCredentialInputDto: SignCredentialInputDto //SignCredential

const { status, data } = await apiInstance.signCredential(
  walletId,
  signCredentialInputDto,
)
```

### Parameters

| Name                       | Type                       | Description      | Notes                 |
| -------------------------- | -------------------------- | ---------------- | --------------------- |
| **signCredentialInputDto** | **SignCredentialInputDto** | SignCredential   |                       |
| **walletId**               | [**string**]               | id of the wallet | defaults to undefined |

### Return type

**SignCredentialResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCredentialsJwt**

> SignCredentialsJwtResultDto signCredentialsJwt(signCredentialsJwtInputDto)

signs credential with the wallet v2

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignCredentialsJwtInputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signCredentialsJwtInputDto: SignCredentialsJwtInputDto //signCredentialsJwt

const { status, data } = await apiInstance.signCredentialsJwt(
  walletId,
  signCredentialsJwtInputDto,
)
```

### Parameters

| Name                           | Type                           | Description        | Notes                 |
| ------------------------------ | ------------------------------ | ------------------ | --------------------- |
| **signCredentialsJwtInputDto** | **SignCredentialsJwtInputDto** | signCredentialsJwt |                       |
| **walletId**                   | [**string**]                   | id of the wallet   | defaults to undefined |

### Return type

**SignCredentialsJwtResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCredentialsLdp**

> SignCredentialsLdpResultDto signCredentialsLdp(signCredentialsLdpInputDto)

signs credential with the wallet v2

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignCredentialsLdpInputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signCredentialsLdpInputDto: SignCredentialsLdpInputDto //signCredentialsLdp

const { status, data } = await apiInstance.signCredentialsLdp(
  walletId,
  signCredentialsLdpInputDto,
)
```

### Parameters

| Name                           | Type                           | Description        | Notes                 |
| ------------------------------ | ------------------------------ | ------------------ | --------------------- |
| **signCredentialsLdpInputDto** | **SignCredentialsLdpInputDto** | signCredentialsLdp |                       |
| **walletId**                   | [**string**]                   | id of the wallet   | defaults to undefined |

### Return type

**SignCredentialsLdpResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signCredentialsSdJwt**

> SignCredentialsDm2SdJwtResultDto signCredentialsSdJwt(signCredentialsDm2SdJwtInputDto)

signs credential with the wallet v2

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignCredentialsDm2SdJwtInputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signCredentialsDm2SdJwtInputDto: SignCredentialsDm2SdJwtInputDto //SignCredentialsDm1SdJwt

const { status, data } = await apiInstance.signCredentialsSdJwt(
  walletId,
  signCredentialsDm2SdJwtInputDto,
)
```

### Parameters

| Name                                | Type                                | Description             | Notes                 |
| ----------------------------------- | ----------------------------------- | ----------------------- | --------------------- |
| **signCredentialsDm2SdJwtInputDto** | **SignCredentialsDm2SdJwtInputDto** | SignCredentialsDm1SdJwt |                       |
| **walletId**                        | [**string**]                        | id of the wallet        | defaults to undefined |

### Return type

**SignCredentialsDm2SdJwtResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signJwtToken**

> SignJwtTokenOK signJwtToken(signJwtToken)

signs a jwt token with the wallet

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignJwtToken,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet. (default to undefined)
let signJwtToken: SignJwtToken //SignJwtToken

const { status, data } = await apiInstance.signJwtToken(walletId, signJwtToken)
```

### Parameters

| Name             | Type             | Description       | Notes                 |
| ---------------- | ---------------- | ----------------- | --------------------- |
| **signJwtToken** | **SignJwtToken** | SignJwtToken      |                       |
| **walletId**     | [**string**]     | id of the wallet. | defaults to undefined |

### Return type

**SignJwtTokenOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | SignJwtTokenOK  | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signPresentationsLdp**

> SignPresentationLdpResultDto signPresentationsLdp(signPresentationLdpInputDto)

signs presentation with the wallet

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignPresentationLdpInputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signPresentationLdpInputDto: SignPresentationLdpInputDto //signPresentationLdp

const { status, data } = await apiInstance.signPresentationsLdp(
  walletId,
  signPresentationLdpInputDto,
)
```

### Parameters

| Name                            | Type                            | Description         | Notes                 |
| ------------------------------- | ------------------------------- | ------------------- | --------------------- |
| **signPresentationLdpInputDto** | **SignPresentationLdpInputDto** | signPresentationLdp |                       |
| **walletId**                    | [**string**]                    | id of the wallet    | defaults to undefined |

### Return type

**SignPresentationLdpResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateWallet**

> WalletDto updateWallet(updateWalletInput)

update wallet details using wallet Id.

### Example

```typescript
import {
  WalletApi,
  Configuration,
  UpdateWalletInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let updateWalletInput: UpdateWalletInput //UpdateWallet

const { status, data } = await apiInstance.updateWallet(
  walletId,
  updateWalletInput,
)
```

### Parameters

| Name                  | Type                  | Description      | Notes                 |
| --------------------- | --------------------- | ---------------- | --------------------- |
| **updateWalletInput** | **UpdateWalletInput** | UpdateWallet     |                       |
| **walletId**          | [**string**]          | id of the wallet | defaults to undefined |

### Return type

**WalletDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
