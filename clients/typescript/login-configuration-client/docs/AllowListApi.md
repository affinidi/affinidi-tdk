# AllowListApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                      | HTTP request                          | Description |
| ------------------------------------------- | ------------------------------------- | ----------- |
| [**allowGroups**](#allowgroups)             | **POST** /v1/allow-list/groups/add    |             |
| [**disallowGroups**](#disallowgroups)       | **POST** /v1/allow-list/groups/remove |             |
| [**listAllowedGroups**](#listallowedgroups) | **GET** /v1/allow-list/groups         |             |

# **allowGroups**

> allowGroups()

Allow Single or Multiple Groups

### Example

```typescript
import {
  AllowListApi,
  Configuration,
  GroupNamesInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new AllowListApi(configuration)

let groupNamesInput: GroupNamesInput //List of group names as input (optional)

const { status, data } = await apiInstance.allowGroups(groupNamesInput)
```

### Parameters

| Name                | Type                | Description                  | Notes |
| ------------------- | ------------------- | ---------------------------- | ----- |
| **groupNamesInput** | **GroupNamesInput** | List of group names as input |       |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disallowGroups**

> disallowGroups()

Disallow Single or Multiple Groups

### Example

```typescript
import {
  AllowListApi,
  Configuration,
  GroupNamesInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new AllowListApi(configuration)

let groupNamesInput: GroupNamesInput //List of group names as input (optional)

const { status, data } = await apiInstance.disallowGroups(groupNamesInput)
```

### Parameters

| Name                | Type                | Description                  | Notes |
| ------------------- | ------------------- | ---------------------------- | ----- |
| **groupNamesInput** | **GroupNamesInput** | List of group names as input |       |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAllowedGroups**

> GroupNames listAllowedGroups()

Get Allowed Groups

### Example

```typescript
import {
  AllowListApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new AllowListApi(configuration)

let pageToken: string // (optional) (default to undefined)

const { status, data } = await apiInstance.listAllowedGroups(pageToken)
```

### Parameters

| Name          | Type         | Description | Notes                            |
| ------------- | ------------ | ----------- | -------------------------------- |
| **pageToken** | [**string**] |             | (optional) defaults to undefined |

### Return type

**GroupNames**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | Groups Names Response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
