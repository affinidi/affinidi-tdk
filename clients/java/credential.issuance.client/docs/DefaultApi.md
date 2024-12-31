# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                               | HTTP request                                                                            | Description               |
| -------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | ------------------------- |
| [**changeCredentialStatus**](DefaultApi.md#changeCredentialStatus)   | **POST** /v1/{projectId}/configurations/{configurationId}/issuance/change-status        | change credential status. |
| [**listIssuanceDataRecords**](DefaultApi.md#listIssuanceDataRecords) | **GET** /v1/{projectId}/configurations/{configurationId}/issuance/issuance-data-records | List records              |

<a id="changeCredentialStatus"></a>

# **changeCredentialStatus**

> FlowData changeCredentialStatus(projectId, configurationId, changeCredentialStatusInput)

change credential status.

change credential status.

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String projectId = "projectId_example"; // String | project id
    String configurationId = "configurationId_example"; // String | configuration id
    ChangeCredentialStatusInput changeCredentialStatusInput = new ChangeCredentialStatusInput(); // ChangeCredentialStatusInput | Request body for changing credential status
    try {
      FlowData result = apiInstance.changeCredentialStatus(projectId, configurationId, changeCredentialStatusInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#changeCredentialStatus");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                            | Type                                                              | Description                                 | Notes |
| ------------------------------- | ----------------------------------------------------------------- | ------------------------------------------- | ----- |
| **projectId**                   | **String**                                                        | project id                                  |       |
| **configurationId**             | **String**                                                        | configuration id                            |       |
| **changeCredentialStatusInput** | [**ChangeCredentialStatusInput**](ChangeCredentialStatusInput.md) | Request body for changing credential status |       |

### Return type

[**FlowData**](FlowData.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers |
| ----------- | ------------------------- | ---------------- |
| **200**     | updated credential entity | -                |
| **400**     | BadRequestError           | -                |
| **404**     | NotFoundError             | -                |

<a id="listIssuanceDataRecords"></a>

# **listIssuanceDataRecords**

> ListIssuanceRecordResponse listIssuanceDataRecords(projectId, configurationId, limit, exclusiveStartKey)

List records

Retrieve a list of issuance data records.

### Example

```java
// Import classes:
import com.affinidi.tdk.credential.issuance.client.ApiClient;
import com.affinidi.tdk.credential.issuance.client.ApiException;
import com.affinidi.tdk.credential.issuance.client.Configuration;
import com.affinidi.tdk.credential.issuance.client.auth.*;
import com.affinidi.tdk.credential.issuance.client.models.*;
import com.affinidi.tdk.credential.issuance.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/cis");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String projectId = "projectId_example"; // String | Affinidi project id
    String configurationId = "configurationId_example"; // String | The id of the issuance configuration
    Integer limit = 10; // Integer | Maximum number of records to fetch in a list
    String exclusiveStartKey = "exclusiveStartKey_example"; // String | exclusiveStartKey for retrieving the next batch of data.
    try {
      ListIssuanceRecordResponse result = apiInstance.listIssuanceDataRecords(projectId, configurationId, limit, exclusiveStartKey);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#listIssuanceDataRecords");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                  | Type        | Description                                              | Notes                      |
| --------------------- | ----------- | -------------------------------------------------------- | -------------------------- |
| **projectId**         | **String**  | Affinidi project id                                      |                            |
| **configurationId**   | **String**  | The id of the issuance configuration                     |                            |
| **limit**             | **Integer** | Maximum number of records to fetch in a list             | [optional] [default to 10] |
| **exclusiveStartKey** | **String**  | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |

### Return type

[**ListIssuanceRecordResponse**](ListIssuanceRecordResponse.md)

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
