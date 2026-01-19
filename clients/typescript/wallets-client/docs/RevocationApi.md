# RevocationApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                              | HTTP request                                                                       | Description                        |
| ------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**getRevocationCredentialStatus**](#getrevocationcredentialstatus) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |                                    |
| [**getRevocationListCredential**](#getrevocationlistcredential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revokeCredential**](#revokecredential)                           | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| [**revokeCredentials**](#revokecredentials)                         | **POST** /v2/wallets/{walletId}/credentials/revoke                                 | Revoke Credentials.                |

# **getRevocationCredentialStatus**

> GetRevocationListCredentialResultDto getRevocationCredentialStatus()

Get revocation status list as RevocationListCredential

### Example

```typescript
import { RevocationApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new RevocationApi(configuration)

let projectId: string //Description for projectId. (default to undefined)
let walletId: string //Description for walletId. (default to undefined)
let statusId: string //Description for statusId. (default to undefined)

const { status, data } = await apiInstance.getRevocationCredentialStatus(
  projectId,
  walletId,
  statusId,
)
```

### Parameters

| Name          | Type         | Description                | Notes                 |
| ------------- | ------------ | -------------------------- | --------------------- |
| **projectId** | [**string**] | Description for projectId. | defaults to undefined |
| **walletId**  | [**string**] | Description for walletId.  | defaults to undefined |
| **statusId**  | [**string**] | Description for statusId.  | defaults to undefined |

### Return type

**GetRevocationListCredentialResultDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                     | Response headers |
| ----------- | ------------------------------- | ---------------- |
| **200**     | GetRevocationCredentialStatusOK | -                |
| **404**     | NotFoundError                   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRevocationListCredential**

> GetRevocationListCredentialResultDto getRevocationListCredential()

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

```typescript
import { RevocationApi, Configuration } from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new RevocationApi(configuration)

let listId: string // (default to undefined)
let walletId: string //id of the wallet (default to undefined)

const { status, data } = await apiInstance.getRevocationListCredential(
  listId,
  walletId,
)
```

### Parameters

| Name         | Type         | Description      | Notes                 |
| ------------ | ------------ | ---------------- | --------------------- |
| **listId**   | [**string**] |                  | defaults to undefined |
| **walletId** | [**string**] | id of the wallet | defaults to undefined |

### Return type

**GetRevocationListCredentialResultDto**

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

# **revokeCredential**

> revokeCredential(revokeCredentialInput)

Update index/credetial at appropriate revocation list (set revoken is true).

### Example

```typescript
import {
  RevocationApi,
  Configuration,
  RevokeCredentialInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new RevocationApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let revokeCredentialInput: RevokeCredentialInput //RevokeCredential

const { status, data } = await apiInstance.revokeCredential(
  walletId,
  revokeCredentialInput,
)
```

### Parameters

| Name                      | Type                      | Description      | Notes                 |
| ------------------------- | ------------------------- | ---------------- | --------------------- |
| **revokeCredentialInput** | **RevokeCredentialInput** | RevokeCredential |                       |
| **walletId**              | [**string**]              | id of the wallet | defaults to undefined |

### Return type

void (empty response body)

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

# **revokeCredentials**

> revokeCredentials(revokeCredentialsInput)

Update index/credential at appropriate revocation list (set revoked is true).

### Example

```typescript
import {
  RevocationApi,
  Configuration,
  RevokeCredentialsInput,
} from '@affinidi-tdk/wallets-client'

const configuration = new Configuration()
const apiInstance = new RevocationApi(configuration)

let walletId: string //id of the wallet (default to undefined)
let revokeCredentialsInput: RevokeCredentialsInput //RevokeCredentials

const { status, data } = await apiInstance.revokeCredentials(
  walletId,
  revokeCredentialsInput,
)
```

### Parameters

| Name                       | Type                       | Description       | Notes                 |
| -------------------------- | -------------------------- | ----------------- | --------------------- |
| **revokeCredentialsInput** | **RevokeCredentialsInput** | RevokeCredentials |                       |
| **walletId**               | [**string**]               | id of the wallet  | defaults to undefined |

### Return type

void (empty response body)

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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
