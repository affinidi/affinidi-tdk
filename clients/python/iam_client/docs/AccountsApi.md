# affinidi_tdk_iam_client.AccountsApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                              | HTTP request                   | Description |
| ------------------------------------------------------------------- | ------------------------------ | ----------- |
| [**list_account_passkeys**](AccountsApi.md#list_account_passkeys)   | **GET** /v1/accounts/passkeys  |
| [**list_account_providers**](AccountsApi.md#list_account_providers) | **GET** /v1/accounts/providers |

# **list_account_passkeys**

> PasskeyList list_account_passkeys()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.passkey_list import PasskeyList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.AccountsApi(api_client)

    try:
        api_response = api_instance.list_account_passkeys()
        print("The response of AccountsApi->list_account_passkeys:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountsApi->list_account_passkeys: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PasskeyList**](PasskeyList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                       | Response headers                                                                           |
| ----------- | ------------------------------------------------- | ------------------------------------------------------------------------------------------ |
| **200**     | Registered passkeys for the authenticated account | \* Cache-Control - Always no-store; account authentication methods must not be cached <br> |
| **403**     | ForbiddenError                                    | -                                                                                          |
| **404**     | NotFoundError                                     | -                                                                                          |
| **422**     | UnprocessableEntity                               | -                                                                                          |
| **424**     | FailedDependencyError                             | -                                                                                          |
| **500**     | UnexpectedError                                   | -                                                                                          |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_account_providers**

> ProviderList list_account_providers()

### Example

- Api Key Authentication (UserTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.provider_list import ProviderList
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: UserTokenAuth
configuration.api_key['UserTokenAuth'] = os.environ["API_KEY"]

# Configure a hook to auto-refresh API key for your personal access token (PAT), if expired
import affinidi_tdk_auth_provider

stats = {
  apiGatewayUrl,
  keyId,
  passphrase,
  privateKey,
  projectId,
  tokenEndpoint,
  tokenId,
}
authProvider = affinidi_tdk_auth_provider.AuthProvider(stats)
configuration.refresh_api_key_hook = lambda api_client: authProvider.fetch_project_scoped_token()

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['UserTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.AccountsApi(api_client)

    try:
        api_response = api_instance.list_account_providers()
        print("The response of AccountsApi->list_account_providers:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountsApi->list_account_providers: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ProviderList**](ProviderList.md)

### Authorization

[UserTokenAuth](../README.md#UserTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                                        | Response headers                                                                           |
| ----------- | ------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| **200**     | Linked and unlinked social providers for the authenticated account | \* Cache-Control - Always no-store; account authentication methods must not be cached <br> |
| **403**     | ForbiddenError                                                     | -                                                                                          |
| **404**     | NotFoundError                                                      | -                                                                                          |
| **422**     | UnprocessableEntity                                                | -                                                                                          |
| **424**     | FailedDependencyError                                              | -                                                                                          |
| **500**     | UnexpectedError                                                    | -                                                                                          |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
