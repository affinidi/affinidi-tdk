# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                  | HTTP request                                                                            | Description               |
| ------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| [**changeCredentialStatus**](#changecredentialstatus)   | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status. |
| [**listIssuanceDataRecords**](#listissuancedatarecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records              |

# **changeCredentialStatus**

> FlowData changeCredentialStatus(changeCredentialStatusInput)

change credential status.

### Example

```typescript
import {
  DefaultApi,
  Configuration,
  ChangeCredentialStatusInput,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let projectId: string //project id (default to undefined)
let configurationId: string //configuration id (default to undefined)
let changeCredentialStatusInput: ChangeCredentialStatusInput //Request body for changing credential status

const { status, data } = await apiInstance.changeCredentialStatus(
  projectId,
  configurationId,
  changeCredentialStatusInput,
)
```

### Parameters

| Name                            | Type                            | Description                                 | Notes                 |
| ------------------------------- | ------------------------------- | ------------------------------------------- | --------------------- |
| **changeCredentialStatusInput** | **ChangeCredentialStatusInput** | Request body for changing credential status |                       |
| **projectId**                   | [**string**]                    | project id                                  | defaults to undefined |
| **configurationId**             | [**string**]                    | configuration id                            | defaults to undefined |

### Return type

**FlowData**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | updated credential entity | -                |
| **400**     | BadRequestError           | -                |
| **404**     | NotFoundError             | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listIssuanceDataRecords**

> ListIssuanceRecordResponse listIssuanceDataRecords()

Retrieve a list of issuance data records.

### Example

```typescript
import {
  DefaultApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let configurationId: string //The id of the issuance configuration (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to 10)
let exclusiveStartKey: string //exclusiveStartKey for retrieving the next batch of data. (optional) (default to undefined)

const { status, data } = await apiInstance.listIssuanceDataRecords(
  projectId,
  configurationId,
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                              | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------- | -------------------------------- |
| **projectId**         | [**string**] | Affinidi project id                                      | defaults to undefined            |
| **configurationId**   | [**string**] | The id of the issuance configuration                     | defaults to undefined            |
| **limit**             | [**number**] | Maximum number of records to fetch in a list             | (optional) defaults to 10        |
| **exclusiveStartKey** | [**string**] | exclusiveStartKey for retrieving the next batch of data. | (optional) defaults to undefined |

### Return type

**ListIssuanceRecordResponse**

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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
