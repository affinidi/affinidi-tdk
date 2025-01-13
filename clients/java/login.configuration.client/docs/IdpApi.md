# IdpApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                                                         | HTTP request                                                           | Description                                           |
| ------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| [**v1LoginProjectProjectIdOauth2AuthGet**](IdpApi.md#v1LoginProjectProjectIdOauth2AuthGet)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| [**v1LoginProjectProjectIdOauth2RevokePost**](IdpApi.md#v1LoginProjectProjectIdOauth2RevokePost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| [**v1LoginProjectProjectIdOauth2SessionsLogoutGet**](IdpApi.md#v1LoginProjectProjectIdOauth2SessionsLogoutGet)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| [**v1LoginProjectProjectIdOauth2TokenPost**](IdpApi.md#v1LoginProjectProjectIdOauth2TokenPost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| [**v1LoginProjectProjectIdUserinfoGet**](IdpApi.md#v1LoginProjectProjectIdUserinfoGet)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| [**v1LoginProjectProjectIdWellKnownJwksJsonGet**](IdpApi.md#v1LoginProjectProjectIdWellKnownJwksJsonGet)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**](IdpApi.md#v1LoginProjectProjectIdWellKnownOpenidConfigurationGet) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

## v1LoginProjectProjectIdOauth2AuthGet

> v1LoginProjectProjectIdOauth2AuthGet(projectId)

OAuth 2.0 Authorize Endpoint

The authorization endpoint is one of the components in the OAuth 2.0 flow. It&#39;s the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            apiInstance.v1LoginProjectProjectIdOauth2AuthGet(projectId);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdOauth2AuthGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

## v1LoginProjectProjectIdOauth2RevokePost

> v1LoginProjectProjectIdOauth2RevokePost(projectId)

Revoke OAuth 2.0 Access or Refresh Token

Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            apiInstance.v1LoginProjectProjectIdOauth2RevokePost(projectId);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdOauth2RevokePost");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

## v1LoginProjectProjectIdOauth2SessionsLogoutGet

> v1LoginProjectProjectIdOauth2SessionsLogoutGet(projectId)

OpenID Connect Front- and Back-channel Enabled Logout

This endpoint initiates and completes user logout at the IdP OAuth2 &amp; OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            apiInstance.v1LoginProjectProjectIdOauth2SessionsLogoutGet(projectId);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdOauth2SessionsLogoutGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

## v1LoginProjectProjectIdOauth2TokenPost

> OAuth2Token v1LoginProjectProjectIdOauth2TokenPost(projectId)

The OAuth 2.0 Token Endpoint

The token endpoint is a critical component in the OAuth 2.0 protocol. It&#39;s the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user&#39;s resources on the protected server.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            OAuth2Token result = apiInstance.v1LoginProjectProjectIdOauth2TokenPost(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdOauth2TokenPost");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

[**OAuth2Token**](OAuth2Token.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

## v1LoginProjectProjectIdUserinfoGet

> GetUserInfo v1LoginProjectProjectIdUserinfoGet(projectId)

OpenID Connect Userinfo

This endpoint returns the payload of the ID Token, including session.id_token values, of the provided OAuth 2.0 Access Token&#39;s consent request. In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See the spec for more details about header format.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            GetUserInfo result = apiInstance.v1LoginProjectProjectIdUserinfoGet(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdUserinfoGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

[**GetUserInfo**](GetUserInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

## v1LoginProjectProjectIdWellKnownJwksJsonGet

> JsonWebKey v1LoginProjectProjectIdWellKnownJwksJsonGet(projectId)

Discover Well-Known JSON Web Keys

This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            JsonWebKey result = apiInstance.v1LoginProjectProjectIdWellKnownJwksJsonGet(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdWellKnownJwksJsonGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

[**JsonWebKey**](JsonWebKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

## v1LoginProjectProjectIdWellKnownOpenidConfigurationGet

> OIDCConfig v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(projectId)

OpenID Connect Discovery

A mechanism for an OpenID Connect Relying Party to discover the End-User&#39;s OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.

### Example

```java
// Import classes:
import com.affinidi.tdk.login.configuration.client.ApiClient;
import com.affinidi.tdk.login.configuration.client.ApiException;
import com.affinidi.tdk.login.configuration.client.Configuration;
import com.affinidi.tdk.login.configuration.client.models.*;
import com.affinidi.tdk.login.configuration.client.apis.IdpApi;

public class Example {
    public static void main(String[] args) {
        ApiClient defaultClient = Configuration.getDefaultApiClient();
        defaultClient.setBasePath("https://apse1.api.affinidi.io/vpa");

        IdpApi apiInstance = new IdpApi(defaultClient);
        String projectId = "projectId_example"; // String |
        try {
            OIDCConfig result = apiInstance.v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(projectId);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling IdpApi#v1LoginProjectProjectIdWellKnownOpenidConfigurationGet");
            System.err.println("Status code: " + e.getCode());
            System.err.println("Reason: " + e.getResponseBody());
            System.err.println("Response headers: " + e.getResponseHeaders());
            e.printStackTrace();
        }
    }
}
```

### Parameters

| Name          | Type       | Description | Notes |
| ------------- | ---------- | ----------- | ----- |
| **projectId** | **String** |             |       |

### Return type

[**OIDCConfig**](OIDCConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |
