# PexQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                        | HTTP request                                                          | Description |
| --------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery**](#createpexquery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |             |
| [**deletePexQueries**](#deletepexqueries)     | **POST** /v1/configurations/{configurationId}/delete-queries          |             |
| [**deletePexQueryById**](#deletepexquerybyid) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |             |
| [**getPexQueryById**](#getpexquerybyid)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |             |
| [**listPexQueries**](#listpexqueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |             |
| [**savePexQueries**](#savepexqueries)         | **POST** /v1/configurations/{configurationId}/save-queries            |             |
| [**updatePexQueryById**](#updatepexquerybyid) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |             |

# **createPexQuery**

> PexQueryDto createPexQuery(createPexQueryInput)

Creates a new Presentation Definition in the configuration to query data.

### Example

```typescript
import {
  PexQueryApi,
  Configuration,
  CreatePexQueryInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let createPexQueryInput: CreatePexQueryInput //CreatePexQuery

const { status, data } = await apiInstance.createPexQuery(
  configurationId,
  createPexQueryInput,
)
```

### Parameters

| Name                    | Type                    | Description                                      | Notes                 |
| ----------------------- | ----------------------- | ------------------------------------------------ | --------------------- |
| **createPexQueryInput** | **CreatePexQueryInput** | CreatePexQuery                                   |                       |
| **configurationId**     | [**string**]            | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**PexQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **201**     | CreatePexQueryOK    | -                |
| **400**     | BadRequestError     | -                |
| **403**     | ForbiddenError      | -                |
| **404**     | NotFoundError       | -                |
| **409**     | ConflictError       | -                |
| **422**     | UnprocessableEntity | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePexQueries**

> object deletePexQueries(deletePexQueriesInput)

Deletes all Presentation Definition queries of a configuration.

### Example

```typescript
import {
  PexQueryApi,
  Configuration,
  DeletePexQueriesInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let deletePexQueriesInput: DeletePexQueriesInput //DeletePexQueriesInput

const { status, data } = await apiInstance.deletePexQueries(
  configurationId,
  deletePexQueriesInput,
)
```

### Parameters

| Name                      | Type                      | Description                                      | Notes                 |
| ------------------------- | ------------------------- | ------------------------------------------------ | --------------------- |
| **deletePexQueriesInput** | **DeletePexQueriesInput** | DeletePexQueriesInput                            |                       |
| **configurationId**       | [**string**]              | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | BulkDeleteResponseOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePexQueryById**

> deletePexQueryById()

Deletes a Presentation Definition in the configuration by ID.

### Example

```typescript
import { PexQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)

const { status, data } = await apiInstance.deletePexQueryById(
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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPexQueryById**

> PexQueryDto getPexQueryById()

Retrieves a Presentation Definition in the configuration by ID.

### Example

```typescript
import { PexQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)

const { status, data } = await apiInstance.getPexQueryById(
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

**PexQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | GetPexQueryByIdOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |
| **404**     | NotFoundError     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPexQueries**

> ListPexQueriesOK listPexQueries()

Lists all Presentation Definitions in the configuration.

### Example

```typescript
import { PexQueryApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listPexQueries(
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

**ListPexQueriesOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description      | Response headers |
| ----------- | ---------------- | ---------------- |
| **200**     | ListPexQueriesOK | -                |
| **400**     | BadRequestError  | -                |
| **403**     | ForbiddenError   | -                |
| **404**     | NotFoundError    | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **savePexQueries**

> object savePexQueries(savePexQueriesUpdateInput)

Saves all Presentation Definition queries of a configuration.

### Example

```typescript
import {
  PexQueryApi,
  Configuration,
  SavePexQueriesUpdateInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let savePexQueriesUpdateInput: SavePexQueriesUpdateInput //SavePexQueriesInput

const { status, data } = await apiInstance.savePexQueries(
  configurationId,
  savePexQueriesUpdateInput,
)
```

### Parameters

| Name                          | Type                          | Description                                      | Notes                 |
| ----------------------------- | ----------------------------- | ------------------------------------------------ | --------------------- |
| **savePexQueriesUpdateInput** | **SavePexQueriesUpdateInput** | SavePexQueriesInput                              |                       |
| **configurationId**           | [**string**]                  | ID of the Affinidi Iota Framework configuration. | defaults to undefined |

### Return type

**object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | SavePexQueriesResponseOK | -                |
| **400**     | BadRequestError          | -                |
| **403**     | ForbiddenError           | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePexQueryById**

> PexQueryDto updatePexQueryById(updatePexQueryInput)

Updates the Presentation Definition in the configuration by ID.

### Example

```typescript
import {
  PexQueryApi,
  Configuration,
  UpdatePexQueryInput,
} from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new PexQueryApi(configuration)

let configurationId: string //ID of the Affinidi Iota Framework configuration. (default to undefined)
let queryId: string //The ID of the query. (default to undefined)
let updatePexQueryInput: UpdatePexQueryInput //UpdatePexQueryById

const { status, data } = await apiInstance.updatePexQueryById(
  configurationId,
  queryId,
  updatePexQueryInput,
)
```

### Parameters

| Name                    | Type                    | Description                                      | Notes                 |
| ----------------------- | ----------------------- | ------------------------------------------------ | --------------------- |
| **updatePexQueryInput** | **UpdatePexQueryInput** | UpdatePexQueryById                               |                       |
| **configurationId**     | [**string**]            | ID of the Affinidi Iota Framework configuration. | defaults to undefined |
| **queryId**             | [**string**]            | The ID of the query.                             | defaults to undefined |

### Return type

**PexQueryDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | UpdatePexQueryByIdOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
