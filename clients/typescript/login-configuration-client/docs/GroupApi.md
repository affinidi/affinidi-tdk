# GroupApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                              | HTTP request                            | Description |
| --------------------------------------------------- | --------------------------------------- | ----------- |
| [**addUserToGroup**](#addusertogroup)               | **POST** /v1/groups/{groupName}/users   |             |
| [**createGroup**](#creategroup)                     | **POST** /v1/groups                     |             |
| [**deleteGroup**](#deletegroup)                     | **DELETE** /v1/groups/{groupName}       |             |
| [**getGroupById**](#getgroupbyid)                   | **GET** /v1/groups/{groupName}          |             |
| [**listGroupUserMappings**](#listgroupusermappings) | **GET** /v1/groups/{groupName}/users    |             |
| [**listGroups**](#listgroups)                       | **GET** /v1/groups                      |             |
| [**removeUserFromGroup**](#removeuserfromgroup)     | **DELETE** /v1/groups/{groupName}/users |             |

# **addUserToGroup**

> GroupUserMappingDto addUserToGroup(addUserToGroupInput)

### Example

```typescript
import {
  GroupApi,
  Configuration,
  AddUserToGroupInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let groupName: string // (default to undefined)
let addUserToGroupInput: AddUserToGroupInput //AddUserToGroup

const { status, data } = await apiInstance.addUserToGroup(
  groupName,
  addUserToGroupInput,
)
```

### Parameters

| Name                    | Type                    | Description    | Notes                 |
| ----------------------- | ----------------------- | -------------- | --------------------- |
| **addUserToGroupInput** | **AddUserToGroupInput** | AddUserToGroup |                       |
| **groupName**           | [**string**]            |                | defaults to undefined |

### Return type

**GroupUserMappingDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGroup**

> GroupDto createGroup(createGroupInput)

### Example

```typescript
import {
  GroupApi,
  Configuration,
  CreateGroupInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let createGroupInput: CreateGroupInput //CreateGroup

const { status, data } = await apiInstance.createGroup(createGroupInput)
```

### Parameters

| Name                 | Type                 | Description | Notes |
| -------------------- | -------------------- | ----------- | ----- |
| **createGroupInput** | **CreateGroupInput** | CreateGroup |       |

### Return type

**GroupDto**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **409**     | ConflictError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**

> deleteGroup()

### Example

```typescript
import {
  GroupApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let groupName: string // (default to undefined)

const { status, data } = await apiInstance.deleteGroup(groupName)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **groupName** | [**string**] |             | defaults to undefined |

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
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupById**

> GroupDto getGroupById()

### Example

```typescript
import {
  GroupApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let groupName: string // (default to undefined)

const { status, data } = await apiInstance.getGroupById(groupName)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **groupName** | [**string**] |             | defaults to undefined |

### Return type

**GroupDto**

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

# **listGroupUserMappings**

> GroupUserMappingsList listGroupUserMappings()

### Example

```typescript
import {
  GroupApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let groupName: string // (default to undefined)
let limit: number //Maximum number of records to fetch in a list (optional) (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)
let sortOrder: 'asc' | 'desc' //sort response in specific order. By default it is in desc order (optional) (default to undefined)

const { status, data } = await apiInstance.listGroupUserMappings(
  groupName,
  limit,
  exclusiveStartKey,
  sortOrder,
)
```

### Parameters

| Name                  | Type               | Description                                                                                                                                                    | Notes                                                           |
| --------------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------- | -------------------------------- |
| **groupName**         | [**string**]       |                                                                                                                                                                | defaults to undefined                                           |
| **limit**             | [**number**]       | Maximum number of records to fetch in a list                                                                                                                   | (optional) defaults to undefined                                |
| **exclusiveStartKey** | [**string**]       | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined                                |
| **sortOrder**         | [\*\*&#39;asc&#39; | &#39;desc&#39;**]**Array<&#39;asc&#39; &#124; &#39;desc&#39;>\*\*                                                                                              | sort response in specific order. By default it is in desc order | (optional) defaults to undefined |

### Return type

**GroupUserMappingsList**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listGroups**

> GroupsList listGroups()

### Example

```typescript
import {
  GroupApi,
  Configuration,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

const { status, data } = await apiInstance.listGroups()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**GroupsList**

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

# **removeUserFromGroup**

> removeUserFromGroup(removeUserFromGroupInput)

### Example

```typescript
import {
  GroupApi,
  Configuration,
  RemoveUserFromGroupInput,
} from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new GroupApi(configuration)

let groupName: string // (default to undefined)
let removeUserFromGroupInput: RemoveUserFromGroupInput //Remove user from group

const { status, data } = await apiInstance.removeUserFromGroup(
  groupName,
  removeUserFromGroupInput,
)
```

### Parameters

| Name                         | Type                         | Description            | Notes                 |
| ---------------------------- | ---------------------------- | ---------------------- | --------------------- |
| **removeUserFromGroupInput** | **RemoveUserFromGroupInput** | Remove user from group |                       |
| **groupName**                | [**string**]                 |                        | defaults to undefined |

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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
