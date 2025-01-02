# PexQueryApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request                                                          | Description |
| ----------------------------------------------------------- | --------------------------------------------------------------------- | ----------- |
| [**createPexQuery**](PexQueryApi.md#createPexQuery)         | **POST** /v1/configurations/{configurationId}/pex-queries             |             |
| [**deletePexQueries**](PexQueryApi.md#deletePexQueries)     | **POST** /v1/configurations/{configurationId}/delete-queries          |             |
| [**deletePexQueryById**](PexQueryApi.md#deletePexQueryById) | **DELETE** /v1/configurations/{configurationId}/pex-queries/{queryId} |             |
| [**getPexQueryById**](PexQueryApi.md#getPexQueryById)       | **GET** /v1/configurations/{configurationId}/pex-queries/{queryId}    |             |
| [**listPexQueries**](PexQueryApi.md#listPexQueries)         | **GET** /v1/configurations/{configurationId}/pex-queries              |             |
| [**savePexQueries**](PexQueryApi.md#savePexQueries)         | **POST** /v1/configurations/{configurationId}/save-queries            |             |
| [**updatePexQueryById**](PexQueryApi.md#updatePexQueryById) | **PATCH** /v1/configurations/{configurationId}/pex-queries/{queryId}  |             |

<a id="createPexQuery"></a>

# **createPexQuery**

> PexQueryDto createPexQuery(configurationId, createPexQueryInput)

Creates a new Presentation Definition in the configuration to query data.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    CreatePexQueryInput createPexQueryInput = new CreatePexQueryInput(); // CreatePexQueryInput | CreatePexQuery
    try {
      PexQueryDto result = apiInstance.createPexQuery(configurationId, createPexQueryInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#createPexQuery");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                    | Type                                              | Description                                      | Notes |
| ----------------------- | ------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**     | **String**                                        | ID of the Affinidi Iota Framework configuration. |       |
| **createPexQueryInput** | [**CreatePexQueryInput**](CreatePexQueryInput.md) | CreatePexQuery                                   |       |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **201**     | CreatePexQueryOK    | -                |
| **400**     | BadRequestError     | -                |
| **403**     | ForbiddenError      | -                |
| **404**     | NotFoundError       | -                |
| **409**     | ConflictError       | -                |
| **422**     | UnprocessableEntity | -                |

<a id="deletePexQueries"></a>

# **deletePexQueries**

> deletePexQueries(configurationId)

Deletes all Presentation Definition queries of a configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    try {
      apiInstance.deletePexQueries(configurationId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#deletePexQueries");
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
| **200**     |                 | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

<a id="deletePexQueryById"></a>

# **deletePexQueryById**

> deletePexQueryById(configurationId, queryId)

Deletes a Presentation Definition in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    String queryId = "queryId_example"; // String | The ID of the query.
    try {
      apiInstance.deletePexQueryById(configurationId, queryId);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#deletePexQueryById");
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
| **404**     | NotFoundError   | -                |

<a id="getPexQueryById"></a>

# **getPexQueryById**

> PexQueryDto getPexQueryById(configurationId, queryId)

Retrieves a Presentation Definition in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    String queryId = "queryId_example"; // String | The ID of the query.
    try {
      PexQueryDto result = apiInstance.getPexQueryById(configurationId, queryId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#getPexQueryById");
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

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | GetPexQueryByIdOK | -                |
| **400**     | BadRequestError   | -                |
| **403**     | ForbiddenError    | -                |
| **404**     | NotFoundError     | -                |

<a id="listPexQueries"></a>

# **listPexQueries**

> ListPexQueriesOK listPexQueries(configurationId, limit, exclusiveStartKey)

Lists all Presentation Definitions in the configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    Integer limit = 56; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      ListPexQueriesOK result = apiInstance.listPexQueries(configurationId, limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#listPexQueries");
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

[**ListPexQueriesOK**](ListPexQueriesOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description      | Response headers |
| ----------- | ---------------- | ---------------- |
| **200**     | ListPexQueriesOK | -                |
| **400**     | BadRequestError  | -                |
| **403**     | ForbiddenError   | -                |
| **404**     | NotFoundError    | -                |

<a id="savePexQueries"></a>

# **savePexQueries**

> Object savePexQueries(configurationId, savePexQueriesUpdateInput)

Saves all Presentation Definition queries of a configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    SavePexQueriesUpdateInput savePexQueriesUpdateInput = new SavePexQueriesUpdateInput(); // SavePexQueriesUpdateInput | SavePexQueriesInput
    try {
      Object result = apiInstance.savePexQueries(configurationId, savePexQueriesUpdateInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#savePexQueries");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                          | Type                                                          | Description                                      | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**           | **String**                                                    | ID of the Affinidi Iota Framework configuration. |       |
| **savePexQueriesUpdateInput** | [**SavePexQueriesUpdateInput**](SavePexQueriesUpdateInput.md) | SavePexQueriesInput                              |       |

### Return type

**Object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | SavePexQueriesResponseOK | -                |
| **400**     | BadRequestError          | -                |
| **403**     | ForbiddenError           | -                |

<a id="updatePexQueryById"></a>

# **updatePexQueryById**

> PexQueryDto updatePexQueryById(configurationId, queryId, updatePexQueryInput)

Updates the Presentation Definition in the configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.PexQueryApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    PexQueryApi apiInstance = new PexQueryApi(defaultClient);
    String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
    String queryId = "queryId_example"; // String | The ID of the query.
    UpdatePexQueryInput updatePexQueryInput = new UpdatePexQueryInput(); // UpdatePexQueryInput | UpdatePexQueryById
    try {
      PexQueryDto result = apiInstance.updatePexQueryById(configurationId, queryId, updatePexQueryInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling PexQueryApi#updatePexQueryById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                    | Type                                              | Description                                      | Notes |
| ----------------------- | ------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**     | **String**                                        | ID of the Affinidi Iota Framework configuration. |       |
| **queryId**             | **String**                                        | The ID of the query.                             |       |
| **updatePexQueryInput** | [**UpdatePexQueryInput**](UpdatePexQueryInput.md) | UpdatePexQueryById                               |       |

### Return type

[**PexQueryDto**](PexQueryDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | UpdatePexQueryByIdOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
