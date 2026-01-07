# VerifierApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                        | HTTP request                       | Description         |
| --------------------------------------------- | ---------------------------------- | ------------------- |
| [**validateJwt**](VerifierApi.md#validateJwt) | **POST** /v1/verifier/validate-jwt | Validates JWT token |

## validateJwt

> ValidateJwtOutput validateJwt(validateJwtInput)

Validates JWT token

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.ApiException;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.auth.*;
import com.affinidi.tdk.credential.verification.client.models.*;
import com.affinidi.tdk.credential.verification.client.apis.VerifierApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ver");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        VerifierApi apiInstance = new VerifierApi(defaultClient);
        ValidateJwtInput validateJwtInput = new ValidateJwtInput(); // ValidateJwtInput | ValidateJwt
        try {
            ValidateJwtOutput result = apiInstance.validateJwt(validateJwtInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling VerifierApi#validateJwt");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                 | Type                                        | Description | Notes |
| -------------------- | ------------------------------------------- | ----------- | ----- |
| **validateJwtInput** | [**ValidateJwtInput**](ValidateJwtInput.md) | ValidateJwt |       |

### Return type

[**ValidateJwtOutput**](ValidateJwtOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |
