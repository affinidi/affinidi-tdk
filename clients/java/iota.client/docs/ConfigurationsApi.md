# ConfigurationsApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                | HTTP request                                                               | Description |
| ------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ----------- |
| [**createIotaConfiguration**](ConfigurationsApi.md#createIotaConfiguration)           | **POST** /v1/configurations                                                |             |
| [**deleteIotaConfigurationById**](ConfigurationsApi.md#deleteIotaConfigurationById)   | **DELETE** /v1/configurations/{configurationId}                            |             |
| [**getIotaConfigurationById**](ConfigurationsApi.md#getIotaConfigurationById)         | **GET** /v1/configurations/{configurationId}                               |             |
| [**getIotaConfigurationMetaData**](ConfigurationsApi.md#getIotaConfigurationMetaData) | **GET** /v1/projects/{projectId}/configurations/{configurationId}/metadata |             |
| [**listIotaConfigurations**](ConfigurationsApi.md#listIotaConfigurations)             | **GET** /v1/configurations                                                 |             |
| [**updateIotaConfigurationById**](ConfigurationsApi.md#updateIotaConfigurationById)   | **PATCH** /v1/configurations/{configurationId}                             |             |

## createIotaConfiguration

> IotaConfigurationDto createIotaConfiguration(createIotaConfigurationInput)

Creates a new Affinidi Iota Framework configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        CreateIotaConfigurationInput createIotaConfigurationInput = new CreateIotaConfigurationInput(); // CreateIotaConfigurationInput | CreateConfiguration
        try {
            IotaConfigurationDto result = apiInstance.createIotaConfiguration(createIotaConfigurationInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#createIotaConfiguration");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                             | Type                                                                | Description         | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ------------------- | ----- |
| **createIotaConfigurationInput** | [**CreateIotaConfigurationInput**](CreateIotaConfigurationInput.md) | CreateConfiguration |       |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers |
| ----------- | --------------------- | ---------------- |
| **201**     | CreateConfigurationOK | -                |
| **400**     | BadRequestError       | -                |
| **403**     | ForbiddenError        | -                |
| **409**     | ConflictError         | -                |
| **422**     | UnprocessableEntity   | -                |

## deleteIotaConfigurationById

> deleteIotaConfigurationById(configurationId)

Deletes an Affinidi Iota Framework configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        try {
            apiInstance.deleteIotaConfigurationById(configurationId);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#deleteIotaConfigurationById");
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
| **204**     | Deleted         | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

## getIotaConfigurationById

> IotaConfigurationDto getIotaConfigurationById(configurationId)

Retrieves the details of an Affinidi Iota Framework configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        try {
            IotaConfigurationDto result = apiInstance.getIotaConfigurationById(configurationId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#getIotaConfigurationById");
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

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description            | Response headers |
| ----------- | ---------------------- | ---------------- |
| **200**     | GetConfigurationByIdOK | -                |
| **400**     | BadRequestError        | -                |
| **403**     | ForbiddenError         | -                |
| **404**     | NotFoundError          | -                |

## getIotaConfigurationMetaData

> GetIotaConfigurationMetaDataOK getIotaConfigurationMetaData(projectId, configurationId)

Retrieves the client metadata of an Affinidi Iota Framework configuration.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        String projectId = "projectId_example"; // String | The ID of the project.
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        try {
            GetIotaConfigurationMetaDataOK result = apiInstance.getIotaConfigurationMetaData(projectId, configurationId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#getIotaConfigurationMetaData");
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
| **projectId**       | **String** | The ID of the project.                           |       |
| **configurationId** | **String** | ID of the Affinidi Iota Framework configuration. |       |

### Return type

[**GetIotaConfigurationMetaDataOK**](GetIotaConfigurationMetaDataOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                    | Response headers |
| ----------- | ------------------------------ | ---------------- |
| **200**     | GetIotaConfigurationMetaDataOK | -                |
| **400**     | BadRequestError                | -                |
| **403**     | ForbiddenError                 | -                |

## listIotaConfigurations

> ListConfigurationOK listIotaConfigurations()

List all Affinidi Iota Framework configurations.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        try {
            ListConfigurationOK result = apiInstance.listIotaConfigurations();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#listIotaConfigurations");
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

[**ListConfigurationOK**](ListConfigurationOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | ListConfigurationOK | -                |
| **400**     | BadRequestError     | -                |
| **403**     | ForbiddenError      | -                |

## updateIotaConfigurationById

> IotaConfigurationDto updateIotaConfigurationById(configurationId, updateConfigurationByIdInput)

Updates the details of an Affinidi Iota Framework configuration by ID.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.ConfigurationsApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationsApi apiInstance = new ConfigurationsApi(defaultClient);
        String configurationId = "configurationId_example"; // String | ID of the Affinidi Iota Framework configuration.
        UpdateConfigurationByIdInput updateConfigurationByIdInput = new UpdateConfigurationByIdInput(); // UpdateConfigurationByIdInput | UpdateConfigurationById
        try {
            IotaConfigurationDto result = apiInstance.updateIotaConfigurationById(configurationId, updateConfigurationByIdInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationsApi#updateIotaConfigurationById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                             | Type                                                                | Description                                      | Notes |
| -------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------ | ----- |
| **configurationId**              | **String**                                                          | ID of the Affinidi Iota Framework configuration. |       |
| **updateConfigurationByIdInput** | [**UpdateConfigurationByIdInput**](UpdateConfigurationByIdInput.md) | UpdateConfigurationById                          |       |

### Return type

[**IotaConfigurationDto**](IotaConfigurationDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | UpdateConfigurationByIdOK | -                |
| **400**     | BadRequestError           | -                |
| **403**     | ForbiddenError            | -                |
| **404**     | NotFoundError             | -                |
