# OfferApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                   | HTTP request                                | Description |
| -------------------------------------------------------- | ------------------------------------------- | ----------- |
| [**getCredentialOffer**](OfferApi.md#getCredentialOffer) | **GET** /v1/{projectId}/offers/{issuanceId} |             |

<a id="getCredentialOffer"></a>

# **getCredentialOffer**

> CredentialOfferResponse getCredentialOffer(projectId, issuanceId)

Endpoint used to return Credential Offer details, used with &#x60;credential_offer_uri&#x60; response

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.OfferApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

    OfferApi apiInstance = new OfferApi(defaultClient);
    String projectId = "projectId_example"; // String | Affinidi project id
    String issuanceId = "issuanceId_example"; // String | issuanceId from credential_offer_uri
    try {
      CredentialOfferResponse result = apiInstance.getCredentialOffer(projectId, issuanceId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling OfferApi#getCredentialOffer");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name           | Type       | Description                          | Notes |
| -------------- | ---------- | ------------------------------------ | ----- |
| **projectId**  | **String** | Affinidi project id                  |       |
| **issuanceId** | **String** | issuanceId from credential_offer_uri |       |

### Return type

[**CredentialOfferResponse**](CredentialOfferResponse.md)

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
