# DenyListApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                      | HTTP request                         | Description |
| ------------------------------------------- | ------------------------------------ | ----------- |
| [**blockGroups**](#blockgroups)             | **POST** /v1/deny-list/groups/add    |             |
| [**blockUsers**](#blockusers)               | **POST** /v1/deny-list/users/add     |             |
| [**listBlockedGroups**](#listblockedgroups) | **GET** /v1/deny-list/groups         |             |
| [**listBlockedUsers**](#listblockedusers)   | **GET** /v1/deny-list/users          |             |
| [**unblockGroups**](#unblockgroups)         | **POST** /v1/deny-list/groups/remove |             |
| [**unblockUsers**](#unblockusers)           | **POST** /v1/deny-list/users/remove  |             |

# **blockGroups**

> blockGroups()

Block Single or Multiple Groups

### Example

```typescript
import {
  DenyListApi,
  Configuration,
  GroupNamesInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let groupNamesInput: GroupNamesInput //List of group names as input (optional)

const { status, data } = await apiInstance.blockGroups(groupNamesInput)
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

# **blockUsers**

> blockUsers()

Block Single or Multiple user ids

### Example

```typescript
import {
  DenyListApi,
  Configuration,
  BlockedUsersInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let blockedUsersInput: BlockedUsersInput //List of blocked users as input (optional)

const { status, data } = await apiInstance.blockUsers(blockedUsersInput)
```

### Parameters

| Name                  | Type                  | Description                    | Notes |
| --------------------- | --------------------- | ------------------------------ | ----- |
| **blockedUsersInput** | **BlockedUsersInput** | List of blocked users as input |       |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listBlockedGroups**

> GroupNames listBlockedGroups()

Get Blocked Groups

### Example

```typescript
import {
  DenyListApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let pageToken: string // (optional) (default to undefined)

const { status, data } = await apiInstance.listBlockedGroups(pageToken)
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

# **listBlockedUsers**

> BlockedUsers listBlockedUsers()

Get List of Blocked Users

### Example

```typescript
import {
  DenyListApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let pageToken: string // (optional) (default to undefined)

const { status, data } = await apiInstance.listBlockedUsers(pageToken)
```

### Parameters

| Name          | Type         | Description | Notes                            |
| ------------- | ------------ | ----------- | -------------------------------- |
| **pageToken** | [**string**] |             | (optional) defaults to undefined |

### Return type

**BlockedUsers**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | Blocked user ids response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unblockGroups**

> unblockGroups()

Unblock Single or Multiple Groups

### Example

```typescript
import {
  DenyListApi,
  Configuration,
  GroupNamesInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let groupNamesInput: GroupNamesInput //List of group names as input (optional)

const { status, data } = await apiInstance.unblockGroups(groupNamesInput)
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

# **unblockUsers**

> unblockUsers()

Unblock Single or Multiple user ids

### Example

```typescript
import {
  DenyListApi,
  Configuration,
  BlockedUsersInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new DenyListApi(configuration)

let blockedUsersInput: BlockedUsersInput //List of blocked users as input (optional)

const { status, data } = await apiInstance.unblockUsers(blockedUsersInput)
```

### Parameters

| Name                  | Type                  | Description                    | Notes |
| --------------------- | --------------------- | ------------------------------ | ----- |
| **blockedUsersInput** | **BlockedUsersInput** | List of blocked users as input |       |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
