# WellKnownApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                    | HTTP request                   | Description |
| ----------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownJwks**](#getwellknownjwks) | **GET** /.well-known/jwks.json |             |

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Example

```typescript
import {
  WellKnownApi,
  Configuration,
} from '@affinidi-tdk/vault-data-manager-client'

const configuration = new Configuration()
const apiInstance = new WellKnownApi(configuration)

const { status, data } = await apiInstance.getWellKnownJwks()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**JsonWebKeySetDto**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                              | Response headers                                                                                                  |
| ----------- | ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | List of JWK used by the services as JWKS | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError                          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError                          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
