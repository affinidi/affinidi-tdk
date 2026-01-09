# affinidi_tdk_wallets_client.RevocationApi

All URIs are relative to *https://apse1.api.affinidi.io/cwe*

| Method                                                                                    | HTTP request                                                                       | Description                        |
| ----------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------- | ---------------------------------- |
| [**get_revocation_credential_status**](RevocationApi.md#get_revocation_credential_status) | **GET** /v1/projects/{projectId}/wallets/{walletId}/revocation-statuses/{statusId} |
| [**get_revocation_list_credential**](RevocationApi.md#get_revocation_list_credential)     | **GET** /v1/wallets/{walletId}/revocation-list/{listId}                            | Return revocation list credential. |
| [**revoke_credential**](RevocationApi.md#revoke_credential)                               | **POST** /v1/wallets/{walletId}/revoke                                             | Revoke Credential.                 |
| [**revoke_credentials**](RevocationApi.md#revoke_credentials)                             | **POST** /v2/wallets/{walletId}/credentials/revoke                                 | Revoke Credentials.                |

# **get_revocation_credential_status**

> GetRevocationListCredentialResultDto get_revocation_credential_status(project_id, wallet_id, status_id)

Get revocation status list as RevocationListCredential

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.get_revocation_list_credential_result_dto import GetRevocationListCredentialResultDto
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
    api_instance = affinidi_tdk_wallets_client.RevocationApi(api_client)
    project_id = 'project_id_example' # str | Description for projectId.
    wallet_id = 'wallet_id_example' # str | Description for walletId.
    status_id = 'status_id_example' # str | Description for statusId.

    try:
        api_response = api_instance.get_revocation_credential_status(project_id, wallet_id, status_id)
        print("The response of RevocationApi->get_revocation_credential_status:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RevocationApi->get_revocation_credential_status: %s\n" % e)
```

### Parameters

| Name           | Type    | Description                | Notes |
| -------------- | ------- | -------------------------- | ----- |
| **project_id** | **str** | Description for projectId. |
| **wallet_id**  | **str** | Description for walletId.  |
| **status_id**  | **str** | Description for statusId.  |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                     | Response headers |
| ----------- | ------------------------------- | ---------------- |
| **200**     | GetRevocationCredentialStatusOK | -                |
| **404**     | NotFoundError                   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_revocation_list_credential**

> GetRevocationListCredentialResultDto get_revocation_list_credential(list_id, wallet_id)

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked). It is a public endpoint.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.get_revocation_list_credential_result_dto import GetRevocationListCredentialResultDto
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
    api_instance = affinidi_tdk_wallets_client.RevocationApi(api_client)
    list_id = 'list_id_example' # str |
    wallet_id = 'wallet_id_example' # str | id of the wallet

    try:
        # Return revocation list credential.
        api_response = api_instance.get_revocation_list_credential(list_id, wallet_id)
        print("The response of RevocationApi->get_revocation_list_credential:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling RevocationApi->get_revocation_list_credential: %s\n" % e)
```

### Parameters

| Name          | Type    | Description      | Notes |
| ------------- | ------- | ---------------- | ----- |
| **list_id**   | **str** |                  |
| **wallet_id** | **str** | id of the wallet |

### Return type

[**GetRevocationListCredentialResultDto**](GetRevocationListCredentialResultDto.md)

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

# **revoke_credential**

> revoke_credential(wallet_id, revoke_credential_input)

Revoke Credential.

Update index/credetial at appropriate revocation list (set revoken is true).

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.revoke_credential_input import RevokeCredentialInput
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
    api_instance = affinidi_tdk_wallets_client.RevocationApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    revoke_credential_input = affinidi_tdk_wallets_client.RevokeCredentialInput() # RevokeCredentialInput | RevokeCredential

    try:
        # Revoke Credential.
        api_instance.revoke_credential(wallet_id, revoke_credential_input)
    except Exception as e:
        print("Exception when calling RevocationApi->revoke_credential: %s\n" % e)
```

### Parameters

| Name                        | Type                                                  | Description      | Notes |
| --------------------------- | ----------------------------------------------------- | ---------------- | ----- |
| **wallet_id**               | **str**                                               | id of the wallet |
| **revoke_credential_input** | [**RevokeCredentialInput**](RevokeCredentialInput.md) | RevokeCredential |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers |
| ----------- | -------------------- | ---------------- |
| **200**     | Ok                   | -                |
| **400**     | BadRequestError      | -                |
| **403**     | ForbiddenError       | -                |
| **404**     | NotFoundError        | -                |
| **429**     | TooManyRequestsError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **revoke_credentials**

> revoke_credentials(wallet_id, revoke_credentials_input)

Revoke Credentials.

Update index/credential at appropriate revocation list (set revoked is true).

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_wallets_client
from affinidi_tdk_wallets_client.models.revoke_credentials_input import RevokeCredentialsInput
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
    api_instance = affinidi_tdk_wallets_client.RevocationApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    revoke_credentials_input = affinidi_tdk_wallets_client.RevokeCredentialsInput() # RevokeCredentialsInput | RevokeCredentials

    try:
        # Revoke Credentials.
        api_instance.revoke_credentials(wallet_id, revoke_credentials_input)
    except Exception as e:
        print("Exception when calling RevocationApi->revoke_credentials: %s\n" % e)
```

### Parameters

| Name                         | Type                                                    | Description       | Notes |
| ---------------------------- | ------------------------------------------------------- | ----------------- | ----- |
| **wallet_id**                | **str**                                                 | id of the wallet  |
| **revoke_credentials_input** | [**RevokeCredentialsInput**](RevokeCredentialsInput.md) | RevokeCredentials |

### Return type

void (empty response body)

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
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
