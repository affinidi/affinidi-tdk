# affinidi_tdk_credential_issuance_client.CredentialsApi

All URIs are relative to _http://localhost_

| Method                                                             | HTTP request                        | Description |
| ------------------------------------------------------------------ | ----------------------------------- | ----------- |
| [**generate_credentials**](CredentialsApi.md#generate_credentials) | **POST** /v1/{projectId}/credential |

# **generate_credentials**

> CredentialResponse generate_credentials(project_id, create_credential_input)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

- Bearer (JWT) Authentication (bearerAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.create_credential_input import CreateCredentialInput
from affinidi_tdk_credential_issuance_client.models.credential_response import CredentialResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    create_credential_input = affinidi_tdk_credential_issuance_client.CreateCredentialInput() # CreateCredentialInput | Request body to issue credentials

    try:
        api_response = api_instance.generate_credentials(project_id, create_credential_input)
        print("The response of CredentialsApi->generate_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->generate_credentials: %s\n" % e)
```

### Parameters

| Name                        | Type                                                  | Description                       | Notes |
| --------------------------- | ----------------------------------------------------- | --------------------------------- | ----- |
| **project_id**              | **str**                                               | Affinidi project id               |
| **create_credential_input** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | Ok                | -                |
| **400**     | BadRequestError   | -                |
| **401**     | UnauthorizedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
