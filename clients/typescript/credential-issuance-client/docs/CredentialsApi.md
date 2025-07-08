# CredentialsApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                | HTTP request                                                                                | Description                                           |
| --------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [**batchCredential**](#batchcredential)                               | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| [**generateCredentials**](#generatecredentials)                       | **POST** /v1/{projectId}/credential                                                         |                                                       |
| [**getClaimedCredentials**](#getclaimedcredentials)                   | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| [**getIssuanceIdClaimedCredential**](#getissuanceidclaimedcredential) | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |

# **batchCredential**

> BatchCredentialResponse batchCredential(batchCredentialInput)

Allows wallets to claim multiple credentials at once. For authentication, it uses a token from the authorization server

### Example

```typescript
import {
  CredentialsApi,
  Configuration,
  BatchCredentialInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new CredentialsApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let batchCredentialInput: BatchCredentialInput //Request body for batch credential

const { status, data } = await apiInstance.batchCredential(
  projectId,
  batchCredentialInput,
)
```

### Parameters

| Name                     | Type                     | Description                       | Notes                 |
| ------------------------ | ------------------------ | --------------------------------- | --------------------- |
| **batchCredentialInput** | **BatchCredentialInput** | Request body for batch credential |                       |
| **projectId**            | [**string**]             | Affinidi project id               | defaults to undefined |

### Return type

**BatchCredentialResponse**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers                                                                                                  |
| ----------- | ----------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generateCredentials**

> CredentialResponse generateCredentials(createCredentialInput)

Issue credential for end user upon presentation a valid access token. Since we don\'t immediate issue credential It\'s expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```typescript
import {
  CredentialsApi,
  Configuration,
  CreateCredentialInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new CredentialsApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let createCredentialInput: CreateCredentialInput //Request body to issue credentials

const { status, data } = await apiInstance.generateCredentials(
  projectId,
  createCredentialInput,
)
```

### Parameters

| Name                      | Type                      | Description                       | Notes                 |
| ------------------------- | ------------------------- | --------------------------------- | --------------------- |
| **createCredentialInput** | **CreateCredentialInput** | Request body to issue credentials |                       |
| **projectId**             | [**string**]              | Affinidi project id               | defaults to undefined |

### Return type

**CredentialResponse**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClaimedCredentials**

> ClaimedCredentialListResponse getClaimedCredentials()

Get claimed credential in the specified range

### Example

```typescript
import {
  CredentialsApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new CredentialsApi(configuration)

let projectId: string //project id (default to undefined)
let configurationId: string //configuration id (default to undefined)
let rangeStartTime: string // (default to undefined)
let rangeEndTime: string // (optional) (default to undefined)
let exclusiveStartKey: string //exclusiveStartKey for retrieving the next batch of data. (optional) (default to undefined)
let limit: number // (optional) (default to 20)

const { status, data } = await apiInstance.getClaimedCredentials(
  projectId,
  configurationId,
  rangeStartTime,
  rangeEndTime,
  exclusiveStartKey,
  limit,
)
```

### Parameters

| Name                  | Type         | Description                                              | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------- | -------------------------------- |
| **projectId**         | [**string**] | project id                                               | defaults to undefined            |
| **configurationId**   | [**string**] | configuration id                                         | defaults to undefined            |
| **rangeStartTime**    | [**string**] |                                                          | defaults to undefined            |
| **rangeEndTime**      | [**string**] |                                                          | (optional) defaults to undefined |
| **exclusiveStartKey** | [**string**] | exclusiveStartKey for retrieving the next batch of data. | (optional) defaults to undefined |
| **limit**             | [**number**] |                                                          | (optional) defaults to 20        |

### Return type

**ClaimedCredentialListResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIssuanceIdClaimedCredential**

> ClaimedCredentialResponse getIssuanceIdClaimedCredential()

Get claimed VC linked to the issuanceId

### Example

```typescript
import {
  CredentialsApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new CredentialsApi(configuration)

let projectId: string //project id (default to undefined)
let configurationId: string //configuration id (default to undefined)
let issuanceId: string //issuance id (default to undefined)

const { status, data } = await apiInstance.getIssuanceIdClaimedCredential(
  projectId,
  configurationId,
  issuanceId,
)
```

### Parameters

| Name                | Type         | Description      | Notes                 |
| ------------------- | ------------ | ---------------- | --------------------- |
| **projectId**       | [**string**] | project id       | defaults to undefined |
| **configurationId** | [**string**] | configuration id | defaults to undefined |
| **issuanceId**      | [**string**] | issuance id      | defaults to undefined |

### Return type

**ClaimedCredentialResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
