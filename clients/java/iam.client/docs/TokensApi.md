# TokensApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                      | HTTP request                          | Description |
| ----------------------------------------------------------- | ------------------------------------- | ----------- |
| [**createToken**](TokensApi.md#createToken)                 | **POST** /v1/tokens                   |             |
| [**deleteToken**](TokensApi.md#deleteToken)                 | **DELETE** /v1/tokens/{tokenId}       |             |
| [**getToken**](TokensApi.md#getToken)                       | **GET** /v1/tokens/{tokenId}          |             |
| [**listProjectsOfToken**](TokensApi.md#listProjectsOfToken) | **GET** /v1/tokens/{tokenId}/projects |             |
| [**listToken**](TokensApi.md#listToken)                     | **GET** /v1/tokens                    |             |
| [**updateToken**](TokensApi.md#updateToken)                 | **PATCH** /v1/tokens/{tokenId}        |             |

<a id="createToken"></a>

# **createToken**

> TokenDto createToken(createTokenInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    CreateTokenInput createTokenInput = new CreateTokenInput(); // CreateTokenInput | CreateToken
    try {
      TokenDto result = apiInstance.createToken(createTokenInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#createToken");
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
| **createTokenInput** | [**CreateTokenInput**](CreateTokenInput.md) | CreateToken |       |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Created Token   | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

<a id="deleteToken"></a>

# **deleteToken**

> deleteToken(tokenId)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    UUID tokenId = UUID.randomUUID(); // UUID |
    try {
      apiInstance.deleteToken(tokenId);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#deleteToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name        | Type     | Description | Notes |
| ----------- | -------- | ----------- | ----- |
| **tokenId** | **UUID** |             |       |

### Return type

null (empty response body)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **204**     | Token Deleted   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

<a id="getToken"></a>

# **getToken**

> TokenDto getToken(tokenId)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    UUID tokenId = UUID.randomUUID(); // UUID |
    try {
      TokenDto result = apiInstance.getToken(tokenId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#getToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name        | Type     | Description | Notes |
| ----------- | -------- | ----------- | ----- |
| **tokenId** | **UUID** |             |       |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Token           | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

<a id="listProjectsOfToken"></a>

# **listProjectsOfToken**

> ProjectWithPolicyList listProjectsOfToken(tokenId, limit, exclusiveStartKey)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    UUID tokenId = UUID.randomUUID(); // UUID |
    Integer limit = 100; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      ProjectWithPolicyList result = apiInstance.listProjectsOfToken(tokenId, limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#listProjectsOfToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                       |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| **tokenId**           | **UUID**    |                                                                                                                                                                |                             |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                  |

### Return type

[**ProjectWithPolicyList**](ProjectWithPolicyList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

<a id="listToken"></a>

# **listToken**

> TokenList listToken(limit, exclusiveStartKey)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    Integer limit = 100; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      TokenList result = apiInstance.listToken(limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#listToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                       |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------- |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] [default to 100] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                  |

### Return type

[**TokenList**](TokenList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | List of Tokens  | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

<a id="updateToken"></a>

# **updateToken**

> TokenDto updateToken(tokenId, updateTokenInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.TokensApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    TokensApi apiInstance = new TokensApi(defaultClient);
    UUID tokenId = UUID.randomUUID(); // UUID |
    UpdateTokenInput updateTokenInput = new UpdateTokenInput(); // UpdateTokenInput | UpdateToken
    try {
      TokenDto result = apiInstance.updateToken(tokenId, updateTokenInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling TokensApi#updateToken");
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
| **tokenId**          | **UUID**                                    |             |       |
| **updateTokenInput** | [**UpdateTokenInput**](UpdateTokenInput.md) | UpdateToken |       |

### Return type

[**TokenDto**](TokenDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Updated Token   | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |
