# WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                              | HTTP request                                            | Description |
| --------------------------------------------------- | ------------------------------------------------------- | ----------- |
| [**createServiceEndpoint**](#createserviceendpoint) | **POST** /v2/wallets/{walletId}/services                |             |
| [**createWallet**](#createwallet)                   | **POST** /v1/wallets                                    |             |
| [**createWalletKey**](#createwalletkey)             | **POST** /v2/wallets/{walletId}/keys                    |             |
| [**createWalletV2**](#createwalletv2)               | **POST** /v2/wallets                                    |             |
| [**deleteWallet**](#deletewallet)                   | **DELETE** /v1/wallets/{walletId}                       |             |
| [**getWallet**](#getwallet)                         | **GET** /v1/wallets/{walletId}                          |             |
| [**listServiceEndpoints**](#listserviceendpoints)   | **GET** /v2/wallets/{walletId}/services                 |             |
| [**listWalletKeys**](#listwalletkeys)               | **GET** /v2/wallets/{walletId}/keys                     |             |
| [**listWallets**](#listwallets)                     | **GET** /v1/wallets                                     |             |
| [**removeServiceEndpoint**](#removeserviceendpoint) | **DELETE** /v2/wallets/{walletId}/services/{serviceId}  |             |
| [**removeWalletKey**](#removewalletkey)             | **DELETE** /v2/wallets/{walletId}/keys/{keyId}          |             |
| [**signCredential**](#signcredential)               | **POST** /v1/wallets/{walletId}/sign-credential         |             |
| [**signCredentialsJwt**](#signcredentialsjwt)       | **POST** /v2/wallets/{walletId}/credentials/jwt/sign    |             |
| [**signCredentialsLdp**](#signcredentialsldp)       | **POST** /v2/wallets/{walletId}/credentials/ldp/sign    |             |
| [**signCredentialsSdJwt**](#signcredentialssdjwt)   | **POST** /v2/wallets/{walletId}/credentials/sd-jwt/sign |             |
| [**signJwtToken**](#signjwttoken)                   | **POST** /v1/wallets/{walletId}/sign-jwt                |             |
| [**signJwtV2**](#signjwtv2)                         | **POST** /v2/wallets/{walletId}/jwt/sign                | Sign JWT.   |
| [**signPresentationsLdp**](#signpresentationsldp)   | **POST** /v2/wallets/{walletId}/presentations/ldp/sign  |             |
| [**updateServiceEndpoint**](#updateserviceendpoint) | **PATCH** /v2/wallets/{walletId}/services/{serviceId}   |             |
| [**updateWallet**](#updatewallet)                   | **PATCH** /v1/wallets/{walletId}                        |             |
| [**updateWalletKey**](#updatewalletkey)             | **PATCH** /v2/wallets/{walletId}/keys/{keyId}           |             |

# **createServiceEndpoint**

> ServiceEndpointDto createServiceEndpoint(serviceEndpointInput)

Add service endpoint to wallet, this applies to did:web only

### Example

```typescript
import {
  WalletApi,
  Configuration,
  ServiceEndpointInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let serviceEndpointInput: ServiceEndpointInput //AddServiceEndpoint

const { status, data } = await apiInstance.createServiceEndpoint(
  walletId,
  serviceEndpointInput,
)
```

### Parameters

| Name                     | Type                     | Description        | Notes                 |
| ------------------------ | ------------------------ | ------------------ | --------------------- |
| **serviceEndpointInput** | **ServiceEndpointInput** | AddServiceEndpoint |                       |
| **walletId**             | [**string**]             | id of the wallet   | defaults to undefined |

### Return type

**ServiceEndpointDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **201**     | Service endpoint added | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **createWalletKey**

> WalletKeyDto createWalletKey(createWalletKeyInput)

Add a new key to the wallet, this applies to did:web only

### Example

```typescript
import {
  WalletApi,
  Configuration,
  CreateWalletKeyInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let createWalletKeyInput: CreateWalletKeyInput //CreateWalletKey

const { status, data } = await apiInstance.createWalletKey(
  walletId,
  createWalletKeyInput,
)
```

### Parameters

| Name                     | Type                     | Description      | Notes                 |
| ------------------------ | ------------------------ | ---------------- | --------------------- |
| **createWalletKeyInput** | **CreateWalletKeyInput** | CreateWalletKey  |                       |
| **walletId**             | [**string**]             | id of the wallet | defaults to undefined |

### Return type

**WalletKeyDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **201**     | Key added successfully | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createWalletV2**

> CreateWalletV2Response createWalletV2()

Create v2 wallet

### Example

```typescript
import {
  WalletApi,
  Configuration,
  CreateWalletV2Input,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let createWalletV2Input: CreateWalletV2Input //CreateWallet (optional)

const { status, data } = await apiInstance.createWalletV2(createWalletV2Input)
```

### Parameters

| Name                    | Type                    | Description  | Notes |
| ----------------------- | ----------------------- | ------------ | ----- |
| **createWalletV2Input** | **CreateWalletV2Input** | CreateWallet |       |

### Return type

**CreateWalletV2Response**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **201**     | OK             | -                |
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

# **listServiceEndpoints**

> ListServiceEndpointsOK listServiceEndpoints()

List service endpoints in wallet, this applies to did:web only

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)

const { status, data } = await apiInstance.listServiceEndpoints(walletId)
```

### Parameters

| Name         | Type         | Description      | Notes                 |
| ------------ | ------------ | ---------------- | --------------------- |
| **walletId** | [**string**] | id of the wallet | defaults to undefined |

### Return type

**ListServiceEndpointsOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | Service endpoints | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWalletKeys**

> ListWalletKeysOK listWalletKeys()

List all keys in the wallet, this applies to did:web only

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)

const { status, data } = await apiInstance.listWalletKeys(walletId)
```

### Parameters

| Name         | Type         | Description      | Notes                 |
| ------------ | ------------ | ---------------- | --------------------- |
| **walletId** | [**string**] | id of the wallet | defaults to undefined |

### Return type

**ListWalletKeysOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Wallet keys | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listWallets**

> WalletsListDto listWallets()

lists all wallets

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let didType: WalletDidType // (optional) (default to undefined)

const { status, data } = await apiInstance.listWallets(didType)
```

### Parameters

| Name        | Type              | Description | Notes                            |
| ----------- | ----------------- | ----------- | -------------------------------- |
| **didType** | **WalletDidType** |             | (optional) defaults to undefined |

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

# **removeServiceEndpoint**

> removeServiceEndpoint()

Remove service endpoint from wallet, this applies to did:web only

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let serviceId: string //id of the service endpoint to remove (default to undefined)

const { status, data } = await apiInstance.removeServiceEndpoint(
  walletId,
  serviceId,
)
```

### Parameters

| Name          | Type         | Description                          | Notes                 |
| ------------- | ------------ | ------------------------------------ | --------------------- |
| **walletId**  | [**string**] | id of the wallet                     | defaults to undefined |
| **serviceId** | [**string**] | id of the service endpoint to remove | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **204**     | Service endpoint removed | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeWalletKey**

> removeWalletKey()

Remove a key from the wallet, this applies to did:web only

### Example

```typescript
import { WalletApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let keyId: string //id of the key to remove (default to undefined)

const { status, data } = await apiInstance.removeWalletKey(walletId, keyId)
```

### Parameters

| Name         | Type         | Description             | Notes                 |
| ------------ | ------------ | ----------------------- | --------------------- |
| **walletId** | [**string**] | id of the wallet        | defaults to undefined |
| **keyId**    | [**string**] | id of the key to remove | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **204**     | Key removed successfully | -                |
| **400**     | BadRequestError          | -                |

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

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

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

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

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

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

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

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

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

# **signJwtV2**

> SignJwtV2ResultDto signJwtV2(signJwtV2InputDto)

Sign a JSON Web Token (JWT).

### Example

```typescript
import {
  WalletApi,
  Configuration,
  SignJwtV2InputDto,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let signJwtV2InputDto: SignJwtV2InputDto //SignJwtV2

const { status, data } = await apiInstance.signJwtV2(
  walletId,
  signJwtV2InputDto,
)
```

### Parameters

| Name                  | Type                  | Description      | Notes                 |
| --------------------- | --------------------- | ---------------- | --------------------- |
| **signJwtV2InputDto** | **SignJwtV2InputDto** | SignJwtV2        |                       |
| **walletId**          | [**string**]          | id of the wallet | defaults to undefined |

### Return type

**SignJwtV2ResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | SignJwtOK       | -                |
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

# **updateServiceEndpoint**

> ServiceEndpointDto updateServiceEndpoint(updateServiceEndpointInput)

Update service endpoint in wallet, this applies to did:web only

### Example

```typescript
import {
  WalletApi,
  Configuration,
  UpdateServiceEndpointInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let serviceId: string //id of the service endpoint to update (default to undefined)
let updateServiceEndpointInput: UpdateServiceEndpointInput //UpdateServiceEndpoint

const { status, data } = await apiInstance.updateServiceEndpoint(
  walletId,
  serviceId,
  updateServiceEndpointInput,
)
```

### Parameters

| Name                           | Type                           | Description                          | Notes                 |
| ------------------------------ | ------------------------------ | ------------------------------------ | --------------------- |
| **updateServiceEndpointInput** | **UpdateServiceEndpointInput** | UpdateServiceEndpoint                |                       |
| **walletId**                   | [**string**]                   | id of the wallet                     | defaults to undefined |
| **serviceId**                  | [**string**]                   | id of the service endpoint to update | defaults to undefined |

### Return type

**ServiceEndpointDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | Service endpoint updated | -                |

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

# **updateWalletKey**

> WalletKeyDto updateWalletKey(updateWalletKeyInput)

Update a wallet key\'s verification relationships, this applies to did:web only

### Example

```typescript
import {
  WalletApi,
  Configuration,
  UpdateWalletKeyInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new WalletApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let keyId: string //wallet-scoped key identifier to update (default to undefined)
let updateWalletKeyInput: UpdateWalletKeyInput //UpdateWalletKey

const { status, data } = await apiInstance.updateWalletKey(
  walletId,
  keyId,
  updateWalletKeyInput,
)
```

### Parameters

| Name                     | Type                     | Description                            | Notes                 |
| ------------------------ | ------------------------ | -------------------------------------- | --------------------- |
| **updateWalletKeyInput** | **UpdateWalletKeyInput** | UpdateWalletKey                        |                       |
| **walletId**             | [**string**]             | id of the wallet                       | defaults to undefined |
| **keyId**                | [**string**]             | wallet-scoped key identifier to update | defaults to undefined |

### Return type

**WalletKeyDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | Key updated successfully | -                |
| **400**     | BadRequestError          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
