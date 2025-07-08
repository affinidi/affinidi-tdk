# ProfileDataApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                      | HTTP request                              | Description |
| ------------------------------------------- | ----------------------------------------- | ----------- |
| [**queryProfileData**](#queryprofiledata)   | **GET** /v1/nodes/{nodeId}/profile-data   |             |
| [**updateProfileData**](#updateprofiledata) | **PATCH** /v1/nodes/{nodeId}/profile-data |             |

# **queryProfileData**

> QueryProfileDataOK queryProfileData()

Retrieves information from a profile.

### Example

```typescript
import {
  ProfileDataApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new ProfileDataApi(configuration)

let nodeId: string //the nodeId of the node being operated on (default to undefined)
let dek: string //A base64url encoded data encryption key, encrypted using VFS public (default to undefined)
let query: string //data query, TBD maybe encode it with base64 to make it url friendly? (optional) (default to undefined)

const { status, data } = await apiInstance.queryProfileData(nodeId, dek, query)
```

### Parameters

| Name       | Type         | Description                                                          | Notes                            |
| ---------- | ------------ | -------------------------------------------------------------------- | -------------------------------- |
| **nodeId** | [**string**] | the nodeId of the node being operated on                             | defaults to undefined            |
| **dek**    | [**string**] | A base64url encoded data encryption key, encrypted using VFS public  | defaults to undefined            |
| **query**  | [**string**] | data query, TBD maybe encode it with base64 to make it url friendly? | (optional) defaults to undefined |

### Return type

**QueryProfileDataOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | QueryProfileDataOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfileData**

> UpdateProfileDataOK updateProfileData(updateProfileDataInput)

Updates the profile with the given data

### Example

```typescript
import {
  ProfileDataApi,
  Configuration,
  UpdateProfileDataInput,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new ProfileDataApi(configuration)

let nodeId: string // (default to undefined)
let updateProfileDataInput: UpdateProfileDataInput //Updates the schema with the given data

const { status, data } = await apiInstance.updateProfileData(
  nodeId,
  updateProfileDataInput,
)
```

### Parameters

| Name                       | Type                       | Description                            | Notes                 |
| -------------------------- | -------------------------- | -------------------------------------- | --------------------- |
| **updateProfileDataInput** | **UpdateProfileDataInput** | Updates the schema with the given data |                       |
| **nodeId**                 | [**string**]               |                                        | defaults to undefined |

### Return type

**UpdateProfileDataOK**

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | UpdateSchemaOK  | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
