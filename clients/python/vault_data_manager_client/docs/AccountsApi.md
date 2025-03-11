# affinidi_tdk_vault_data_manager_client.AccountsApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                              | HTTP request                            | Description |
| --------------------------------------------------- | --------------------------------------- | ----------- |
| [**delete_account**](AccountsApi.md#delete_account) | **DELETE** /v1/accounts/{accountNumber} |
| [**list_accounts**](AccountsApi.md#list_accounts)   | **GET** /v1/accounts                    |

# **delete_account**

> DeleteAccountDto delete_account(account_number)

Delete account.

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.delete_account_dto import DeleteAccountDto
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.AccountsApi(api_client)
    account_number = 'account_number_example' # str |

    try:
        api_response = api_instance.delete_account(account_number)
        print("The response of AccountsApi->delete_account:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountsApi->delete_account: %s\n" % e)
```

### Parameters

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **account_number** | **str** |             |

### Return type

[**DeleteAccountDto**](DeleteAccountDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **202**     | DeleteAccountOK | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_accounts**

> ListAccountsDto list_accounts()

List accounts of associated profiles.

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.list_accounts_dto import ListAccountsDto
from affinidi_tdk_vault_data_manager_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://api.vault.affinidi.com/vfs
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_vault_data_manager_client.Configuration(
    host = "https://api.vault.affinidi.com/vfs"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.AccountsApi(api_client)

    try:
        api_response = api_instance.list_accounts()
        print("The response of AccountsApi->list_accounts:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling AccountsApi->list_accounts: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ListAccountsDto**](ListAccountsDto.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | ListAccountsOK  | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
