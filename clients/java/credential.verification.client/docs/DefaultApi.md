# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                                     | HTTP request                     | Description  |
| ---------------------------------------------------------- | -------------------------------- | ------------ |
| [**verifyCredentials**](DefaultApi.md#verifyCredentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verifyPresentation**](DefaultApi.md#verifyPresentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

## verifyCredentials

> VerifyCredentialOutput verifyCredentials(verifyCredentialInput)

Verifying VC

Verifying Verifiable Credentials (signatures) &#x60;isValid&#x60; - true if all credentials verified &#x60;errors&#x60; contains list of error messages for invalid credentials.

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.ApiException;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.auth.*;
import com.affinidi.tdk.credential.verification.client.models.*;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ver");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DefaultApi apiInstance = new DefaultApi(defaultClient);
        VerifyCredentialInput verifyCredentialInput = new VerifyCredentialInput(); // VerifyCredentialInput | VerifyCredentials
        try {
            VerifyCredentialOutput result = apiInstance.verifyCredentials(verifyCredentialInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#verifyCredentials");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                      | Type                                                  | Description       | Notes |
| ------------------------- | ----------------------------------------------------- | ----------------- | ----- |
| **verifyCredentialInput** | [**VerifyCredentialInput**](VerifyCredentialInput.md) | VerifyCredentials |       |

### Return type

[**VerifyCredentialOutput**](VerifyCredentialOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

## verifyPresentation

> VerifyPresentationOutput verifyPresentation(verifyPresentationInput)

Verifying VP

Verifying Verifiable Presentation (signatures) &#x60;isValid&#x60; - true if presentation verified &#x60;error&#x60; verificaction error.

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.verification.client.ApiClient;
import com.affinidi.tdk.credential.verification.client.ApiException;
import com.affinidi.tdk.credential.verification.client.Configuration;
import com.affinidi.tdk.credential.verification.client.auth.*;
import com.affinidi.tdk.credential.verification.client.models.*;
import com.affinidi.tdk.credential.verification.client.apis.DefaultApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ver");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DefaultApi apiInstance = new DefaultApi(defaultClient);
        VerifyPresentationInput verifyPresentationInput = new VerifyPresentationInput(); // VerifyPresentationInput | VerifyPresentation
        try {
            VerifyPresentationOutput result = apiInstance.verifyPresentation(verifyPresentationInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#verifyPresentation");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                        | Type                                                      | Description        | Notes |
| --------------------------- | --------------------------------------------------------- | ------------------ | ----- |
| **verifyPresentationInput** | [**VerifyPresentationInput**](VerifyPresentationInput.md) | VerifyPresentation |       |

### Return type

[**VerifyPresentationOutput**](VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |
