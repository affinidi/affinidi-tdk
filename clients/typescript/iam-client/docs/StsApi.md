# StsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                    | HTTP request                                 | Description |
| --------------------------------------------------------- | -------------------------------------------- | ----------- |
| [**createProjectScopedToken**](#createprojectscopedtoken) | **POST** /v1/sts/create-project-scoped-token |             |
| [**whoami**](#whoami)                                     | **GET** /v1/sts/whoami                       |             |

# **createProjectScopedToken**

> CreateProjectScopedTokenOutput createProjectScopedToken(createProjectScopedTokenInput)

### Example

```typescript
import {
  StsApi,
  Configuration,
  CreateProjectScopedTokenInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new StsApi(configuration)

let createProjectScopedTokenInput: CreateProjectScopedTokenInput //CreateProjectScopedToken

const { status, data } = await apiInstance.createProjectScopedToken(
  createProjectScopedTokenInput,
)
```

### Parameters

| Name                              | Type                              | Description              | Notes |
| --------------------------------- | --------------------------------- | ------------------------ | ----- |
| **createProjectScopedTokenInput** | **CreateProjectScopedTokenInput** | CreateProjectScopedToken |       |

### Return type

**CreateProjectScopedTokenOutput**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                   | Response headers |
| ----------- | ----------------------------- | ---------------- |
| **200**     | Created Project Scoped Tokens | -                |
| **400**     | BadRequestError               | -                |
| **403**     | ForbiddenError                | -                |
| **500**     | UnexpectedError               | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **whoami**

> WhoamiDto whoami()

### Example

```typescript
import { StsApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new StsApi(configuration)

const { status, data } = await apiInstance.whoami()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**WhoamiDto**

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | User info       | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
