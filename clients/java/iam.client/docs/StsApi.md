# StsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                             | HTTP request                                 | Description |
| ------------------------------------------------------------------ | -------------------------------------------- | ----------- |
| [**createProjectScopedToken**](StsApi.md#createProjectScopedToken) | **POST** /v1/sts/create-project-scoped-token |             |
| [**whoami**](StsApi.md#whoami)                                     | **GET** /v1/sts/whoami                       |             |

## createProjectScopedToken

> CreateProjectScopedTokenOutput createProjectScopedToken(createProjectScopedTokenInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.StsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        // Configure API key authorization: UserTokenAuth
        ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
        UserTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //UserTokenAuth.setApiKeyPrefix("Token");

        StsApi apiInstance = new StsApi(defaultClient);
        CreateProjectScopedTokenInput createProjectScopedTokenInput = new CreateProjectScopedTokenInput(); // CreateProjectScopedTokenInput | CreateProjectScopedToken
        try {
            CreateProjectScopedTokenOutput result = apiInstance.createProjectScopedToken(createProjectScopedTokenInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling StsApi#createProjectScopedToken");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                              | Type                                                                  | Description              | Notes |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------ | ----- |
| **createProjectScopedTokenInput** | [**CreateProjectScopedTokenInput**](CreateProjectScopedTokenInput.md) | CreateProjectScopedToken |       |

### Return type

[**CreateProjectScopedTokenOutput**](CreateProjectScopedTokenOutput.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                   | Response headers |
| ----------- | ----------------------------- | ---------------- |
| **200**     | Created Project Scoped Tokens | -                |
| **400**     | BadRequestError               | -                |
| **403**     | ForbiddenError                | -                |
| **500**     | UnexpectedError               | -                |

## whoami

> WhoamiDto whoami()

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.StsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        // Configure API key authorization: UserTokenAuth
        ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
        UserTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //UserTokenAuth.setApiKeyPrefix("Token");

        StsApi apiInstance = new StsApi(defaultClient);
        try {
            WhoamiDto result = apiInstance.whoami();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling StsApi#whoami");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WhoamiDto**](WhoamiDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | User info       | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |
