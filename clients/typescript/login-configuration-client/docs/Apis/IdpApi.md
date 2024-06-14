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

<a name="v1LoginProjectProjectIdOauth2AuthGet"></a>

# **v1LoginProjectProjectIdOauth2AuthGet**

> v1LoginProjectProjectIdOauth2AuthGet(projectId)

OAuth 2.0 Authorize Endpoint

    The authorization endpoint is one of the components in the OAuth 2.0 flow. It&#39;s the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="v1LoginProjectProjectIdOauth2RevokePost"></a>

# **v1LoginProjectProjectIdOauth2RevokePost**

> v1LoginProjectProjectIdOauth2RevokePost(projectId)

Revoke OAuth 2.0 Access or Refresh Token

    Revoking a token (both access and refresh) means that the tokens will be invalid.  A revoked access token can no longer be used to make access requests, and a revoked  refresh token can no longer be used to refresh an access token. Revoking a refresh  token also invalidates the access token that was created with it. A token may only  be revoked by the client the token was generated for.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="v1LoginProjectProjectIdOauth2SessionsLogoutGet"></a>

# **v1LoginProjectProjectIdOauth2SessionsLogoutGet**

> v1LoginProjectProjectIdOauth2SessionsLogoutGet(projectId)

OpenID Connect Front- and Back-channel Enabled Logout

    This endpoint initiates and completes user logout at the IdP OAuth2 &amp; OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="v1LoginProjectProjectIdOauth2TokenPost"></a>

# **v1LoginProjectProjectIdOauth2TokenPost**

> OAuth2Token v1LoginProjectProjectIdOauth2TokenPost(projectId)

The OAuth 2.0 Token Endpoint

    The token endpoint is a critical component in the OAuth 2.0 protocol. It&#39;s the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user&#39;s resources on the protected server.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

[**OAuth2Token**](../Models/OAuth2Token.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="v1LoginProjectProjectIdUserinfoGet"></a>

# **v1LoginProjectProjectIdUserinfoGet**

> GetUserInfo v1LoginProjectProjectIdUserinfoGet(projectId)

OpenID Connect Userinfo

    This endpoint returns the payload of the ID Token,  including session.id_token values, of the provided  OAuth 2.0 Access Token&#39;s consent request. In the case of authentication error, a WWW-Authenticate  header might be set in the response with more information  about the error. See the spec for more details about  header format.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

[**GetUserInfo**](../Models/GetUserInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="v1LoginProjectProjectIdWellKnownJwksJsonGet"></a>

# **v1LoginProjectProjectIdWellKnownJwksJsonGet**

> JsonWebKey v1LoginProjectProjectIdWellKnownJwksJsonGet(projectId)

Discover Well-Known JSON Web Keys

    This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

[**JsonWebKey**](../Models/JsonWebKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="v1LoginProjectProjectIdWellKnownOpenidConfigurationGet"></a>

# **v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**

> OIDCConfig v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(projectId)

OpenID Connect Discovery

    A mechanism for an OpenID Connect Relying Party to discover the End-User&#39;s  OpenID Provider and obtain information needed to interact with it, including  its OAuth 2.0 endpoint locations.

### Parameters

| Name          | Type       | Description | Notes             |
| ------------- | ---------- | ----------- | ----------------- |
| **projectId** | **String** |             | [default to null] |

### Return type

[**OIDCConfig**](../Models/OIDCConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json
