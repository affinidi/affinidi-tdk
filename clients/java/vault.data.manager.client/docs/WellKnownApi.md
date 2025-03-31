# WellKnownApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                                   | HTTP request                   | Description |
| -------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownJwks**](WellKnownApi.md#getWellKnownJwks) | **GET** /.well-known/jwks.json |             |

## getWellKnownJwks

> JsonWebKeySetDto getWellKnownJwks()

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.WellKnownApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        WellKnownApi apiInstance = new WellKnownApi(defaultClient);
        try {
            JsonWebKeySetDto result = apiInstance.getWellKnownJwks();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WellKnownApi#getWellKnownJwks");
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

[**JsonWebKeySetDto**](JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                              | Response headers                                                                                                  |
| ----------- | ---------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | List of JWK used by the services as JWKS | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError                          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError                          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
