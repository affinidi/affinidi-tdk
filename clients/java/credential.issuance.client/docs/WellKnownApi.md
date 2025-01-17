# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                                       | HTTP request                                                 | Description |
| -------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**getWellKnownOpenIdCredentialIssuer**](WellKnownApi.md#getWellKnownOpenIdCredentialIssuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |             |

## getWellKnownOpenIdCredentialIssuer

> WellKnownOpenIdCredentialIssuerResponse getWellKnownOpenIdCredentialIssuer(projectId)

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.WellKnownApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        WellKnownApi apiInstance = new WellKnownApi(defaultClient);
        String projectId = "projectId_example"; // String | Affinidi project id
        try {
            WellKnownOpenIdCredentialIssuerResponse result = apiInstance.getWellKnownOpenIdCredentialIssuer(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WellKnownApi#getWellKnownOpenIdCredentialIssuer");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description         | Notes |
| ------------- | ---------- | ------------------- | ----- |
| **projectId** | **String** | Affinidi project id |       |

### Return type

[**WellKnownOpenIdCredentialIssuerResponse**](WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                 | Response headers                                                                                                  |
| ----------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Credential issuer Metadata and capabilities | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
