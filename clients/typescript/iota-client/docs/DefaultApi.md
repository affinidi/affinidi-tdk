# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                        | HTTP request                | Description |
| --------------------------------------------- | --------------------------- | ----------- |
| [**listLoggedConsents**](#listloggedconsents) | **GET** /v1/logged-consents |             |

# **listLoggedConsents**

> ListLoggedConsentsOK listLoggedConsents()

Lists all the logged consents for a project.

### Example

```typescript
import { DefaultApi, Configuration } from '@affinidi-tdk/iota-client'

const configuration = new Configuration()
const apiInstance = new DefaultApi(configuration)

let configurationId: string // (optional) (default to undefined)
let userId: string // (optional) (default to undefined)
let limit: number //The maximum number of records to fetch from the list of logged consents. (optional) (default to undefined)
let exclusiveStartKey: string //The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. (optional) (default to undefined)

const { status, data } = await apiInstance.listLoggedConsents(
  configurationId,
  userId,
  limit,
  exclusiveStartKey,
)
```

### Parameters

| Name                  | Type         | Description                                                                                                                                                    | Notes                            |
| --------------------- | ------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------- |
| **configurationId**   | [**string**] |                                                                                                                                                                | (optional) defaults to undefined |
| **userId**            | [**string**] |                                                                                                                                                                | (optional) defaults to undefined |
| **limit**             | [**number**] | The maximum number of records to fetch from the list of logged consents.                                                                                       | (optional) defaults to undefined |
| **exclusiveStartKey** | [**string**] | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | (optional) defaults to undefined |

### Return type

**ListLoggedConsentsOK**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | ListLoggedConsentsOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
