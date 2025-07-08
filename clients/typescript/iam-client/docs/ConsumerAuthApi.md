# ConsumerAuthApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                      | HTTP request                       | Description                           |
| ----------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint**](#consumerauthtokenendpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

# **consumerAuthTokenEndpoint**

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput)

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```typescript
import {
  ConsumerAuthApi,
  Configuration,
  ConsumerAuthTokenEndpointInput,
} from '@affinidi-tdk/iam-client'

const configuration = new Configuration()
const apiInstance = new ConsumerAuthApi(configuration)

let consumerAuthTokenEndpointInput: ConsumerAuthTokenEndpointInput //ConsumerAuthTokenEndpoint

const { status, data } = await apiInstance.consumerAuthTokenEndpoint(
  consumerAuthTokenEndpointInput,
)
```

### Parameters

| Name                               | Type                               | Description               | Notes |
| ---------------------------------- | ---------------------------------- | ------------------------- | ----- |
| **consumerAuthTokenEndpointInput** | **ConsumerAuthTokenEndpointInput** | ConsumerAuthTokenEndpoint |       |

### Return type

**ConsumerAuthTokenEndpointOutput**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Consumer Token OK Response | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError             | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
