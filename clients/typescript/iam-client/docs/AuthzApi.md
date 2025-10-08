# AuthzApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                  | HTTP request                                 | Description                             |
| --------------------------------------- | -------------------------------------------- | --------------------------------------- |
| [**deleteAccessVfs**](#deleteaccessvfs) | **DELETE** /v1/authz/vfs/access/{granteeDid} | delete access of granteeDid             |
| [**grantAccessVfs**](#grantaccessvfs)   | **POST** /v1/authz/vfs/access                | Grant access to the virtual file system |
| [**updateAccessVfs**](#updateaccessvfs) | **PUT** /v1/authz/vfs/access/{granteeDid}    | Update access of granteeDid             |

# **deleteAccessVfs**

> deleteAccessVfs()

deleteAccessVfs

### Example

```typescript
import { AuthzApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new AuthzApi(configuration)

let granteeDid: string // (default to undefined)

const { status, data } = await apiInstance.deleteAccessVfs(granteeDid)
```

### Parameters

| Name           | Type         | Description | Notes                 |
| -------------- | ------------ | ----------- | --------------------- |
| **granteeDid** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **204**     | Ok              | -                                                                                                                 |
| **403**     | ForbiddenError  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **grantAccessVfs**

> GrantAccessOutput grantAccessVfs(grantAccessInput)

Grants access rights to a subject for the virtual file system

### Example

```typescript
import {
  AuthzApi,
  Configuration,
  GrantAccessInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new AuthzApi(configuration)

let grantAccessInput: GrantAccessInput //Grant access to virtual file system

const { status, data } = await apiInstance.grantAccessVfs(grantAccessInput)
```

### Parameters

| Name                 | Type                 | Description                         | Notes |
| -------------------- | -------------------- | ----------------------------------- | ----- |
| **grantAccessInput** | **GrantAccessInput** | Grant access to virtual file system |       |

### Return type

**GrantAccessOutput**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                            | Response headers                                                                                                  |
| ----------- | -------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Successfully granted access to Service | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError                         | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError                        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAccessVfs**

> UpdateAccessOutput updateAccessVfs(updateAccessInput)

updateAccessVfs

### Example

```typescript
import {
  AuthzApi,
  Configuration,
  UpdateAccessInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new AuthzApi(configuration)

let granteeDid: string // (default to undefined)
let updateAccessInput: UpdateAccessInput //update access to virtual file system

const { status, data } = await apiInstance.updateAccessVfs(
  granteeDid,
  updateAccessInput,
)
```

### Parameters

| Name                  | Type                  | Description                          | Notes                 |
| --------------------- | --------------------- | ------------------------------------ | --------------------- |
| **updateAccessInput** | **UpdateAccessInput** | update access to virtual file system |                       |
| **granteeDid**        | [**string**]          |                                      | defaults to undefined |

### Return type

**UpdateAccessOutput**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                            | Response headers                                                                                                  |
| ----------- | -------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Successfully updated access to Service | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError                         | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError                        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
