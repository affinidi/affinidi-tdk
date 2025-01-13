# DenyListApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                    | HTTP request                         | Description |
| --------------------------------------------------------- | ------------------------------------ | ----------- |
| [**blockGroups**](DenyListApi.md#blockGroups)             | **POST** /v1/deny-list/groups/add    |             |
| [**blockUsers**](DenyListApi.md#blockUsers)               | **POST** /v1/deny-list/users/add     |             |
| [**listBlockedGroups**](DenyListApi.md#listBlockedGroups) | **GET** /v1/deny-list/groups         |             |
| [**listBlockedUsers**](DenyListApi.md#listBlockedUsers)   | **GET** /v1/deny-list/users          |             |
| [**unblockGroups**](DenyListApi.md#unblockGroups)         | **POST** /v1/deny-list/groups/remove |             |
| [**unblockUsers**](DenyListApi.md#unblockUsers)           | **POST** /v1/deny-list/users/remove  |             |

## blockGroups

> blockGroups(groupNamesInput)

Block Single or Multiple Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        GroupNamesInput groupNamesInput = new GroupNamesInput(); // GroupNamesInput | List of group names as input
        try {
            apiInstance.blockGroups(groupNamesInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#blockGroups");
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

## blockUsers

> blockUsers(blockedUsersInput)

Block Single or Multiple user ids

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        BlockedUsersInput blockedUsersInput = new BlockedUsersInput(); // BlockedUsersInput | List of blocked users as input
        try {
            apiInstance.blockUsers(blockedUsersInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#blockUsers");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description                    | Notes      |
| --------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blockedUsersInput** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

## listBlockedGroups

> GroupNames listBlockedGroups(pageToken)

Get Blocked Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        String pageToken = "pageToken_example"; // String |
        try {
            GroupNames result = apiInstance.listBlockedGroups(pageToken);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#listBlockedGroups");
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

## listBlockedUsers

> BlockedUsers listBlockedUsers(pageToken)

Get List of Blocked Users

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        String pageToken = "pageToken_example"; // String |
        try {
            BlockedUsers result = apiInstance.listBlockedUsers(pageToken);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#listBlockedUsers");
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

[**BlockedUsers**](BlockedUsers.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | Blocked user ids response | -                |

## unblockGroups

> unblockGroups(groupNamesInput)

Unblock Single or Multiple Groups

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        GroupNamesInput groupNamesInput = new GroupNamesInput(); // GroupNamesInput | List of group names as input
        try {
            apiInstance.unblockGroups(groupNamesInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#unblockGroups");
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

## unblockUsers

> unblockUsers(blockedUsersInput)

Unblock Single or Multiple user ids

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.DenyListApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DenyListApi apiInstance = new DenyListApi(defaultClient);
        BlockedUsersInput blockedUsersInput = new BlockedUsersInput(); // BlockedUsersInput | List of blocked users as input
        try {
            apiInstance.unblockUsers(blockedUsersInput);
        } catch (ApiException e) {
            System.err.println("Exception when calling DenyListApi#unblockUsers");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                  | Type                                          | Description                    | Notes      |
| --------------------- | --------------------------------------------- | ------------------------------ | ---------- |
| **blockedUsersInput** | [**BlockedUsersInput**](BlockedUsersInput.md) | List of blocked users as input | [optional] |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |
