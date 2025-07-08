# PoliciesApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                | HTTP request                                  | Description |
| ------------------------------------- | --------------------------------------------- | ----------- |
| [**getPolicies**](#getpolicies)       | **GET** /v1/policies/principals/{principalId} |             |
| [**updatePolicies**](#updatepolicies) | **PUT** /v1/policies/principals/{principalId} |             |

# **getPolicies**

> PolicyDto getPolicies()

### Example

```typescript
import { PoliciesApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new PoliciesApi(configuration)

let principalId: string // (default to undefined)
let principalType: 'user' | 'token' // (default to undefined)

const { status, data } = await apiInstance.getPolicies(
  principalId,
  principalType,
)
```

### Parameters

| Name              | Type                | Description                                                          | Notes                 |
| ----------------- | ------------------- | -------------------------------------------------------------------- | --------------------- | --------------------- |
| **principalId**   | [**string**]        |                                                                      | defaults to undefined |
| **principalType** | [\*\*&#39;user&#39; | &#39;token&#39;**]**Array<&#39;user&#39; &#124; &#39;token&#39;>\*\* |                       | defaults to undefined |

### Return type

**PolicyDto**

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
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePolicies**

> PolicyDto updatePolicies(policyDto)

### Example

```typescript
import { PoliciesApi, Configuration, PolicyDto } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new PoliciesApi(configuration)

let principalId: string // (default to undefined)
let principalType: 'user' | 'token' // (default to undefined)
let policyDto: PolicyDto //UpdatePolicies

const { status, data } = await apiInstance.updatePolicies(
  principalId,
  principalType,
  policyDto,
)
```

### Parameters

| Name              | Type                | Description                                                          | Notes                 |
| ----------------- | ------------------- | -------------------------------------------------------------------- | --------------------- | --------------------- |
| **policyDto**     | **PolicyDto**       | UpdatePolicies                                                       |                       |
| **principalId**   | [**string**]        |                                                                      | defaults to undefined |
| **principalType** | [\*\*&#39;user&#39; | &#39;token&#39;**]**Array<&#39;user&#39; &#124; &#39;token&#39;>\*\* |                       | defaults to undefined |

### Return type

**PolicyDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

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
