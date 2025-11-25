# affinidi_tdk_wallets_client.WalletApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                              | HTTP request                                            | Description |
| ------------------------------------------------------------------- | ------------------------------------------------------- | ----------- |
| [**create_wallet**](WalletApi.md#create_wallet)                     | **POST** /v1/wallets                                    |
| [**delete_wallet**](WalletApi.md#delete_wallet)                     | **DELETE** /v1/wallets/{walletId}                       |
| [**get_wallet**](WalletApi.md#get_wallet)                           | **GET** /v1/wallets/{walletId}                          |
| [**list_wallets**](WalletApi.md#list_wallets)                       | **GET** /v1/wallets                                     |
| [**sign_credential**](WalletApi.md#sign_credential)                 | **POST** /v1/wallets/{walletId}/sign-credential         |
| [**sign_credentials_jwt**](WalletApi.md#sign_credentials_jwt)       | **POST** /v2/wallets/{walletId}/credentials/jwt/sign    |
| [**sign_credentials_ldp**](WalletApi.md#sign_credentials_ldp)       | **POST** /v2/wallets/{walletId}/credentials/ldp/sign    |
| [**sign_credentials_sd_jwt**](WalletApi.md#sign_credentials_sd_jwt) | **POST** /v2/wallets/{walletId}/credentials/sd-jwt/sign |
| [**sign_jwt_token**](WalletApi.md#sign_jwt_token)                   | **POST** /v1/wallets/{walletId}/sign-jwt                |
| [**sign_presentations_ldp**](WalletApi.md#sign_presentations_ldp)   | **POST** /v2/wallets/{walletId}/presentations/ldp/sign  |
| [**update_wallet**](WalletApi.md#update_wallet)                     | **PATCH** /v1/wallets/{walletId}                        |

# **create_wallet**

> CreateWalletResponse create_wallet(create_wallet_input=create_wallet_input)

creates a wallet

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.create_wallet_input import CreateWalletInput
from affinidi_tdk_wallets_client.models.create_wallet_response import CreateWalletResponse
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    create_wallet_input = {"name":"AliceWallet","description":"Personal wallet using did:key","didMethod":"key"} # CreateWalletInput | CreateWallet (optional)

    try:
        api_response = api_instance.create_wallet(create_wallet_input=create_wallet_input)
        print("The response of WalletApi->create_wallet:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->create_wallet: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description  | Notes      |
| ----------------------- | --------------------------------------------- | ------------ | ---------- |
| **create_wallet_input** | [**CreateWalletInput**](CreateWalletInput.md) | CreateWallet | [optional] |

### Return type

[**CreateWalletResponse**](CreateWalletResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description    | Response headers |
| ----------- | -------------- | ---------------- |
| **201**     | Created        | -                |
| **403**     | ForbiddenError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_wallet**

> delete_wallet(wallet_id)

delete wallet by walletId

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet

    try:
        api_instance.delete_wallet(wallet_id)
    except Exception as e:
        print("Exception when calling WalletApi->delete_wallet: %s\n" % e)
```

### Parameters

| Name          | Type    | Description      | Notes |
| ------------- | ------- | ---------------- | ----- |
| **wallet_id** | **str** | id of the wallet |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **204**     | Deleted     | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_wallet**

> WalletDto get_wallet(wallet_id)

get wallet details using wallet Id.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.wallet_dto import WalletDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet

    try:
        api_response = api_instance.get_wallet(wallet_id)
        print("The response of WalletApi->get_wallet:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->get_wallet: %s\n" % e)
```

### Parameters

| Name          | Type    | Description      | Notes |
| ------------- | ------- | ---------------- | ----- |
| **wallet_id** | **str** | id of the wallet |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_wallets**

> WalletsListDto list_wallets(did_type=did_type)

lists all wallets

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.wallets_list_dto import WalletsListDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    did_type = 'did_type_example' # str |  (optional)

    try:
        api_response = api_instance.list_wallets(did_type=did_type)
        print("The response of WalletApi->list_wallets:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->list_wallets: %s\n" % e)
```

### Parameters

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **did_type** | **str** |             | [optional] |

### Return type

[**WalletsListDto**](WalletsListDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_credential**

> SignCredentialResultDto sign_credential(wallet_id, sign_credential_input_dto)

signs credential with the wallet

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_credential_input_dto import SignCredentialInputDto
from affinidi_tdk_wallets_client.models.sign_credential_result_dto import SignCredentialResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    sign_credential_input_dto = affinidi_tdk_wallets_client.SignCredentialInputDto() # SignCredentialInputDto | SignCredential

    try:
        api_response = api_instance.sign_credential(wallet_id, sign_credential_input_dto)
        print("The response of WalletApi->sign_credential:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_credential: %s\n" % e)
```

### Parameters

| Name                          | Type                                                    | Description      | Notes |
| ----------------------------- | ------------------------------------------------------- | ---------------- | ----- |
| **wallet_id**                 | **str**                                                 | id of the wallet |
| **sign_credential_input_dto** | [**SignCredentialInputDto**](SignCredentialInputDto.md) | SignCredential   |

### Return type

[**SignCredentialResultDto**](SignCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_credentials_jwt**

> SignCredentialsJwtResultDto sign_credentials_jwt(wallet_id, sign_credentials_jwt_input_dto)

signs credential with the wallet v2

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_credentials_jwt_input_dto import SignCredentialsJwtInputDto
from affinidi_tdk_wallets_client.models.sign_credentials_jwt_result_dto import SignCredentialsJwtResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    sign_credentials_jwt_input_dto = affinidi_tdk_wallets_client.SignCredentialsJwtInputDto() # SignCredentialsJwtInputDto | signCredentialsJwt

    try:
        api_response = api_instance.sign_credentials_jwt(wallet_id, sign_credentials_jwt_input_dto)
        print("The response of WalletApi->sign_credentials_jwt:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_credentials_jwt: %s\n" % e)
```

### Parameters

| Name                               | Type                                                            | Description        | Notes |
| ---------------------------------- | --------------------------------------------------------------- | ------------------ | ----- |
| **wallet_id**                      | **str**                                                         | id of the wallet   |
| **sign_credentials_jwt_input_dto** | [**SignCredentialsJwtInputDto**](SignCredentialsJwtInputDto.md) | signCredentialsJwt |

### Return type

[**SignCredentialsJwtResultDto**](SignCredentialsJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_credentials_ldp**

> SignCredentialsLdpResultDto sign_credentials_ldp(wallet_id, sign_credentials_ldp_input_dto)

signs credential with the wallet v2

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_credentials_ldp_input_dto import SignCredentialsLdpInputDto
from affinidi_tdk_wallets_client.models.sign_credentials_ldp_result_dto import SignCredentialsLdpResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    sign_credentials_ldp_input_dto = affinidi_tdk_wallets_client.SignCredentialsLdpInputDto() # SignCredentialsLdpInputDto | signCredentialsLdp

    try:
        api_response = api_instance.sign_credentials_ldp(wallet_id, sign_credentials_ldp_input_dto)
        print("The response of WalletApi->sign_credentials_ldp:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_credentials_ldp: %s\n" % e)
```

### Parameters

| Name                               | Type                                                            | Description        | Notes |
| ---------------------------------- | --------------------------------------------------------------- | ------------------ | ----- |
| **wallet_id**                      | **str**                                                         | id of the wallet   |
| **sign_credentials_ldp_input_dto** | [**SignCredentialsLdpInputDto**](SignCredentialsLdpInputDto.md) | signCredentialsLdp |

### Return type

[**SignCredentialsLdpResultDto**](SignCredentialsLdpResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_credentials_sd_jwt**

> SignCredentialsDm2SdJwtResultDto sign_credentials_sd_jwt(wallet_id, sign_credentials_dm2_sd_jwt_input_dto)

signs credential with the wallet v2

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_sd_jwt_input_dto import SignCredentialsDm2SdJwtInputDto
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_sd_jwt_result_dto import SignCredentialsDm2SdJwtResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    sign_credentials_dm2_sd_jwt_input_dto = affinidi_tdk_wallets_client.SignCredentialsDm2SdJwtInputDto() # SignCredentialsDm2SdJwtInputDto | SignCredentialsDm1SdJwt

    try:
        api_response = api_instance.sign_credentials_sd_jwt(wallet_id, sign_credentials_dm2_sd_jwt_input_dto)
        print("The response of WalletApi->sign_credentials_sd_jwt:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_credentials_sd_jwt: %s\n" % e)
```

### Parameters

| Name                                      | Type                                                                      | Description             | Notes |
| ----------------------------------------- | ------------------------------------------------------------------------- | ----------------------- | ----- |
| **wallet_id**                             | **str**                                                                   | id of the wallet        |
| **sign_credentials_dm2_sd_jwt_input_dto** | [**SignCredentialsDm2SdJwtInputDto**](SignCredentialsDm2SdJwtInputDto.md) | SignCredentialsDm1SdJwt |

### Return type

[**SignCredentialsDm2SdJwtResultDto**](SignCredentialsDm2SdJwtResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_jwt_token**

> SignJwtTokenOK sign_jwt_token(wallet_id, sign_jwt_token)

signs a jwt token with the wallet

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_jwt_token import SignJwtToken
from affinidi_tdk_wallets_client.models.sign_jwt_token_ok import SignJwtTokenOK
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet.
    sign_jwt_token = affinidi_tdk_wallets_client.SignJwtToken() # SignJwtToken | SignJwtToken

    try:
        api_response = api_instance.sign_jwt_token(wallet_id, sign_jwt_token)
        print("The response of WalletApi->sign_jwt_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_jwt_token: %s\n" % e)
```

### Parameters

| Name               | Type                                | Description       | Notes |
| ------------------ | ----------------------------------- | ----------------- | ----- |
| **wallet_id**      | **str**                             | id of the wallet. |
| **sign_jwt_token** | [**SignJwtToken**](SignJwtToken.md) | SignJwtToken      |

### Return type

[**SignJwtTokenOK**](SignJwtTokenOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | SignJwtTokenOK  | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sign_presentations_ldp**

> SignPresentationLdpResultDto sign_presentations_ldp(wallet_id, sign_presentation_ldp_input_dto)

signs presentation with the wallet

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.sign_presentation_ldp_input_dto import SignPresentationLdpInputDto
from affinidi_tdk_wallets_client.models.sign_presentation_ldp_result_dto import SignPresentationLdpResultDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    sign_presentation_ldp_input_dto = affinidi_tdk_wallets_client.SignPresentationLdpInputDto() # SignPresentationLdpInputDto | signPresentationLdp

    try:
        api_response = api_instance.sign_presentations_ldp(wallet_id, sign_presentation_ldp_input_dto)
        print("The response of WalletApi->sign_presentations_ldp:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->sign_presentations_ldp: %s\n" % e)
```

### Parameters

| Name                                | Type                                                              | Description         | Notes |
| ----------------------------------- | ----------------------------------------------------------------- | ------------------- | ----- |
| **wallet_id**                       | **str**                                                           | id of the wallet    |
| **sign_presentation_ldp_input_dto** | [**SignPresentationLdpInputDto**](SignPresentationLdpInputDto.md) | signPresentationLdp |

### Return type

[**SignPresentationLdpResultDto**](SignPresentationLdpResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_wallet**

> WalletDto update_wallet(wallet_id, update_wallet_input)

update wallet details using wallet Id.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.update_wallet_input import UpdateWalletInput
from affinidi_tdk_wallets_client.models.wallet_dto import WalletDto
from affinidi_tdk_wallets_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cwe
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_wallets_client.Configuration(
    host = "https://apse1.api.affinidi.io/cwe"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_wallets_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_wallets_client.WalletApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    update_wallet_input = affinidi_tdk_wallets_client.UpdateWalletInput() # UpdateWalletInput | UpdateWallet

    try:
        api_response = api_instance.update_wallet(wallet_id, update_wallet_input)
        print("The response of WalletApi->update_wallet:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WalletApi->update_wallet: %s\n" % e)
```

### Parameters

| Name                    | Type                                          | Description      | Notes |
| ----------------------- | --------------------------------------------- | ---------------- | ----- |
| **wallet_id**           | **str**                                       | id of the wallet |
| **update_wallet_input** | [**UpdateWalletInput**](UpdateWalletInput.md) | UpdateWallet     |

### Return type

[**WalletDto**](WalletDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
