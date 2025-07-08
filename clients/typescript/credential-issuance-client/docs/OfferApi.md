# OfferApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                        | HTTP request                                | Description |
| --------------------------------------------- | ------------------------------------------- | ----------- |
| [**getCredentialOffer**](#getcredentialoffer) | **GET** /v1/{projectId}/offers/{issuanceId} |             |

# **getCredentialOffer**

> CredentialOfferResponse getCredentialOffer()

Endpoint used to return Credential Offer details, used with `credential_offer_uri` response

### Example

```typescript
import {
  OfferApi,
  Configuration,
} from '@affinidi-tdk/credential-issuance-client'

const configuration = new Configuration()
const apiInstance = new OfferApi(configuration)

let projectId: string //Affinidi project id (default to undefined)
let issuanceId: string //issuanceId from credential_offer_uri (default to undefined)

const { status, data } = await apiInstance.getCredentialOffer(
  projectId,
  issuanceId,
)
```

### Parameters

| Name           | Type         | Description                          | Notes                 |
| -------------- | ------------ | ------------------------------------ | --------------------- |
| **projectId**  | [**string**] | Affinidi project id                  | defaults to undefined |
| **issuanceId** | [**string**] | issuanceId from credential_offer_uri | defaults to undefined |

### Return type

**CredentialOfferResponse**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
