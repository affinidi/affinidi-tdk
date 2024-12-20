# ProjectsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                      | HTTP request                                     | Description |
| --------------------------------------------------------------------------- | ------------------------------------------------ | ----------- |
| [**addPrincipalToProject**](ProjectsApi.md#addPrincipalToProject)           | **POST** /v1/projects/principals                 |             |
| [**createProject**](ProjectsApi.md#createProject)                           | **POST** /v1/projects                            |             |
| [**deletePrincipalFromProject**](ProjectsApi.md#deletePrincipalFromProject) | **DELETE** /v1/projects/principals/{principalId} |             |
| [**listPrincipalsOfProject**](ProjectsApi.md#listPrincipalsOfProject)       | **GET** /v1/projects/principals                  |             |
| [**listProject**](ProjectsApi.md#listProject)                               | **GET** /v1/projects                             |             |
| [**updateProject**](ProjectsApi.md#updateProject)                           | **PATCH** /v1/projects/{projectId}               |             |

<a id="addPrincipalToProject"></a>

# **addPrincipalToProject**

> addPrincipalToProject(addUserToProjectInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    AddUserToProjectInput addUserToProjectInput = new AddUserToProjectInput(); // AddUserToProjectInput | AddPrincipalToProject
    try {
      apiInstance.addPrincipalToProject(addUserToProjectInput);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#addPrincipalToProject");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                      | Type                                                  | Description           | Notes |
| ------------------------- | ----------------------------------------------------- | --------------------- | ----- |
| **addUserToProjectInput** | [**AddUserToProjectInput**](AddUserToProjectInput.md) | AddPrincipalToProject |       |

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
| **500**     | UnexpectedError | -                |

<a id="createProject"></a>

# **createProject**

> ProjectDto createProject(createProjectInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    CreateProjectInput createProjectInput = new CreateProjectInput(); // CreateProjectInput | CreateProject
    try {
      ProjectDto result = apiInstance.createProject(createProjectInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#createProject");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **createProjectInput** | [**CreateProjectInput**](CreateProjectInput.md) | CreateProject |       |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

<a id="deletePrincipalFromProject"></a>

# **deletePrincipalFromProject**

> deletePrincipalFromProject(principalId, principalType)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    String principalId = "principalId_example"; // String | id of principal
    String principalType = "user"; // String | type of principal
    try {
      apiInstance.deletePrincipalFromProject(principalId, principalType);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#deletePrincipalFromProject");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name              | Type       | Description       | Notes               |
| ----------------- | ---------- | ----------------- | ------------------- |
| **principalId**   | **String** | id of principal   |                     |
| **principalType** | **String** | type of principal | [enum: user, token] |

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
| **204**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **409**     | ConflictError   | -                |
| **500**     | UnexpectedError | -                |

<a id="listPrincipalsOfProject"></a>

# **listPrincipalsOfProject**

> UserList listPrincipalsOfProject(limit, exclusiveStartKey)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    Integer limit = 100; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      UserList result = apiInstance.listPrincipalsOfProject(limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#listPrincipalsOfProject");
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

[**UserList**](UserList.md)

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
| **500**     | UnexpectedError | -                |

<a id="listProject"></a>

# **listProject**

> ProjectList listProject(limit, exclusiveStartKey)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    Integer limit = 100; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      ProjectList result = apiInstance.listProject(limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#listProject");
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

[**ProjectList**](ProjectList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **500**     | UnexpectedError | -                |

<a id="updateProject"></a>

# **updateProject**

> ProjectDto updateProject(projectId, updateProjectInput)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.auth.*;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ProjectsApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    // Configure API key authorization: UserTokenAuth
    ApiKeyAuth UserTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("UserTokenAuth");
    UserTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //UserTokenAuth.setApiKeyPrefix("Token");

    ProjectsApi apiInstance = new ProjectsApi(defaultClient);
    String projectId = "projectId_example"; // String | projectId
    UpdateProjectInput updateProjectInput = new UpdateProjectInput(); // UpdateProjectInput | UpdateProject
    try {
      ProjectDto result = apiInstance.updateProject(projectId, updateProjectInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ProjectsApi#updateProject");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                   | Type                                            | Description   | Notes |
| ---------------------- | ----------------------------------------------- | ------------- | ----- |
| **projectId**          | **String**                                      | projectId     |       |
| **updateProjectInput** | [**UpdateProjectInput**](UpdateProjectInput.md) | UpdateProject |       |

### Return type

[**ProjectDto**](ProjectDto.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |
