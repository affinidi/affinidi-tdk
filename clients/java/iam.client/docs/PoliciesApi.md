# PoliciesApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                              | HTTP request                                  | Description |
| --------------------------------------------------- | --------------------------------------------- | ----------- |
| [**getPolicies**](PoliciesApi.md#getPolicies)       | **GET** /v1/policies/principals/{principalId} |             |
| [**updatePolicies**](PoliciesApi.md#updatePolicies) | **PUT** /v1/policies/principals/{principalId} |             |

## getPolicies

> PolicyDto getPolicies(principalId, principalType)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.PoliciesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        PoliciesApi apiInstance = new PoliciesApi(defaultClient);
        String principalId = "principalId_example"; // String |
        String principalType = "user"; // String |
        try {
            PolicyDto result = apiInstance.getPolicies(principalId, principalType);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PoliciesApi#getPolicies");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name              | Type       | Description | Notes               |
| ----------------- | ---------- | ----------- | ------------------- |
| **principalId**   | **String** |             |                     |
| **principalType** | **String** |             | [enum: user, token] |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

## updatePolicies

> PolicyDto updatePolicies(principalId, principalType, policyDto)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.PoliciesApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        PoliciesApi apiInstance = new PoliciesApi(defaultClient);
        String principalId = "principalId_example"; // String |
        String principalType = "user"; // String |
        PolicyDto policyDto = new PolicyDto(); // PolicyDto | UpdatePolicies
        try {
            PolicyDto result = apiInstance.updatePolicies(principalId, principalType, policyDto);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling PoliciesApi#updatePolicies");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name              | Type                          | Description    | Notes               |
| ----------------- | ----------------------------- | -------------- | ------------------- |
| **principalId**   | **String**                    |                |                     |
| **principalType** | **String**                    |                | [enum: user, token] |
| **policyDto**     | [**PolicyDto**](PolicyDto.md) | UpdatePolicies |                     |

### Return type

[**PolicyDto**](PolicyDto.md)

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
| **500**     | UnexpectedError | -                |
