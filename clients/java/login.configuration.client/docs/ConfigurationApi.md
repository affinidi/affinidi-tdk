# ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                 | HTTP request                                          | Description                                |
| -------------------------------------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------ |
| [**createLoginConfigurations**](ConfigurationApi.md#createLoginConfigurations)         | **POST** /v1/login/configurations                     | Create a new login configuration           |
| [**deleteLoginConfigurationsById**](ConfigurationApi.md#deleteLoginConfigurationsById) | **DELETE** /v1/login/configurations/{configurationId} | Delete login configurations by ID          |
| [**getClientMetadataByClientId**](ConfigurationApi.md#getClientMetadataByClientId)     | **GET** /v1/login/configurations/metadata/{clientId}  | Get Client Metadata By OAuth 2.0 Client ID |
| [**getLoginConfigurationsById**](ConfigurationApi.md#getLoginConfigurationsById)       | **GET** /v1/login/configurations/{configurationId}    | Get login configuration by ID              |
| [**listLoginConfigurations**](ConfigurationApi.md#listLoginConfigurations)             | **GET** /v1/login/configurations                      | List login configurations                  |
| [**updateLoginConfigurationsById**](ConfigurationApi.md#updateLoginConfigurationsById) | **PATCH** /v1/login/configurations/{configurationId}  | Update login configurations by ID          |

<a id="createLoginConfigurations"></a>

# **createLoginConfigurations**

> CreateLoginConfigurationOutput createLoginConfigurations(createLoginConfigurationInput)

Create a new login configuration

Create a new login configuration &#x60;vpDefinition&#x60; and &#x60;idTokenMapping&#x60; have default settings that provide user email VP presentation definitions. An essential default definition is in place when it comes to the login process for end users using the Chrome extension. This definition requires users to input their email address as OIDCVP compliant, which is then verified by the Affinidi verification service.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    CreateLoginConfigurationInput createLoginConfigurationInput = new CreateLoginConfigurationInput(); // CreateLoginConfigurationInput | CreateLoginConfigurations
    try {
      CreateLoginConfigurationOutput result = apiInstance.createLoginConfigurations(createLoginConfigurationInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#createLoginConfigurations");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                              | Type                                                                  | Description               | Notes      |
| --------------------------------- | --------------------------------------------------------------------- | ------------------------- | ---------- |
| **createLoginConfigurationInput** | [**CreateLoginConfigurationInput**](CreateLoginConfigurationInput.md) | CreateLoginConfigurations | [optional] |

### Return type

[**CreateLoginConfigurationOutput**](CreateLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | Created               | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **424**     | FailedDependencyError | -                |

<a id="deleteLoginConfigurationsById"></a>

# **deleteLoginConfigurationsById**

> deleteLoginConfigurationsById(configurationId)

Delete login configurations by ID

Delete login configurations by ID

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    String configurationId = "configurationId_example"; // String | The id of the login configuration
    try {
      apiInstance.deleteLoginConfigurationsById(configurationId);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#deleteLoginConfigurationsById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                | Type       | Description                       | Notes |
| ------------------- | ---------- | --------------------------------- | ----- |
| **configurationId** | **String** | The id of the login configuration |       |

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

<a id="getClientMetadataByClientId"></a>

# **getClientMetadataByClientId**

> LoginConfigurationClientMetadataOutput getClientMetadataByClientId(clientId)

Get Client Metadata By OAuth 2.0 Client ID

Get Client Metadata By OAuth 2.0 Client ID

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    String clientId = "clientId_example"; // String | OAuth 2.0 Client ID
    try {
      LoginConfigurationClientMetadataOutput result = apiInstance.getClientMetadataByClientId(clientId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#getClientMetadataByClientId");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name         | Type       | Description         | Notes |
| ------------ | ---------- | ------------------- | ----- |
| **clientId** | **String** | OAuth 2.0 Client ID |       |

### Return type

[**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

<a id="getLoginConfigurationsById"></a>

# **getLoginConfigurationsById**

> LoginConfigurationObject getLoginConfigurationsById(configurationId)

Get login configuration by ID

Get login configuration by ID

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    String configurationId = "configurationId_example"; // String | The id of the login configuration
    try {
      LoginConfigurationObject result = apiInstance.getLoginConfigurationsById(configurationId);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#getLoginConfigurationsById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                | Type       | Description                       | Notes |
| ------------------- | ---------- | --------------------------------- | ----- |
| **configurationId** | **String** | The id of the login configuration |       |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                 | Response headers |
| ----------- | --------------------------- | ---------------- |
| **200**     | GetLoginConfigurationOutput | -                |
| **400**     | BadRequestError             | -                |
| **403**     | ForbiddenError              | -                |

<a id="listLoginConfigurations"></a>

# **listLoginConfigurations**

> ListLoginConfigurationOutput listLoginConfigurations(limit, exclusiveStartKey)

List login configurations

Endpoint to retrieve list of login configurations

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    Integer limit = 56; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
    try {
      ListLoginConfigurationOutput result = apiInstance.listLoginConfigurations(limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#listLoginConfigurations");
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
| **limit**             | **Integer** | Maximum number of records to fetch in a list                                                                                                                   | [optional] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoginConfigurationOutput**](ListLoginConfigurationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers |
| ----------- | ---------------------------- | ---------------- |
| **200**     | ListLoginConfigurationOutput | -                |
| **400**     | BadRequestError              | -                |
| **403**     | ForbiddenError               | -                |

<a id="updateLoginConfigurationsById"></a>

# **updateLoginConfigurationsById**

> LoginConfigurationObject updateLoginConfigurationsById(configurationId, updateLoginConfigurationInput)

Update login configurations by ID

Update login configurations by ID

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.auth.*;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.ConfigurationApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
    String configurationId = "configurationId_example"; // String | The id of the login configuration
    UpdateLoginConfigurationInput updateLoginConfigurationInput = new UpdateLoginConfigurationInput(); // UpdateLoginConfigurationInput | UpdateLoginConfigurationsById
    try {
      LoginConfigurationObject result = apiInstance.updateLoginConfigurationsById(configurationId, updateLoginConfigurationInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigurationApi#updateLoginConfigurationsById");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                              | Type                                                                  | Description                       | Notes      |
| --------------------------------- | --------------------------------------------------------------------- | --------------------------------- | ---------- |
| **configurationId**               | **String**                                                            | The id of the login configuration |            |
| **updateLoginConfigurationInput** | [**UpdateLoginConfigurationInput**](UpdateLoginConfigurationInput.md) | UpdateLoginConfigurationsById     | [optional] |

### Return type

[**LoginConfigurationObject**](LoginConfigurationObject.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | UpdateLoginConfigurationOutput | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |
