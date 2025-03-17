# DefaultApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                           | HTTP request          | Description |
| ------------------------------------------------ | --------------------- | ----------- |
| [**createAccount**](DefaultApi.md#createAccount) | **POST** /v1/accounts |             |

## createAccount

> CreateAccountOK createAccount(createAccountInput)

creates account

### Example

```java
// Import classes:
import com.affinidi.tdk.vault.data.manager.client.ApiClient;
import com.affinidi.tdk.vault.data.manager.client.ApiException;
import com.affinidi.tdk.vault.data.manager.client.Configuration;
import com.affinidi.tdk.vault.data.manager.client.auth.*;
import com.affinidi.tdk.vault.data.manager.client.models.*;
import com.affinidi.tdk.vault.data.manager.client.apis.DefaultApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://api.vault.affinidi.com/vfs");

        // Configure API key authorization: ConsumerTokenAuth
        ApiKeyAuth ConsumerTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ConsumerTokenAuth");
        ConsumerTokenAuth.setApiKey("YOUR API KEY");
        // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
        //ConsumerTokenAuth.setApiKeyPrefix("Token");

        DefaultApi apiInstance = new DefaultApi(defaultClient);
        CreateAccountInput createAccountInput = new CreateAccountInput(); // CreateAccountInput | CreateAccount
        try {
            CreateAccountOK result = apiInstance.createAccount(createAccountInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling DefaultApi#createAccount");
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
| **createAccountInput** | [**CreateAccountInput**](CreateAccountInput.md) | CreateAccount |       |

### Return type

[**CreateAccountOK**](CreateAccountOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | CreateAccountOK | -                |
| **400**     | BadRequestError | -                |
