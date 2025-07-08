# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                        | HTTP request                                                 | Description |
| ----------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer**](#getwellknownopenidcredentialissuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |             |

# **getWellKnownOpenIdCredentialIssuer**

> WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer()

### Example

```typescript
import {
  WellKnownApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new WellKnownApi(configuration)

let projectId: string //Affinidi project id (default to undefined)

const { status, data } =
  await apiInstance.getWellKnownOpenIdCredentialIssuer(projectId)
```

### Parameters

| Name          | Type         | Description         | Notes                 |
| ------------- | ------------ | ------------------- | --------------------- |
| **projectId** | [**string**] | Affinidi project id | defaults to undefined |

### Return type

**WellKnownOpenIdCredentialIssuerResponse**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                 | Response headers                                                                                                  |
| ----------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Credential issuer Metadata and capabilities | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
