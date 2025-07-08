# IssuanceApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                    | HTTP request                                        | Description |
| ----------------------------------------- | --------------------------------------------------- | ----------- |
| [**issuanceState**](#issuancestate)       | **GET** /v1/{projectId}/issuance/state/{issuanceId} |             |
| [**issueCredentials**](#issuecredentials) | **POST** /v1/{projectId}/credential/issue           |             |
| [**listIssuance**](#listissuance)         | **GET** /v1/{projectId}/issuance                    |             |
| [**startIssuance**](#startissuance)       | **POST** /v1/{projectId}/issuance/start             |             |

# **issuanceState**

> IssuanceStateResponse issuanceState()

Get issuance status

### Example

```typescript
import {
  IssuanceApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new IssuanceApi(configuration)

let issuanceId: string // (default to undefined)
let projectId: string //Affinidi project id (default to undefined)

const { status, data } = await apiInstance.issuanceState(issuanceId, projectId)
```

### Parameters

| Name           | Type         | Description         | Notes                 |
| -------------- | ------------ | ------------------- | --------------------- |
| **issuanceId** | [**string**] |                     | defaults to undefined |
| **projectId**  | [**string**] | Affinidi project id | defaults to undefined |

### Return type

**IssuanceStateResponse**

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

# **issueCredentials**

> CredentialResponse issueCredentials(startIssuanceInput)

Endpoint to issue credentials directly without following OID4VCI flow

### Example

```typescript
import {
  IssuanceApi,
  Configuration,
  StartIssuanceInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new IssuanceApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let startIssuanceInput: StartIssuanceInput //Request body to start issuance

const { status, data } = await apiInstance.issueCredentials(
  projectId,
  startIssuanceInput,
)
```

### Parameters

| Name                   | Type                   | Description                    | Notes                 |
| ---------------------- | ---------------------- | ------------------------------ | --------------------- |
| **startIssuanceInput** | **StartIssuanceInput** | Request body to start issuance |                       |
| **projectId**          | [**string**]           | Affinidi project id            | defaults to undefined |

### Return type

**CredentialResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | -                                                                                                                 |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIssuance**

> ListIssuanceResponse listIssuance()

List all issuances for Project

### Example

```typescript
import {
  IssuanceApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new IssuanceApi(configuration)

let projectId: string //Affinidi project id (default to undefined)

const { status, data } = await apiInstance.listIssuance(projectId)
```

### Parameters

| Name          | Type         | Description         | Notes                 |
| ------------- | ------------ | ------------------- | --------------------- |
| **projectId** | [**string**] | Affinidi project id | defaults to undefined |

### Return type

**ListIssuanceResponse**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **200**     | Ok             | -                |
| **403**     | ForbiddenError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **startIssuance**

> StartIssuanceResponse startIssuance(startIssuanceInput)

Endpoint used b websites to start the issuance process

### Example

```typescript
import {
  IssuanceApi,
  Configuration,
  StartIssuanceInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new IssuanceApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let startIssuanceInput: StartIssuanceInput //Request body to start issuance

const { status, data } = await apiInstance.startIssuance(
  projectId,
  startIssuanceInput,
)
```

### Parameters

| Name                   | Type                   | Description                    | Notes                 |
| ---------------------- | ---------------------- | ------------------------------ | --------------------- |
| **startIssuanceInput** | **StartIssuanceInput** | Request body to start issuance |                       |
| **projectId**          | [**string**]           | Affinidi project id            | defaults to undefined |

### Return type

**StartIssuanceResponse**

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
