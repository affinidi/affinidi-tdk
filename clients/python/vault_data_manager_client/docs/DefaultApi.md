# affinidi_tdk_vault_data_manager_client.DefaultApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                             | HTTP request          | Description |
| -------------------------------------------------- | --------------------- | ----------- |
| [**create_account**](DefaultApi.md#create_account) | **POST** /v1/accounts |

# **create_account**

> CreateAccountOK create_account(create_account_input)

creates account

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.create_account_input import CreateAccountInput
from affinidi_tdk_vault_data_manager_client.models.create_account_ok import CreateAccountOK
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
    api_instance = affinidi_tdk_vault_data_manager_client.DefaultApi(api_client)
    create_account_input = affinidi_tdk_vault_data_manager_client.CreateAccountInput() # CreateAccountInput | CreateAccount

    try:
        api_response = api_instance.create_account(create_account_input)
        print("The response of DefaultApi->create_account:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->create_account: %s\n" % e)
```

### Parameters

| Name                     | Type                                            | Description   | Notes |
| ------------------------ | ----------------------------------------------- | ------------- | ----- |
| **create_account_input** | [**CreateAccountInput**](CreateAccountInput.md) | CreateAccount |

### Return type

[**CreateAccountOK**](CreateAccountOK.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | CreateAccountOK | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
