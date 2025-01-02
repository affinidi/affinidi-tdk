# DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                   | HTTP request                 | Description |
| -------------------------------------------------------- | ---------------------------- | ----------- |
| [**v1AuthProxyDelete**](DefaultApi.md#v1AuthProxyDelete) | **DELETE** /v1/auth/{proxy+} |             |
| [**v1AuthProxyGet**](DefaultApi.md#v1AuthProxyGet)       | **GET** /v1/auth/{proxy+}    |             |
| [**v1AuthProxyPatch**](DefaultApi.md#v1AuthProxyPatch)   | **PATCH** /v1/auth/{proxy+}  |             |
| [**v1AuthProxyPost**](DefaultApi.md#v1AuthProxyPost)     | **POST** /v1/auth/{proxy+}   |             |
| [**v1AuthProxyPut**](DefaultApi.md#v1AuthProxyPut)       | **PUT** /v1/auth/{proxy+}    |             |
| [**v1IdpProxyDelete**](DefaultApi.md#v1IdpProxyDelete)   | **DELETE** /v1/idp/{proxy+}  |             |
| [**v1IdpProxyGet**](DefaultApi.md#v1IdpProxyGet)         | **GET** /v1/idp/{proxy+}     |             |
| [**v1IdpProxyPatch**](DefaultApi.md#v1IdpProxyPatch)     | **PATCH** /v1/idp/{proxy+}   |             |
| [**v1IdpProxyPost**](DefaultApi.md#v1IdpProxyPost)       | **POST** /v1/idp/{proxy+}    |             |
| [**v1IdpProxyPut**](DefaultApi.md#v1IdpProxyPut)         | **PUT** /v1/idp/{proxy+}     |             |

<a id="v1AuthProxyDelete"></a>

# **v1AuthProxyDelete**

> v1AuthProxyDelete(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1AuthProxyDelete(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1AuthProxyDelete");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1AuthProxyGet"></a>

# **v1AuthProxyGet**

> v1AuthProxyGet(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1AuthProxyGet(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1AuthProxyGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1AuthProxyPatch"></a>

# **v1AuthProxyPatch**

> v1AuthProxyPatch(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1AuthProxyPatch(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1AuthProxyPatch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1AuthProxyPost"></a>

# **v1AuthProxyPost**

> v1AuthProxyPost(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1AuthProxyPost(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1AuthProxyPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1AuthProxyPut"></a>

# **v1AuthProxyPut**

> v1AuthProxyPut(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1AuthProxyPut(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1AuthProxyPut");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1IdpProxyDelete"></a>

# **v1IdpProxyDelete**

> v1IdpProxyDelete(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1IdpProxyDelete(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1IdpProxyDelete");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1IdpProxyGet"></a>

# **v1IdpProxyGet**

> v1IdpProxyGet(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1IdpProxyGet(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1IdpProxyGet");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1IdpProxyPatch"></a>

# **v1IdpProxyPatch**

> v1IdpProxyPatch(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1IdpProxyPatch(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1IdpProxyPatch");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1IdpProxyPost"></a>

# **v1IdpProxyPost**

> v1IdpProxyPost(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1IdpProxyPost(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1IdpProxyPost");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a id="v1IdpProxyPut"></a>

# **v1IdpProxyPut**

> v1IdpProxyPut(proxy)

### Example

```java
// Import classes:
import com.affinidi.tdk.iam.client.ApiClient;
import com.affinidi.tdk.iam.client.ApiException;
import com.affinidi.tdk.iam.client.Configuration;
import com.affinidi.tdk.iam.client.models.*;
import com.affinidi.tdk.iam.client.apis.DefaultApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("https://apse1.api.affinidi.io/iam");

    DefaultApi apiInstance = new DefaultApi(defaultClient);
    String proxy = "proxy_example"; // String |
    try {
      apiInstance.v1IdpProxyPut(proxy);
    } catch (ApiException e) {
      System.err.println("Exception when calling DefaultApi#v1IdpProxyPut");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

| Name      | Type       | Description | Notes |
| --------- | ---------- | ----------- | ----- |
| **proxy** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined
