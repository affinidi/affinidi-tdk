# CredentialsApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                           | HTTP request                        | Description |
| ---------------------------------------------------------------- | ----------------------------------- | ----------- |
| [**generateCredentials**](CredentialsApi.md#generateCredentials) | **POST** /v1/{projectId}/credential |             |

## generateCredentials

> CredentialResponse generateCredentials(projectId, createCredentialInput)

Issue credential for end user upon presentation a valid access token. Since we don&#39;t immediate issue credential It&#39;s expected to return &#x60;transaction_id&#x60; and use this &#x60;transaction_id&#x60; to get the deferred credentials

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.CredentialsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure HTTP bearer authorization: bearerAuth
        HttpBearerAuth bearerAuth = (HttpBearerAuth) defaultClient.getAuthentication("bearerAuth");
        bearerAuth.setBearerToken("BEARER TOKEN");

        CredentialsApi apiInstance = new CredentialsApi(defaultClient);
        String projectId = "projectId_example"; // String | Affinidi project id
        CreateCredentialInput createCredentialInput = new CreateCredentialInput(); // CreateCredentialInput | Request body to issue credentials
        try {
            CredentialResponse result = apiInstance.generateCredentials(projectId, createCredentialInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling CredentialsApi#generateCredentials");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                      | Type                                                  | Description                       | Notes |
| ------------------------- | ----------------------------------------------------- | --------------------------------- | ----- |
| **projectId**             | **String**                                            | Affinidi project id               |       |
| **createCredentialInput** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |       |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
