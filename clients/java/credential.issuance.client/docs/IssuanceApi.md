# IssuanceApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                  | HTTP request                                        | Description |
| ------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**issuanceState**](IssuanceApi.md#issuanceState)       | **GET** /v1/{projectId}/issuance/state/{issuanceId} |             |
| [**issueCredentials**](IssuanceApi.md#issueCredentials) | **POST** /v1/{projectId}/credential/issue           |             |
| [**listIssuance**](IssuanceApi.md#listIssuance)         | **GET** /v1/{projectId}/issuance                    |             |
| [**startIssuance**](IssuanceApi.md#startIssuance)       | **POST** /v1/{projectId}/issuance/start             |             |

## issuanceState

> IssuanceStateResponse issuanceState(issuanceId, projectId)

Get issuance status

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        IssuanceApi apiInstance = new IssuanceApi(defaultClient);
        String issuanceId = "issuanceId_example"; // String |
        String projectId = "projectId_example"; // String | Affinidi project id
        try {
            IssuanceStateResponse result = apiInstance.issuanceState(issuanceId, projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IssuanceApi#issuanceState");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name           | Type       | Description         | Notes |
| -------------- | ---------- | ------------------- | ----- |
| **issuanceId** | **String** |                     |       |
| **projectId**  | **String** | Affinidi project id |       |

### Return type

[**IssuanceStateResponse**](IssuanceStateResponse.md)

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
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

## issueCredentials

> CredentialResponse issueCredentials(projectId, startIssuanceInput)

Endpoint to issue credentials directly without following OID4VCI flow

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        IssuanceApi apiInstance = new IssuanceApi(defaultClient);
        String projectId = "projectId_example"; // String | Affinidi project id
        StartIssuanceInput startIssuanceInput = new StartIssuanceInput(); // StartIssuanceInput | Request body to start issuance
        try {
            CredentialResponse result = apiInstance.issueCredentials(projectId, startIssuanceInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IssuanceApi#issueCredentials");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description                    | Notes |
| ---------------------- | ----------------------------------------------- | ------------------------------ | ----- |
| **projectId**          | **String**                                      | Affinidi project id            |       |
| **startIssuanceInput** | [**StartIssuanceInput**](StartIssuanceInput.md) | Request body to start issuance |       |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | -                                                                                                                 |

## listIssuance

> ListIssuanceResponse listIssuance(projectId)

List all issuances for Project

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        IssuanceApi apiInstance = new IssuanceApi(defaultClient);
        String projectId = "projectId_example"; // String | Affinidi project id
        try {
            ListIssuanceResponse result = apiInstance.listIssuance(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IssuanceApi#listIssuance");
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

[**ListIssuanceResponse**](ListIssuanceResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **200**     | Ok             | -                |
| **403**     | ForbiddenError | -                |

## startIssuance

> StartIssuanceResponse startIssuance(projectId, startIssuanceInput)

Endpoint used b websites to start the issuance process

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.IssuanceApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        IssuanceApi apiInstance = new IssuanceApi(defaultClient);
        String projectId = "projectId_example"; // String | Affinidi project id
        StartIssuanceInput startIssuanceInput = new StartIssuanceInput(); // StartIssuanceInput | Request body to start issuance
        try {
            StartIssuanceResponse result = apiInstance.startIssuance(projectId, startIssuanceInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IssuanceApi#startIssuance");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                   | Type                                            | Description                    | Notes |
| ---------------------- | ----------------------------------------------- | ------------------------------ | ----- |
| **projectId**          | **String**                                      | Affinidi project id            |       |
| **startIssuanceInput** | [**StartIssuanceInput**](StartIssuanceInput.md) | Request body to start issuance |       |

### Return type

[**StartIssuanceResponse**](StartIssuanceResponse.md)

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
| **403**     | ForbiddenError  | -                |
