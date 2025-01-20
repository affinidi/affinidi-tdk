# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                     | HTTP request                | Description |
| ---------------------------------------------------------- | --------------------------- | ----------- |
| [**listLoggedConsents**](DefaultApi.md#listLoggedConsents) | **GET** /v1/logged-consents |             |

## listLoggedConsents

> ListLoggedConsentsOK listLoggedConsents(configurationId, userId, limit, exclusiveStartKey)

Lists all the logged consents for a project.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.DefaultApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

        // Configure API key authorization: ProjectTokenAuth
        ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
        ProjectTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ProjectTokenAuth.setApiKeyPrefix("Token");

        DefaultApi apiInstance = new DefaultApi(defaultClient);
        String configurationId = "configurationId_example"; // String |
        String userId = "userId_example"; // String |
        Integer limit = 56; // Integer | The maximum number of records to fetch from the list of logged consents.
        String exclusiveStartKey = "exclusiveStartKey_example"; // String | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation.
        try {
            ListLoggedConsentsOK result = apiInstance.listLoggedConsents(configurationId, userId, limit, exclusiveStartKey);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#listLoggedConsents");
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
| **configurationId**   | **String**  |                                                                                                                                                                | [optional] |
| **userId**            | **String**  |                                                                                                                                                                | [optional] |
| **limit**             | **Integer** | The maximum number of records to fetch from the list of logged consents.                                                                                       | [optional] |
| **exclusiveStartKey** | **String**  | The base64url encoded key of the first item that this operation will evaluate (it is not returned). Use the value that was returned in the previous operation. | [optional] |

### Return type

[**ListLoggedConsentsOK**](ListLoggedConsentsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | ListLoggedConsentsOK | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
