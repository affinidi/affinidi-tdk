# WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                   | HTTP request                   | Description |
| -------------------------------------------------------- | ------------------------------ | ----------- |
| [**getWellKnownDid**](WellKnownApi.md#getWellKnownDid)   | **GET** /.well-known/did.json  |             |
| [**getWellKnownJwks**](WellKnownApi.md#getWellKnownJwks) | **GET** /.well-known/jwks.json |             |

## getWellKnownDid

> Object getWellKnownDid()

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.WellKnownApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

        WellKnownApi apiInstance = new WellKnownApi(defaultClient);
        try {
            Object result = apiInstance.getWellKnownDid();
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling WellKnownApi#getWellKnownDid");
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

**Object**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | GetWellKnownDidOK | -                |
| **500**     | UnexpectedError   | -                |

## getWellKnownJwks

> JsonWebKeySetDto getWellKnownJwks()

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.WellKnownApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

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

| Status code | Description                              | Response headers |
| ----------- | ---------------------------------------- | ---------------- |
| **200**     | List of JWK used by the services as JWKS | -                |
| **500**     | UnexpectedError                          | -                |
