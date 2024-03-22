# affinidi_tdk_client_cwe.RevocationApi

All URIs are relative to _http://localhost_

| Method                                                                                | HTTP request                                            | Description                        |
| ------------------------------------------------------------------------------------- | ------------------------------------------------------- | ---------------------------------- |
| [**get_revocation_list_credential**](RevocationApi.md#get_revocation_list_credential) | **GET** /v1/wallets/{walletId}/revocation-list/{listId} | Return revocation list credential. |
| [**revoke_credential**](RevocationApi.md#revoke_credential)                           | **POST** /v1/wallets/{walletId}/revoke                  | Revoke Credential.                 |

# **get_revocation_list_credential**

> GetRevocationListCredentialResultDto get_revocation_list_credential(list_id, wallet_id)

Return revocation list credential.

Get revocation list 2020 Credential (required to check if VC revoked).

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_cwe
from affinidi_tdk_client_cwe.models.get_revocation_list_credential_result_dto import GetRevocationListCredentialResultDto
from affinidi_tdk_client_cwe.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cwe.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_cwe.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cwe.RevocationApi(api_client)
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
import affinidi_tdk_client_cwe
from affinidi_tdk_client_cwe.models.revoke_credential_input import RevokeCredentialInput
from affinidi_tdk_client_cwe.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cwe.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ProjectTokenAuth
configuration.api_key['ProjectTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ProjectTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_cwe.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cwe.RevocationApi(api_client)
    wallet_id = 'wallet_id_example' # str | id of the wallet
    revoke_credential_input = affinidi_tdk_client_cwe.RevokeCredentialInput() # RevokeCredentialInput | RevokeCredential

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

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
