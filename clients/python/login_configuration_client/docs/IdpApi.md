# affinidi_tdk_login_configuration_client.IdpApi

All URIs are relative to *https://apse1.api.affinidi.io/vpa*

| Method                                                                                                                                           | HTTP request                                                           | Description                                           |
| ------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------- | ----------------------------------------------------- |
| [**v1_login_project_project_id_oauth2_auth_get**](IdpApi.md#v1_login_project_project_id_oauth2_auth_get)                                         | **GET** /v1/login/project/{projectId}/oauth2/auth                      | OAuth 2.0 Authorize Endpoint                          |
| [**v1_login_project_project_id_oauth2_revoke_post**](IdpApi.md#v1_login_project_project_id_oauth2_revoke_post)                                   | **POST** /v1/login/project/{projectId}/oauth2/revoke                   | Revoke OAuth 2.0 Access or Refresh Token              |
| [**v1_login_project_project_id_oauth2_sessions_logout_get**](IdpApi.md#v1_login_project_project_id_oauth2_sessions_logout_get)                   | **GET** /v1/login/project/{projectId}/oauth2/sessions/logout           | OpenID Connect Front- and Back-channel Enabled Logout |
| [**v1_login_project_project_id_oauth2_token_post**](IdpApi.md#v1_login_project_project_id_oauth2_token_post)                                     | **POST** /v1/login/project/{projectId}/oauth2/token                    | The OAuth 2.0 Token Endpoint                          |
| [**v1_login_project_project_id_userinfo_get**](IdpApi.md#v1_login_project_project_id_userinfo_get)                                               | **GET** /v1/login/project/{projectId}/userinfo                         | OpenID Connect Userinfo                               |
| [**v1_login_project_project_id_well_known_jwks_json_get**](IdpApi.md#v1_login_project_project_id_well_known_jwks_json_get)                       | **GET** /v1/login/project/{projectId}/.well-known/jwks.json            | Discover Well-Known JSON Web Keys                     |
| [**v1_login_project_project_id_well_known_openid_configuration_get**](IdpApi.md#v1_login_project_project_id_well_known_openid_configuration_get) | **GET** /v1/login/project/{projectId}/.well-known/openid-configuration | OpenID Connect Discovery                              |

# **v1_login_project_project_id_oauth2_auth_get**

> v1_login_project_project_id_oauth2_auth_get(project_id)

OAuth 2.0 Authorize Endpoint

The authorization endpoint is one of the components in the OAuth 2.0 flow. It's the URL where a user is redirected to grant or deny access to their resources. When a user tries to access a service that requires OAuth 2.0 authorization, the application will redirect the user to this authorization endpoint. Here, the user can log in (if necessary) and then decide whether to grant the application access.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # OAuth 2.0 Authorize Endpoint
        api_instance.v1_login_project_project_id_oauth2_auth_get(project_id)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_oauth2_auth_get: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_login_project_project_id_oauth2_revoke_post**

> v1_login_project_project_id_oauth2_revoke_post(project_id)

Revoke OAuth 2.0 Access or Refresh Token

Revoking a token (both access and refresh) means that the tokens will be invalid. A revoked access token can no longer be used to make access requests, and a revoked refresh token can no longer be used to refresh an access token. Revoking a refresh token also invalidates the access token that was created with it. A token may only be revoked by the client the token was generated for.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # Revoke OAuth 2.0 Access or Refresh Token
        api_instance.v1_login_project_project_id_oauth2_revoke_post(project_id)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_oauth2_revoke_post: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

# **v1_login_project_project_id_oauth2_sessions_logout_get**

> v1_login_project_project_id_oauth2_sessions_logout_get(project_id)

OpenID Connect Front- and Back-channel Enabled Logout

This endpoint initiates and completes user logout at the IdP OAuth2 & OpenID provider and initiates OpenID Connect Front- / Back-channel logout: https://openid.net/specs/openid-connect-frontchannel-1_0.html https://openid.net/specs/openid-connect-backchannel-1_0.html Back-channel logout is performed asynchronously and does not affect logout flow.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # OpenID Connect Front- and Back-channel Enabled Logout
        api_instance.v1_login_project_project_id_oauth2_sessions_logout_get(project_id)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_oauth2_sessions_logout_get: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

# **v1_login_project_project_id_oauth2_token_post**

> OAuth2Token v1_login_project_project_id_oauth2_token_post(project_id)

The OAuth 2.0 Token Endpoint

The token endpoint is a critical component in the OAuth 2.0 protocol. It's the URL where a client application makes a request to exchange an authorization grant (such as an authorization code) for an access token. After a user grants authorization at the authorization endpoint, the client application receives an authorization grant, which is then exchanged for an access token at the token endpoint. This access token is then used to access the user's resources on the protected server.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.o_auth2_token import OAuth2Token
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # The OAuth 2.0 Token Endpoint
        api_response = api_instance.v1_login_project_project_id_oauth2_token_post(project_id)
        print("The response of IdpApi->v1_login_project_project_id_oauth2_token_post:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_oauth2_token_post: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_login_project_project_id_userinfo_get**

> GetUserInfo v1_login_project_project_id_userinfo_get(project_id)

OpenID Connect Userinfo

This endpoint returns the payload of the ID Token, including session.id_token values, of the provided OAuth 2.0 Access Token's consent request. In the case of authentication error, a WWW-Authenticate header might be set in the response with more information about the error. See the spec for more details about header format.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.get_user_info import GetUserInfo
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # OpenID Connect Userinfo
        api_response = api_instance.v1_login_project_project_id_userinfo_get(project_id)
        print("The response of IdpApi->v1_login_project_project_id_userinfo_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_userinfo_get: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_login_project_project_id_well_known_jwks_json_get**

> JsonWebKey v1_login_project_project_id_well_known_jwks_json_get(project_id)

Discover Well-Known JSON Web Keys

This endpoint returns JSON Web Keys required to verifying OpenID Connect ID Tokens and, if enabled, OAuth 2.0 JWT Access Tokens. This endpoint can be used with client libraries like node-jwks-rsa among others.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.json_web_key import JsonWebKey
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # Discover Well-Known JSON Web Keys
        api_response = api_instance.v1_login_project_project_id_well_known_jwks_json_get(project_id)
        print("The response of IdpApi->v1_login_project_project_id_well_known_jwks_json_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_well_known_jwks_json_get: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1_login_project_project_id_well_known_openid_configuration_get**

> OIDCConfig v1_login_project_project_id_well_known_openid_configuration_get(project_id)

OpenID Connect Discovery

A mechanism for an OpenID Connect Relying Party to discover the End-User's OpenID Provider and obtain information needed to interact with it, including its OAuth 2.0 endpoint locations.

### Example

```python
import time
import os
import affinidi_tdk_login_configuration_client
from affinidi_tdk_login_configuration_client.models.oidc_config import OIDCConfig
from affinidi_tdk_login_configuration_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/vpa
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_login_configuration_client.Configuration(
    host = "https://apse1.api.affinidi.io/vpa"
)


# Enter a context with an instance of the API client
with affinidi_tdk_login_configuration_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_login_configuration_client.IdpApi(api_client)
    project_id = 'project_id_example' # str |

    try:
        # OpenID Connect Discovery
        api_response = api_instance.v1_login_project_project_id_well_known_openid_configuration_get(project_id)
        print("The response of IdpApi->v1_login_project_project_id_well_known_openid_configuration_get:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IdpApi->v1_login_project_project_id_well_known_openid_configuration_get: %s\n" % e)
```

### Parameters

| Name           | Type    | Description | Notes |
| -------------- | ------- | ----------- | ----- |
| **project_id** | **str** |             |

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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
