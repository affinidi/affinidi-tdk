# ConfigApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                  | HTTP request       | Description |
| --------------------------------------- | ------------------ | ----------- |
| [**getConfig**](ConfigApi.md#getConfig) | **GET** /v1/config |             |

<a id="getConfig"></a>

# **getConfig**

> GetConfigOK getConfig()

Retrieves the user profile name and the maximum number of profiles, with default values set to &#39;default&#39; and 1, respectively.

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.ConfigApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

    // Configure API key authorization: AwsSigV4
    ApiKeyAuth AwsSigV4 = (ApiKeyAuth) defaultClient.getAuthentication("AwsSigV4");
    AwsSigV4.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //AwsSigV4.setApiKeyPrefix("Token");

    ConfigApi apiInstance = new ConfigApi(defaultClient);
    try {
      GetConfigOK result = apiInstance.getConfig();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling ConfigApi#getConfig");
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

[**GetConfigOK**](GetConfigOK.md)

### Authorization

[AwsSigV4](../README.md#AwsSigV4)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | GetConfigOK     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
