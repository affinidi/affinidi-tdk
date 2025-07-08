# IdpApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                                                | HTTP request                                                           | Description                                           |
| --------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| [**v1LoginProjectProjectIdOauth2AuthGet**](#v1loginprojectprojectidoauth2authget)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| [**v1LoginProjectProjectIdOauth2RevokePost**](#v1loginprojectprojectidoauth2revokepost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| [**v1LoginProjectProjectIdOauth2SessionsLogoutGet**](#v1loginprojectprojectidoauth2sessionslogoutget)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| [**v1LoginProjectProjectIdOauth2TokenPost**](#v1loginprojectprojectidoauth2tokenpost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| [**v1LoginProjectProjectIdUserinfoGet**](#v1loginprojectprojectiduserinfoget)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| [**v1LoginProjectProjectIdWellKnownJwksJsonGet**](#v1loginprojectprojectidwellknownjwksjsonget)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**](#v1loginprojectprojectidwellknownopenidconfigurationget) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

# **v1LoginProjectProjectIdOauth2AuthGet**

> v1LoginProjectProjectIdOauth2AuthGet()

The authorization endpoint is one of the components in the OAuth 2.0 flow. It\'s the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdOauth2AuthGet(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdOauth2RevokePost**

> v1LoginProjectProjectIdOauth2RevokePost()

Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdOauth2RevokePost(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdOauth2SessionsLogoutGet**

> v1LoginProjectProjectIdOauth2SessionsLogoutGet()

This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdOauth2SessionsLogoutGet(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdOauth2TokenPost**

> OAuth2Token v1LoginProjectProjectIdOauth2TokenPost()

The token endpoint is a critical component in the OAuth 2.0 protocol. It\'s the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user\'s resources on the protected server.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdOauth2TokenPost(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

**OAuth2Token**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdUserinfoGet**

> GetUserInfo v1LoginProjectProjectIdUserinfoGet()

This endpoint returns the payload of the ID Token, including session.id_token values, of the provided OAuth 2.0 Access Token\'s consent request. In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See the spec for more details about header format.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdUserinfoGet(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

**GetUserInfo**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdWellKnownJwksJsonGet**

> JsonWebKey v1LoginProjectProjectIdWellKnownJwksJsonGet()

This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdWellKnownJwksJsonGet(projectId)
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

**JsonWebKey**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1LoginProjectProjectIdWellKnownOpenidConfigurationGet**

> OIDCConfig v1LoginProjectProjectIdWellKnownOpenidConfigurationGet()

A mechanism for an OpenID Connect Relying Party to discover the End-User\'s OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.

### Example

```typescript
import { IdpApi, Configuration } from '@affinidi-tdk/login-configuration-client'

const configuration = new Configuration()
const apiInstance = new IdpApi(configuration)

let projectId: string // (default to undefined)

const { status, data } =
  await apiInstance.v1LoginProjectProjectIdWellKnownOpenidConfigurationGet(
    projectId,
  )
```

### Parameters

| Name          | Type         | Description | Notes                 |
| ------------- | ------------ | ----------- | --------------------- |
| **projectId** | [**string**] |             | defaults to undefined |

### Return type

**OIDCConfig**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description         | Response headers |
| ----------- | ------------------- | ---------------- |
| **200**     | Successful response | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
