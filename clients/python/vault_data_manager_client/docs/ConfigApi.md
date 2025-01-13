# affinidi_tdk_vault_data_manager_client.ConfigApi

All URIs are relative to *https://api.vault.affinidi.com/vfs*

| Method                                    | HTTP request       | Description |
| ----------------------------------------- | ------------------ | ----------- |
| [**get_config**](ConfigApi.md#get_config) | **GET** /v1/config |

# **get_config**

> GetConfigOK get_config()

Retrieves the user profile name and the maximum number of profiles, with default values set to 'default' and 1, respectively.

### Example

- Api Key Authentication (AwsSigV4):

```python
import time
import os
import affinidi_tdk_vault_data_manager_client
from affinidi_tdk_vault_data_manager_client.models.get_config_ok import GetConfigOK
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

# Configure API key authorization: AwsSigV4
configuration.api_key['AwsSigV4'] = os.environ["API_KEY"]

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
# configuration.api_key_prefix['AwsSigV4'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_vault_data_manager_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_vault_data_manager_client.ConfigApi(api_client)

    try:
        api_response = api_instance.get_config()
        print("The response of ConfigApi->get_config:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConfigApi->get_config: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetConfigOK**](GetConfigOK.md)

### Authorization

[AwsSigV4](../README.md#AwsSigV4)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | GetConfigOK     | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
