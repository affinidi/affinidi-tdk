# GroupApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                         | HTTP request                            | Description |
| -------------------------------------------------------------- | --------------------------------------- | ----------- |
| [**addUserToGroup**](GroupApi.md#addUserToGroup)               | **POST** /v1/groups/{groupName}/users   |             |
| [**createGroup**](GroupApi.md#createGroup)                     | **POST** /v1/groups                     |             |
| [**deleteGroup**](GroupApi.md#deleteGroup)                     | **DELETE** /v1/groups/{groupName}       |             |
| [**getGroupById**](GroupApi.md#getGroupById)                   | **GET** /v1/groups/{groupName}          |             |
| [**listGroupUserMappings**](GroupApi.md#listGroupUserMappings) | **GET** /v1/groups/{groupName}/users    |             |
| [**listGroups**](GroupApi.md#listGroups)                       | **GET** /v1/groups                      |             |
| [**removeUserFromGroup**](GroupApi.md#removeUserFromGroup)     | **DELETE** /v1/groups/{groupName}/users |             |

<a id="addUserToGroup"></a>

# **addUserToGroup**

> GroupUserMappingDto addUserToGroup(groupName, addUserToGroupInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    String groupName = "groupName_example"; // String |
    AddUserToGroupInput addUserToGroupInput = new AddUserToGroupInput(); // AddUserToGroupInput | AddUserToGroup
    try {
      GroupUserMappingDto result = apiInstance.addUserToGroup(groupName, addUserToGroupInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#addUserToGroup");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                    | Type                                              | Description    | Notes |
| ----------------------- | ------------------------------------------------- | -------------- | ----- |
| **groupName**           | **String**                                        |                |       |
| **addUserToGroupInput** | [**AddUserToGroupInput**](AddUserToGroupInput.md) | AddUserToGroup |       |

### Return type

[**GroupUserMappingDto**](GroupUserMappingDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

<a id="createGroup"></a>

# **createGroup**

> GroupDto createGroup(createGroupInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    CreateGroupInput createGroupInput = new CreateGroupInput(); // CreateGroupInput | CreateGroup
    try {
      GroupDto result = apiInstance.createGroup(createGroupInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#createGroup");
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
| **createGroupInput** | [**CreateGroupInput**](CreateGroupInput.md) | CreateGroup |       |

### Return type

[**GroupDto**](GroupDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Created         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **409**     | ConflictError   | -                |

<a id="deleteGroup"></a>

# **deleteGroup**

> deleteGroup(groupName)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    String groupName = "groupName_example"; // String |
    try {
      apiInstance.deleteGroup(groupName);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#deleteGroup");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **groupName** | **String** |             |       |

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
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

<a id="getGroupById"></a>

# **getGroupById**

> GroupDto getGroupById(groupName)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    String groupName = "groupName_example"; // String |
    try {
      GroupDto result = apiInstance.getGroupById(groupName);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#getGroupById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **groupName** | **String** |             |       |

### Return type

[**GroupDto**](GroupDto.md)

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

<a id="listGroupUserMappings"></a>

# **listGroupUserMappings**

> GroupUserMappingsList listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    String groupName = "groupName_example"; // String |
    Integer limit = 56; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    String sortOrder = "asc"; // String | sort response in specific order. By default it is in desc order
    try {
      GroupUserMappingsList result = apiInstance.listGroupUserMappings(groupName, limit, exclusiveStartKey, sortOrder);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#listGroupUserMappings");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                  | Type        | Description                                                                                                                                                    | Notes                        |
| --------------------- | ----------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **groupName**         | **String**  |                                                                                                                                                                |                              |
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional]                   |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional]                   |
| **sortOrder**         | **String**  | sort response in specific order. By default it is in desc order                                                                                                | [optional] [enum: asc, desc] |

### Return type

[**GroupUserMappingsList**](GroupUserMappingsList.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

<a id="listGroups"></a>

# **listGroups**

> GroupsList listGroups()

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    try {
      GroupsList result = apiInstance.listGroups();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#listGroups");
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

[**GroupsList**](GroupsList.md)

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

<a id="removeUserFromGroup"></a>

# **removeUserFromGroup**

> removeUserFromGroup(groupName, removeUserFromGroupInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.GroupApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    GroupApi apiInstance = new GroupApi(defaultClient);
    String groupName = "groupName_example"; // String |
    RemoveUserFromGroupInput removeUserFromGroupInput = new RemoveUserFromGroupInput(); // RemoveUserFromGroupInput | Remove user from group
    try {
      apiInstance.removeUserFromGroup(groupName, removeUserFromGroupInput);
    } catch (ApiException e) {
      System.err.println("Exception when calling GroupApi#removeUserFromGroup");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                         | Type                                                        | Description            | Notes |
| ---------------------------- | ----------------------------------------------------------- | ---------------------- | ----- |
| **groupName**                | **String**                                                  |                        |       |
| **removeUserFromGroupInput** | [**RemoveUserFromGroupInput**](RemoveUserFromGroupInput.md) | Remove user from group |       |

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
| **204**     | NoContent       | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
