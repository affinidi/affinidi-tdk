# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                    | HTTP request                   | Description |
| ----------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownDid**](#getwellknowndid)   | **GET** /.well-known/did.json  |             |
| [**getWellKnownJwks**](#getwellknownjwks) | **GET** /.well-known/jwks.json |             |

# **getWellKnownDid**

> GetWellKnownDidOK getWellKnownDid()

### Example

```typescript
import { WellKnownApi, Configuration } from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new WellKnownApi(configuration)

const { status, data } = await apiInstance.getWellKnownDid()
```

### Parameters

This endpoint does not have any parameters.

### Return type

**GetWellKnownDidOK**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | GetWellKnownDidOK | -                |
| **500**     | UnexpectedError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getWellKnownJwks**

> JsonWebKeySetDto getWellKnownJwks()

### Example

```typescript
import { WellKnownApi, Configuration } from '@affinidi-tdk/iam-client'

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

| Status code | Description                              | Response headers |
| ----------- | ---------------------------------------- | ---------------- |
| **200**     | List of JWK used by the services as JWKS | -                |
| **500**     | UnexpectedError                          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
