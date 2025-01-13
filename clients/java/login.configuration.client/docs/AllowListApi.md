# AllowListApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                     | HTTP request                          | Description |
| ---------------------------------------------------------- | ------------------------------------- | ----------- |
| [**allowGroups**](AllowListApi.md#allowGroups)             | **POST** /v1/allow-list/groups/add    |             |
| [**disallowGroups**](AllowListApi.md#disallowGroups)       | **POST** /v1/allow-list/groups/remove |             |
| [**listAllowedGroups**](AllowListApi.md#listAllowedGroups) | **GET** /v1/allow-list/groups         |             |

## allowGroups

> allowGroups(groupNamesInput)

Allow Single or Multiple Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.AllowListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        AllowListApi apiInstance = new AllowListApi(defaultClient);
        GroupNamesInput groupNamesInput = new GroupNamesInput(); // GroupNamesInput | List of group names as input
        try {
            apiInstance.allowGroups(groupNamesInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling AllowListApi#allowGroups");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type                                      | Description                  | Notes      |
| ------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **groupNamesInput** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

null (empty response body)

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

## disallowGroups

> disallowGroups(groupNamesInput)

Disallow Single or Multiple Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.AllowListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        AllowListApi apiInstance = new AllowListApi(defaultClient);
        GroupNamesInput groupNamesInput = new GroupNamesInput(); // GroupNamesInput | List of group names as input
        try {
            apiInstance.disallowGroups(groupNamesInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling AllowListApi#disallowGroups");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type                                      | Description                  | Notes      |
| ------------------- | ----------------------------------------- | ---------------------------- | ---------- |
| **groupNamesInput** | [**GroupNamesInput**](GroupNamesInput.md) | List of group names as input | [optional] |

### Return type

null (empty response body)

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

## listAllowedGroups

> GroupNames listAllowedGroups(pageToken)

Get Allowed Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.AllowListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        AllowListApi apiInstance = new AllowListApi(defaultClient);
        String pageToken = "pageToken_example"; // String |
        try {
            GroupNames result = apiInstance.listAllowedGroups(pageToken);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling AllowListApi#listAllowedGroups");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes      |
| ------------- | ---------- | ----------- | ---------- |
| **pageToken** | **String** |             | [optional] |

### Return type

[**GroupNames**](GroupNames.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **200**     | Groups Names Response | -                |
