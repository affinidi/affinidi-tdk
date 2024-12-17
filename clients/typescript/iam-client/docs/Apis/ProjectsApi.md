# ProjectsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                      | HTTP request                                     | Description |
| --------------------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| [**addPrincipalToProject**](ProjectsApi.md#addPrincipalToProject)           | **POST** /v1/projects/principals                 |             |
| [**createProject**](ProjectsApi.md#createProject)                           | **POST** /v1/projects                            |             |
| [**deletePrincipalFromProject**](ProjectsApi.md#deletePrincipalFromProject) | **DELETE** /v1/projects/principals/{principalId} |             |
| [**listPrincipalsOfProject**](ProjectsApi.md#listPrincipalsOfProject)       | **GET** /v1/projects/principals                  |             |
| [**listProject**](ProjectsApi.md#listProject)                               | **GET** /v1/projects                             |             |
| [**updateProject**](ProjectsApi.md#updateProject)                           | **PATCH** /v1/projects/{projectId}               |             |

<a name="addPrincipalToProject"></a>

# **addPrincipalToProject**

> addPrincipalToProject(AddUserToProjectInput)

### Parameters

| Name                      | Type                                                            | Description           | Notes |
| ------------------------- | --------------------------------------------------------------- | --------------------- | ----- |
| **AddUserToProjectInput** | [**AddUserToProjectInput**](../Models/AddUserToProjectInput.md) | AddPrincipalToProject |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="createProject"></a>

# **createProject**

> ProjectDto createProject(CreateProjectInput)

### Parameters

| Name                   | Type                                                      | Description   | Notes |
| ---------------------- | --------------------------------------------------------- | ------------- | ----- |
| **CreateProjectInput** | [**CreateProjectInput**](../Models/CreateProjectInput.md) | CreateProject |       |

### Return type

[**ProjectDto**](../Models/ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="deletePrincipalFromProject"></a>

# **deletePrincipalFromProject**

> deletePrincipalFromProject(principalId, principalType)

### Parameters

| Name              | Type       | Description       | Notes                                 |
| ----------------- | ---------- | ----------------- | ------------------------------------- |
| **principalId**   | **String** | id of principal   | [default to null]                     |
| **principalType** | **String** | type of principal | [default to null] [enum: user, token] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listPrincipalsOfProject"></a>

# **listPrincipalsOfProject**

> UserList listPrincipalsOfProject(limit, exclusiveStartKey)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100]  |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**UserList**](../Models/UserList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="listProject"></a>

# **listProject**

> ProjectList listProject(limit, exclusiveStartKey)

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100]  |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] [default to null] |

### Return type

[**ProjectList**](../Models/ProjectList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateProject"></a>

# **updateProject**

> ProjectDto updateProject(projectId, UpdateProjectInput)

### Parameters

| Name                   | Type                                                      | Description   | Notes             |
| ---------------------- | --------------------------------------------------------- | ------------- | ----------------- |
| **projectId**          | **String**                                                | projectId     | [default to null] |
| **UpdateProjectInput** | [**UpdateProjectInput**](../Models/UpdateProjectInput.md) | UpdateProject |                   |

### Return type

[**ProjectDto**](../Models/ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json
