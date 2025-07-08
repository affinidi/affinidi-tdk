# ConfigurationApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                    | HTTP request       | Description |
| ----------------------------------------- | ------------------ | ----------- |
| [**getConfiguration**](#getconfiguration) | **GET** /v1/config |             |

# **getConfiguration**

> GetConfigOK getConfiguration()

Retrieves the user profile name and the maximum number of profiles, with default values set to \'default\' and 1, respectively.

### Example

```typescript
import {
  ConfigurationApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new ConfigurationApi(configuration)

const { status, data } = await apiInstance.getConfiguration()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**GetConfigOK**

### Authorization

[AwsSigV4](../README.md#AwsSigV4)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | GetConfigOK     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
