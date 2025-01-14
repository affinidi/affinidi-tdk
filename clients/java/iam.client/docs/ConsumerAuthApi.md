# ConsumerAuthApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                                        | HTTP request                       | Description                           |
| ----------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumerAuthTokenEndpoint**](ConsumerAuthApi.md#consumerAuthTokenEndpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

## consumerAuthTokenEndpoint

> ConsumerAuthTokenEndpointOutput consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput)

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.ConsumerAuthApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        ConsumerAuthApi apiInstance = new ConsumerAuthApi(defaultClient);
        ConsumerAuthTokenEndpointInput consumerAuthTokenEndpointInput = new ConsumerAuthTokenEndpointInput(); // ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint
        try {
            ConsumerAuthTokenEndpointOutput result = apiInstance.consumerAuthTokenEndpoint(consumerAuthTokenEndpointInput);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling ConsumerAuthApi#consumerAuthTokenEndpoint");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name                               | Type                                                                    | Description               | Notes |
| ---------------------------------- | ----------------------------------------------------------------------- | ------------------------- | ----- |
| **consumerAuthTokenEndpointInput** | [**ConsumerAuthTokenEndpointInput**](ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |       |

### Return type

[**ConsumerAuthTokenEndpointOutput**](ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Consumer Token OK Response | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError             | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
