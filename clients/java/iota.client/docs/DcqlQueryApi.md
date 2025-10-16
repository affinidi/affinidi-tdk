# DcqlQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                         | HTTP request                                                           | Description |
| -------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------- |
| [**createDcqlQuery**](DcqlQueryApi.md#createDcqlQuery)         | **POST** /v1/configurations/{configurationId}/dcql-queries             |             |
| [**deleteDcqlQueryById**](DcqlQueryApi.md#deleteDcqlQueryById) | **DELETE** /v1/configurations/{configurationId}/dcql-queries/{queryId} |             |
| [**getDcqlQueryById**](DcqlQueryApi.md#getDcqlQueryById)       | **GET** /v1/configurations/{configurationId}/dcql-queries/{queryId}    |             |
| [**listDcqlQueries**](DcqlQueryApi.md#listDcqlQueries)         | **GET** /v1/configurations/{configurationId}/dcql-queries              |             |
| [**updateDcqlQueryById**](DcqlQueryApi.md#updateDcqlQueryById) | **PATCH** /v1/configurations/{configurationId}/dcql-queries/{queryId}  |             |

## createDcqlQuery

> DcqlQueryDto createDcqlQuery(configurationId, createDcqlQueryInput)

Creates a new DCQL query in the configuration to query data.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DcqlQueryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DcqlQueryApi apiInstance = new DcqlQueryApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        CreateDcqlQueryInput createDcqlQueryInput = new CreateDcqlQueryInput(); // CreateDcqlQueryInput | CreateDcqlQuery
        try {
            DcqlQueryDto result = apiInstance.createDcqlQuery(configurationId, createDcqlQueryInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DcqlQueryApi#createDcqlQuery");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                     | Type                                                | Description                                      | Notes |
| ------------------------ | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**      | **String**                                          | ID of the Affinidi Iota Framework configuration. |       |
| **createDcqlQueryInput** | [**CreateDcqlQueryInput**](CreateDcqlQueryInput.md) | CreateDcqlQuery                                  |       |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **201**     | CreateDcqlQueryOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

## deleteDcqlQueryById

> deleteDcqlQueryById(configurationId, queryId)

Deletes a DCQL query in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DcqlQueryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DcqlQueryApi apiInstance = new DcqlQueryApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        String queryId = "queryId_example"; // String | The ID of the query.
        try {
            apiInstance.deleteDcqlQueryById(configurationId, queryId);
        } catch (ApiException e) {
            System.err.println("Exception when calling DcqlQueryApi#deleteDcqlQueryById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |       |
| **queryId**         | **String** | The ID of the query.                             |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Deleted         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

## getDcqlQueryById

> DcqlQueryDto getDcqlQueryById(configurationId, queryId)

Retrieves a DCQL query in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DcqlQueryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DcqlQueryApi apiInstance = new DcqlQueryApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        String queryId = "queryId_example"; // String | The ID of the query.
        try {
            DcqlQueryDto result = apiInstance.getDcqlQueryById(configurationId, queryId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DcqlQueryApi#getDcqlQueryById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type       | Description                                      | Notes |
| ------------------- | ---------- | ------------------------------------------------ | ----- |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |       |
| **queryId**         | **String** | The ID of the query.                             |       |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers |
| ----------- | ------------------ | ---------------- |
| **200**     | GetDcqlQueryByIdOK | -                |
| **400**     | BadRequestError    | -                |
| **403**     | ForbiddenError     | -                |

## listDcqlQueries

> ListDcqlQueriesOK listDcqlQueries(configurationId, limit, exclusiveStartKey)

Lists all DCQL queries in the configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DcqlQueryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DcqlQueryApi apiInstance = new DcqlQueryApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        Integer limit = 56; // Integer | Maximum number of records to fetch in a list
        String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
        try {
            ListDcqlQueriesOK result = apiInstance.listDcqlQueries(configurationId, limit, exclusiveStartKey);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DcqlQueryApi#listDcqlQueries");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes      |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **configurationId**   | **String**  | ID of the Affinidi Iota Framework configuration.                                                                                                               |            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListDcqlQueriesOK**](ListDcqlQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | ListDcqlQueriesOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |

## updateDcqlQueryById

> DcqlQueryDto updateDcqlQueryById(configurationId, queryId, updateDcqlQueryInput)

Updates the DCQL query in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DcqlQueryApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DcqlQueryApi apiInstance = new DcqlQueryApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        String queryId = "queryId_example"; // String | The ID of the query.
        UpdateDcqlQueryInput updateDcqlQueryInput = new UpdateDcqlQueryInput(); // UpdateDcqlQueryInput | UpdateDcqlQueryById
        try {
            DcqlQueryDto result = apiInstance.updateDcqlQueryById(configurationId, queryId, updateDcqlQueryInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DcqlQueryApi#updateDcqlQueryById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                     | Type                                                | Description                                      | Notes |
| ------------------------ | --------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**      | **String**                                          | ID of the Affinidi Iota Framework configuration. |       |
| **queryId**              | **String**                                          | The ID of the query.                             |       |
| **updateDcqlQueryInput** | [**UpdateDcqlQueryInput**](UpdateDcqlQueryInput.md) | UpdateDcqlQueryById                              |       |

### Return type

[**DcqlQueryDto**](DcqlQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | UpdateDcqlQueryByIdOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
