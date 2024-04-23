# affinidi_tdk_client_cis.CredentialsApi

All URIs are relative to _http://localhost_

| Method                                                             | HTTP request                                 | Description |
| ------------------------------------------------------------------ | -------------------------------------------- | ----------- |
| [**deferred_credentials**](CredentialsApi.md#deferred_credentials) | **POST** /v1/{projectId}/deferred_credential |
| [**generate_credentials**](CredentialsApi.md#generate_credentials) | **POST** /v1/{projectId}/credential          |

# **deferred_credentials**

> CredentialResponseImmediate deferred_credentials(project_id, deferred_credential_input, authorization=authorization)

Get deferred credential by `transaction_id`

### Example

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.models.credential_response_immediate import CredentialResponseImmediate
from affinidi_tdk_client_cis.models.deferred_credential_input import DeferredCredentialInput
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    deferred_credential_input = affinidi_tdk_client_cis.DeferredCredentialInput() # DeferredCredentialInput | Request body of deferred credentials
    authorization = 'authorization_example' # str | Token from OID4VCI auth server (optional)

    try:
        api_response = api_instance.deferred_credentials(project_id, deferred_credential_input, authorization=authorization)
        print("The response of CredentialsApi->deferred_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->deferred_credentials: %s\n" % e)
```

### Parameters

| Name                          | Type                                                      | Description                          | Notes      |
| ----------------------------- | --------------------------------------------------------- | ------------------------------------ | ---------- |
| **project_id**                | **str**                                                   | Affinidi project id                  |
| **deferred_credential_input** | [**DeferredCredentialInput**](DeferredCredentialInput.md) | Request body of deferred credentials |
| **authorization**             | **str**                                                   | Token from OID4VCI auth server       | [optional] |

### Return type

[**CredentialResponseImmediate**](CredentialResponseImmediate.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_credentials**

> CredentialResponse generate_credentials(project_id, create_credential_input, authorization=authorization)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

```python
import time
import os
import affinidi_tdk_client_cis
from affinidi_tdk_client_cis.models.create_credential_input import CreateCredentialInput
from affinidi_tdk_client_cis.models.credential_response import CredentialResponse
from affinidi_tdk_client_cis.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_cis.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_cis.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_cis.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    create_credential_input = affinidi_tdk_client_cis.CreateCredentialInput() # CreateCredentialInput | Request body to issue credentials
    authorization = 'authorization_example' # str | Token from OID4VCI auth server (optional)

    try:
        api_response = api_instance.generate_credentials(project_id, create_credential_input, authorization=authorization)
        print("The response of CredentialsApi->generate_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->generate_credentials: %s\n" % e)
```

### Parameters

| Name                        | Type                                                  | Description                       | Notes      |
| --------------------------- | ----------------------------------------------------- | --------------------------------- | ---------- |
| **project_id**              | **str**                                               | Affinidi project id               |
| **create_credential_input** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |
| **authorization**           | **str**                                               | Token from OID4VCI auth server    | [optional] |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
