# DcqlQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                          | HTTP request                                                           | Description |
| ----------------------------------------------- | ---------------------------------------------------------------------- | ----------- |
| [**createDcqlQuery**](#createdcqlquery)         | **POST** /v1/configurations/{configurationId}/dcql-queries             |             |
| [**deleteDcqlQueryById**](#deletedcqlquerybyid) | **DELETE** /v1/configurations/{configurationId}/dcql-queries/{queryId} |             |
| [**getDcqlQueryById**](#getdcqlquerybyid)       | **GET** /v1/configurations/{configurationId}/dcql-queries/{queryId}    |             |
| [**listDcqlQueries**](#listdcqlqueries)         | **GET** /v1/configurations/{configurationId}/dcql-queries              |             |
| [**updateDcqlQueryById**](#updatedcqlquerybyid) | **PATCH** /v1/configurations/{configurationId}/dcql-queries/{queryId}  |             |

# **createDcqlQuery**

> DcqlQueryDto createDcqlQuery(createDcqlQueryInput)

Creates a new DCQL query in the configuration to query data.

### Example

```typescript
import {
  DcqlQueryApi,
  Configuration,
  CreateDcqlQueryInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DcqlQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let createDcqlQueryInput: CreateDcqlQueryInput //CreateDcqlQuery

const { status, data } = await apiInstance.createDcqlQuery(
  configurationId,
  createDcqlQueryInput,
)
```

### Parameters

| Name                     | Type                     | Description                                      | Notes                 |
| ------------------------ | ------------------------ | ------------------------------------------------ | --------------------- |
| **createDcqlQueryInput** | **CreateDcqlQueryInput** | CreateDcqlQuery                                  |                       |
| **configurationId**      | [**string**]             | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**DcqlQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **201**     | CreateDcqlQueryOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDcqlQueryById**

> deleteDcqlQueryById()

Deletes a DCQL query in the configuration by ID.

### Example

```typescript
import { DcqlQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DcqlQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)

const { status, data } = await apiInstance.deleteDcqlQueryById(
  configurationId,
  queryId,
)
```

### Parameters

| Name                | Type         | Description                                      | Notes                 |
| ------------------- | ------------ | ------------------------------------------------ | --------------------- |
| **configurationId** | [**string**] | ID of the Affinidi Iota Framework configuration. | defaults to undefined |
| **queryId**         | [**string**] | The ID of the query.                             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Deleted         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDcqlQueryById**

> DcqlQueryDto getDcqlQueryById()

Retrieves a DCQL query in the configuration by ID.

### Example

```typescript
import { DcqlQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DcqlQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)

const { status, data } = await apiInstance.getDcqlQueryById(
  configurationId,
  queryId,
)
```

### Parameters

| Name                | Type         | Description                                      | Notes                 |
| ------------------- | ------------ | ------------------------------------------------ | --------------------- |
| **configurationId** | [**string**] | ID of the Affinidi Iota Framework configuration. | defaults to undefined |
| **queryId**         | [**string**] | The ID of the query.                             | defaults to undefined |

### Return type

**DcqlQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers |
| ----------- | ------------------ | ---------------- |
| **200**     | GetDcqlQueryByIdOK | -                |
| **400**     | BadRequestError    | -                |
| **403**     | ForbiddenError     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listDcqlQueries**

> ListDcqlQueriesOK listDcqlQueries()

Lists all DCQL queries in the configuration.

### Example

```typescript
import { DcqlQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DcqlQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listDcqlQueries(
  configurationId,
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **configurationId**   | [**string**] | ID of the Affinidi Iota Framework configuration.                                                                                                               | defaults to undefined            |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to undefined |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ListDcqlQueriesOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | ListDcqlQueriesOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDcqlQueryById**

> DcqlQueryDto updateDcqlQueryById(updateDcqlQueryInput)

Updates the DCQL query in the configuration by ID.

### Example

```typescript
import {
  DcqlQueryApi,
  Configuration,
  UpdateDcqlQueryInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DcqlQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)
let updateDcqlQueryInput: UpdateDcqlQueryInput //UpdateDcqlQueryById

const { status, data } = await apiInstance.updateDcqlQueryById(
  configurationId,
  queryId,
  updateDcqlQueryInput,
)
```

### Parameters

| Name                     | Type                     | Description                                      | Notes                 |
| ------------------------ | ------------------------ | ------------------------------------------------ | --------------------- |
| **updateDcqlQueryInput** | **UpdateDcqlQueryInput** | UpdateDcqlQueryById                              |                       |
| **configurationId**      | [**string**]             | ID of the Affinidi Iota Framework configuration. | defaults to undefined |
| **queryId**              | [**string**]             | The ID of the query.                             | defaults to undefined |

### Return type

**DcqlQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | UpdateDcqlQueryByIdOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
