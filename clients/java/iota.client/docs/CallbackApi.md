# CallbackApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                      | HTTP request          | Description |
| ----------------------------------------------------------- | --------------------- | ----------- |
| [**iotOIDC4VPCallback**](CallbackApi.md#iotOIDC4VPCallback) | **POST** /v1/callback |             |

<a id="iotOIDC4VPCallback"></a>

# **iotOIDC4VPCallback**

> CallbackResponseOK iotOIDC4VPCallback(callbackInput)

It handles the client&#39;s (e.g., Affinidi Vault) callback about the result of the data-sharing request. It may contain the data shared by the user, including the presentation submission, verification token, and state. Using the MQTT protocol, it communicates the completion of the request or if any error occurred.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.CallbackApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    CallbackApi apiInstance = new CallbackApi(defaultClient);
    CallbackInput callbackInput = new CallbackInput(); // CallbackInput | CallbackRequestInput
    try {
      CallbackResponseOK result = apiInstance.iotOIDC4VPCallback(callbackInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling CallbackApi#iotOIDC4VPCallback");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name              | Type                                  | Description          | Notes |
| ----------------- | ------------------------------------- | -------------------- | ----- |
| **callbackInput** | [**CallbackInput**](CallbackInput.md) | CallbackRequestInput |       |

### Return type

[**CallbackResponseOK**](CallbackResponseOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description        | Response headers                                                                                                  |
| ----------- | ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CallbackResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError    | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
