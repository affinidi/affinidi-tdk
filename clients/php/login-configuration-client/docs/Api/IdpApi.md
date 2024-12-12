# AffinidiTdk\Clients\LoginConfiguration\IdpApi

All URIs are relative to https://apse1.api.affinidi.io/vpa, except if the operation defines another base path.

| Method                                                                                                                           | HTTP request                                                           | Description                                           |
| -------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| [**v1LoginProjectProjectIdOauth2AuthGet()**](IdpApi.md#v1LoginProjectProjectIdOauth2AuthGet)                                     | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| [**v1LoginProjectProjectIdOauth2RevokePost()**](IdpApi.md#v1LoginProjectProjectIdOauth2RevokePost)                               | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| [**v1LoginProjectProjectIdOauth2SessionsLogoutGet()**](IdpApi.md#v1LoginProjectProjectIdOauth2SessionsLogoutGet)                 | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| [**v1LoginProjectProjectIdOauth2TokenPost()**](IdpApi.md#v1LoginProjectProjectIdOauth2TokenPost)                                 | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| [**v1LoginProjectProjectIdUserinfoGet()**](IdpApi.md#v1LoginProjectProjectIdUserinfoGet)                                         | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| [**v1LoginProjectProjectIdWellKnownJwksJsonGet()**](IdpApi.md#v1LoginProjectProjectIdWellKnownJwksJsonGet)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| [**v1LoginProjectProjectIdWellKnownOpenidConfigurationGet()**](IdpApi.md#v1LoginProjectProjectIdWellKnownOpenidConfigurationGet) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

## `v1LoginProjectProjectIdOauth2AuthGet()`

```php
v1LoginProjectProjectIdOauth2AuthGet($project_id)
```

OAuth 2.0 Authorize Endpoint

The authorization endpoint is one of the components in the OAuth 2.0 flow. It's the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $apiInstance->v1LoginProjectProjectIdOauth2AuthGet($project_id);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdOauth2AuthGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdOauth2RevokePost()`

```php
v1LoginProjectProjectIdOauth2RevokePost($project_id)
```

Revoke OAuth 2.0 Access or Refresh Token

Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $apiInstance->v1LoginProjectProjectIdOauth2RevokePost($project_id);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdOauth2RevokePost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdOauth2SessionsLogoutGet()`

```php
v1LoginProjectProjectIdOauth2SessionsLogoutGet($project_id)
```

OpenID Connect Front- and Back-channel Enabled Logout

This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $apiInstance->v1LoginProjectProjectIdOauth2SessionsLogoutGet($project_id);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdOauth2SessionsLogoutGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdOauth2TokenPost()`

```php
v1LoginProjectProjectIdOauth2TokenPost($project_id): \AffinidiTdk\Clients\LoginConfiguration\Model\OAuth2Token
```

The OAuth 2.0 Token Endpoint

The token endpoint is a critical component in the OAuth 2.0 protocol. It's the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user's resources on the protected server.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $result = $apiInstance->v1LoginProjectProjectIdOauth2TokenPost($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdOauth2TokenPost: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

[**\AffinidiTdk\Clients\LoginConfiguration\Model\OAuth2Token**](../Model/OAuth2Token.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdUserinfoGet()`

```php
v1LoginProjectProjectIdUserinfoGet($project_id): \AffinidiTdk\Clients\LoginConfiguration\Model\GetUserInfo
```

OpenID Connect Userinfo

This endpoint returns the payload of the ID Token, including session.id_token values, of the provided OAuth 2.0 Access Token's consent request. In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See the spec for more details about header format.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $result = $apiInstance->v1LoginProjectProjectIdUserinfoGet($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdUserinfoGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

[**\AffinidiTdk\Clients\LoginConfiguration\Model\GetUserInfo**](../Model/GetUserInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdWellKnownJwksJsonGet()`

```php
v1LoginProjectProjectIdWellKnownJwksJsonGet($project_id): \AffinidiTdk\Clients\LoginConfiguration\Model\JsonWebKey
```

Discover Well-Known JSON Web Keys

This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $result = $apiInstance->v1LoginProjectProjectIdWellKnownJwksJsonGet($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdWellKnownJwksJsonGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

[**\AffinidiTdk\Clients\LoginConfiguration\Model\JsonWebKey**](../Model/JsonWebKey.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `v1LoginProjectProjectIdWellKnownOpenidConfigurationGet()`

```php
v1LoginProjectProjectIdWellKnownOpenidConfigurationGet($project_id): \AffinidiTdk\Clients\LoginConfiguration\Model\OIDCConfig
```

OpenID Connect Discovery

A mechanism for an OpenID Connect Relying Party to discover the End-User's OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');



$apiInstance = new AffinidiTdk\Clients\LoginConfiguration\Api\IdpApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$project_id = 'project_id_example'; // string

try {
    $result = $apiInstance->v1LoginProjectProjectIdWellKnownOpenidConfigurationGet($project_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling IdpApi->v1LoginProjectProjectIdWellKnownOpenidConfigurationGet: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name           | Type       | Description | Notes |
| -------------- | ---------- | ----------- | ----- |
| **project_id** | **string** |             |       |

### Return type

[**\AffinidiTdk\Clients\LoginConfiguration\Model\OIDCConfig**](../Model/OIDCConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
