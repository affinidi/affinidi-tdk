# ConfigurationApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                       | HTTP request                                    | Description |
| ---------------------------------------------------------------------------- | ----------------------------------------------- | ----------- |
| [**createIssuanceConfig**](ConfigurationApi.md#createIssuanceConfig)         | **POST** /v1/configurations                     |             |
| [**deleteIssuanceConfigById**](ConfigurationApi.md#deleteIssuanceConfigById) | **DELETE** /v1/configurations/{configurationId} |             |
| [**getIssuanceConfigById**](ConfigurationApi.md#getIssuanceConfigById)       | **GET** /v1/configurations/{configurationId}    |             |
| [**getIssuanceConfigList**](ConfigurationApi.md#getIssuanceConfigList)       | **GET** /v1/configurations                      |             |
| [**updateIssuanceConfigById**](ConfigurationApi.md#updateIssuanceConfigById) | **PUT** /v1/configurations/{configurationId}    |             |

## createIssuanceConfig

> IssuanceConfigDto createIssuanceConfig(createIssuanceConfigInput)

Create issuance configuration, project have only one configuration

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
        CreateIssuanceConfigInput createIssuanceConfigInput = new CreateIssuanceConfigInput(); // CreateIssuanceConfigInput | Request body of create configuration
        try {
            IssuanceConfigDto result = apiInstance.createIssuanceConfig(createIssuanceConfigInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationApi#createIssuanceConfig");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                          | Type                                                          | Description                          | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **createIssuanceConfigInput** | [**CreateIssuanceConfigInput**](CreateIssuanceConfigInput.md) | Request body of create configuration |       |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **201**     | Ok              | -                |
| **400**     | BadRequestError | -                |

## deleteIssuanceConfigById

> deleteIssuanceConfigById(configurationId)

Delete project issuance configuration

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
        String configurationId = "configurationId_example"; // String | The id of the issuance configuration
        try {
            apiInstance.deleteIssuanceConfigById(configurationId);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationApi#deleteIssuanceConfigById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type       | Description                          | Notes |
| ------------------- | ---------- | ------------------------------------ | ----- |
| **configurationId** | **String** | The id of the issuance configuration |       |

### Return type

null (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                      | Response headers |
| ----------- | -------------------------------- | ---------------- |
| **204**     | Response for deleting the config | -                |
| **400**     | BadRequestError                  | -                |
| **404**     | NotFoundError                    | -                |

## getIssuanceConfigById

> IssuanceConfigDto getIssuanceConfigById(configurationId)

Get issuance configuration by id

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
        String configurationId = "configurationId_example"; // String | The id of the issuance configuration
        try {
            IssuanceConfigDto result = apiInstance.getIssuanceConfigById(configurationId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationApi#getIssuanceConfigById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                | Type       | Description                          | Notes |
| ------------------- | ---------- | ------------------------------------ | ----- |
| **configurationId** | **String** | The id of the issuance configuration |       |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

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
| **404**     | NotFoundError   | -                |

## getIssuanceConfigList

> IssuanceConfigListResponse getIssuanceConfigList()

Get issuance configuration for my selected project

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
        try {
            IssuanceConfigListResponse result = apiInstance.getIssuanceConfigList();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationApi#getIssuanceConfigList");
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

[**IssuanceConfigListResponse**](IssuanceConfigListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

## updateIssuanceConfigById

> IssuanceConfigDto updateIssuanceConfigById(configurationId, updateIssuanceConfigInput)

Update issuance configuration

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.ConfigurationApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        ConfigurationApi apiInstance = new ConfigurationApi(defaultClient);
        String configurationId = "configurationId_example"; // String | The id of the issuance configuration
        UpdateIssuanceConfigInput updateIssuanceConfigInput = new UpdateIssuanceConfigInput(); // UpdateIssuanceConfigInput | Request body of update configuration
        try {
            IssuanceConfigDto result = apiInstance.updateIssuanceConfigById(configurationId, updateIssuanceConfigInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConfigurationApi#updateIssuanceConfigById");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                          | Type                                                          | Description                          | Notes |
| ----------------------------- | ------------------------------------------------------------- | ------------------------------------ | ----- |
| **configurationId**           | **String**                                                    | The id of the issuance configuration |       |
| **updateIssuanceConfigInput** | [**UpdateIssuanceConfigInput**](UpdateIssuanceConfigInput.md) | Request body of update configuration |       |

### Return type

[**IssuanceConfigDto**](IssuanceConfigDto.md)

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
| **404**     | NotFoundError   | -                |
