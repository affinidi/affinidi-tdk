# ProjectsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                        | HTTP request                                     | Description |
| ------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| [**addPrincipalToProject**](#addprincipaltoproject)           | **POST** /v1/projects/principals                 |             |
| [**createProject**](#createproject)                           | **POST** /v1/projects                            |             |
| [**deletePrincipalFromProject**](#deleteprincipalfromproject) | **DELETE** /v1/projects/principals/{principalId} |             |
| [**listPrincipalsOfProject**](#listprincipalsofproject)       | **GET** /v1/projects/principals                  |             |
| [**listProject**](#listproject)                               | **GET** /v1/projects                             |             |
| [**updateProject**](#updateproject)                           | **PATCH** /v1/projects/{projectId}               |             |

# **addPrincipalToProject**

> addPrincipalToProject(addUserToProjectInput)

### Example

```typescript
import {
  ProjectsApi,
  Configuration,
  AddUserToProjectInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let addUserToProjectInput: AddUserToProjectInput //AddPrincipalToProject

const { status, data } = await apiInstance.addPrincipalToProject(
  addUserToProjectInput,
)
```

### Parameters

| Name                      | Type                      | Description           | Notes |
| ------------------------- | ------------------------- | --------------------- | ----- |
| **addUserToProjectInput** | **AddUserToProjectInput** | AddPrincipalToProject |       |

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
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProject**

> ProjectDto createProject(createProjectInput)

### Example

```typescript
import {
  ProjectsApi,
  Configuration,
  CreateProjectInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let createProjectInput: CreateProjectInput //CreateProject

const { status, data } = await apiInstance.createProject(createProjectInput)
```

### Parameters

| Name                   | Type                   | Description   | Notes |
| ---------------------- | ---------------------- | ------------- | ----- |
| **createProjectInput** | **CreateProjectInput** | CreateProject |       |

### Return type

**ProjectDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePrincipalFromProject**

> deletePrincipalFromProject()

### Example

```typescript
import { ProjectsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let principalId: string //id of principal (default to undefined)
let principalType: 'user' | 'token' //type of principal (default to undefined)

const { status, data } = await apiInstance.deletePrincipalFromProject(
  principalId,
  principalType,
)
```

### Parameters

| Name              | Type                | Description                                                          | Notes                 |
| ----------------- | ------------------- | -------------------------------------------------------------------- | --------------------- | --------------------- |
| **principalId**   | [**string**]        | id of principal                                                      | defaults to undefined |
| **principalType** | [\*\*&#39;user&#39; | &#39;token&#39;**]**Array<&#39;user&#39; &#124; &#39;token&#39;>\*\* | type of principal     | defaults to undefined |

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
| **204**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **409**     | ConflictError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listPrincipalsOfProject**

> UserList listPrincipalsOfProject()

### Example

```typescript
import { ProjectsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let limit: number //Maximum number of records to fetch in a list (optional) (default to 100)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listPrincipalsOfProject(
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to 100       |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**UserList**

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
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listProject**

> ProjectList listProject()

### Example

```typescript
import { ProjectsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let limit: number //Maximum number of records to fetch in a list (optional) (default to 100)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listProject(limit, exclusiveStartKey)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **limit**             | [**number**] | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to 100       |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ProjectList**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**

> ProjectDto updateProject(updateProjectInput)

### Example

```typescript
import {
  ProjectsApi,
  Configuration,
  UpdateProjectInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ProjectsApi(configuration)

let projectId: string //projectId (default to undefined)
let updateProjectInput: UpdateProjectInput //UpdateProject

const { status, data } = await apiInstance.updateProject(
  projectId,
  updateProjectInput,
)
```

### Parameters

| Name                   | Type                   | Description   | Notes                 |
| ---------------------- | ---------------------- | ------------- | --------------------- |
| **updateProjectInput** | **UpdateProjectInput** | UpdateProject |                       |
| **projectId**          | [**string**]           | projectId     | defaults to undefined |

### Return type

**ProjectDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
