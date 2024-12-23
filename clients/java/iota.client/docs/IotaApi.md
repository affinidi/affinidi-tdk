# IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                  | HTTP request                                        | Description |
| --------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**awsExchangeCredentials**](IotaApi.md#awsExchangeCredentials)                         | **POST** /v1/aws-exchange-credentials               |             |
| [**awsExchangeCredentialsProjectToken**](IotaApi.md#awsExchangeCredentialsProjectToken) | **POST** /v1/aws-exchange-credentials/project-token |             |
| [**fetchIotaVpResponse**](IotaApi.md#fetchIotaVpResponse)                               | **POST** /v1/fetch-iota-response                    |             |
| [**initiateDataSharingRequest**](IotaApi.md#initiateDataSharingRequest)                 | **POST** /v1/initiate-data-sharing-request          |             |
| [**iotaExchangeCredentials**](IotaApi.md#iotaExchangeCredentials)                       | **POST** /v1/exchange-credentials                   |             |

<a id="awsExchangeCredentials"></a>

# **awsExchangeCredentials**

> AwsExchangeCredentialsOK awsExchangeCredentials(awsExchangeCredentials)

Exchange a limited-scoped token into a Cognito credential to generate the identity credential. The identity credential initiates the secure WebSocket connection from the client. This method is used only in WebSocket data-sharing mode.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.IotaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    IotaApi apiInstance = new IotaApi(defaultClient);
    AwsExchangeCredentials awsExchangeCredentials = new AwsExchangeCredentials(); // AwsExchangeCredentials | AwsExchangeCredentials
    try {
      AwsExchangeCredentialsOK result = apiInstance.awsExchangeCredentials(awsExchangeCredentials);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IotaApi#awsExchangeCredentials");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                       | Type                                                    | Description            | Notes |
| -------------------------- | ------------------------------------------------------- | ---------------------- | ----- |
| **awsExchangeCredentials** | [**AwsExchangeCredentials**](AwsExchangeCredentials.md) | AwsExchangeCredentials |       |

### Return type

[**AwsExchangeCredentialsOK**](AwsExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers                                                                                                  |
| ----------- | ------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | AwsExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

<a id="awsExchangeCredentialsProjectToken"></a>

# **awsExchangeCredentialsProjectToken**

> IotaExchangeCredentialsOK awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken)

Exchange a Project Scoped Token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.IotaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    IotaApi apiInstance = new IotaApi(defaultClient);
    AwsExchangeCredentialsProjectToken awsExchangeCredentialsProjectToken = new AwsExchangeCredentialsProjectToken(); // AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken
    try {
      IotaExchangeCredentialsOK result = apiInstance.awsExchangeCredentialsProjectToken(awsExchangeCredentialsProjectToken);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IotaApi#awsExchangeCredentialsProjectToken");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                                   | Type                                                                            | Description                        | Notes |
| -------------------------------------- | ------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **awsExchangeCredentialsProjectToken** | [**AwsExchangeCredentialsProjectToken**](AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |       |

### Return type

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

<a id="fetchIotaVpResponse"></a>

# **fetchIotaVpResponse**

> FetchIOTAVPResponseOK fetchIotaVpResponse(fetchIOTAVPResponseInput)

Fetches the client&#39;s callback that contains the user&#39;s shared data in a Verifiable Presentation format after a successful data-sharing flow.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.IotaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    IotaApi apiInstance = new IotaApi(defaultClient);
    FetchIOTAVPResponseInput fetchIOTAVPResponseInput = new FetchIOTAVPResponseInput(); // FetchIOTAVPResponseInput | FetchIOTAVPResponseInput
    try {
      FetchIOTAVPResponseOK result = apiInstance.fetchIotaVpResponse(fetchIOTAVPResponseInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IotaApi#fetchIotaVpResponse");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                         | Type                                                        | Description              | Notes |
| ---------------------------- | ----------------------------------------------------------- | ------------------------ | ----- |
| **fetchIOTAVPResponseInput** | [**FetchIOTAVPResponseInput**](FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |       |

### Return type

[**FetchIOTAVPResponseOK**](FetchIOTAVPResponseOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers                                                                                                  |
| ----------- | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | FetchIOTAVPResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError         | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

<a id="initiateDataSharingRequest"></a>

# **initiateDataSharingRequest**

> InitiateDataSharingRequestOK initiateDataSharingRequest(initiateDataSharingRequestInput)

Generates the request token for the Redirect mode to initiate the data-sharing flow.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.auth.*;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.IotaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    // Configure API key authorization: ProjectTokenAuth
    ApiKeyAuth ProjectTokenAuth = (ApiKeyAuth) defaultClient.getAuthentication("ProjectTokenAuth");
    ProjectTokenAuth.setApiKey("YOUR API KEY");
    // Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
    //ProjectTokenAuth.setApiKeyPrefix("Token");

    IotaApi apiInstance = new IotaApi(defaultClient);
    InitiateDataSharingRequestInput initiateDataSharingRequestInput = new InitiateDataSharingRequestInput(); // InitiateDataSharingRequestInput | InitiateDataSharingRequestInput
    try {
      InitiateDataSharingRequestOK result = apiInstance.initiateDataSharingRequest(initiateDataSharingRequestInput);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IotaApi#initiateDataSharingRequest");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                                | Type                                                                      | Description                     | Notes |
| ----------------------------------- | ------------------------------------------------------------------------- | ------------------------------- | ----- |
| **initiateDataSharingRequestInput** | [**InitiateDataSharingRequestInput**](InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |       |

### Return type

[**InitiateDataSharingRequestOK**](InitiateDataSharingRequestOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers                                                                                                  |
| ----------- | ---------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | InitiateDataSharingRequestOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError               | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

<a id="iotaExchangeCredentials"></a>

# **iotaExchangeCredentials**

> IotaExchangeCredentialsOK iotaExchangeCredentials(iotaExchangeCredentials)

Exchange a limited-scoped token into an identity credential directly to initiate a secure WebSocket connection. This method is used only in WebSocket data-sharing mode.

### Example

```java
// Import classes:
import com.affinidi.tdk.iota.client.ApiClient;
import com.affinidi.tdk.iota.client.ApiException;
import com.affinidi.tdk.iota.client.Configuration;
import com.affinidi.tdk.iota.client.models.*;
import com.affinidi.tdk.iota.client.apis.IotaApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/ais");

    IotaApi apiInstance = new IotaApi(defaultClient);
    IotaExchangeCredentials iotaExchangeCredentials = new IotaExchangeCredentials(); // IotaExchangeCredentials | IotaAwsExchangeCredentials
    try {
      IotaExchangeCredentialsOK result = apiInstance.iotaExchangeCredentials(iotaExchangeCredentials);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling IotaApi#iotaExchangeCredentials");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name                        | Type                                                      | Description                | Notes |
| --------------------------- | --------------------------------------------------------- | -------------------------- | ----- |
| **iotaExchangeCredentials** | [**IotaExchangeCredentials**](IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |       |

### Return type

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
