# affinidi_tdk_credential_verification_client.VerifierApi

All URIs are relative to _http://localhost_

| Method                                          | HTTP request                       | Description         |
| ----------------------------------------------- | ---------------------------------- | ------------------- |
| [**validate_jwt**](VerifierApi.md#validate_jwt) | **POST** /v1/verifier/validate-jwt | Validates JWT token |

# **validate_jwt**

> ValidateJwtOutput validate_jwt(validate_jwt_input)

Validates JWT token

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_verification_client
from affinidi_tdk_credential_verification_client.models.validate_jwt_input import ValidateJwtInput
from affinidi_tdk_credential_verification_client.models.validate_jwt_output import ValidateJwtOutput
from affinidi_tdk_credential_verification_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_verification_client.Configuration(
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
with affinidi_tdk_credential_verification_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_verification_client.VerifierApi(api_client)
    validate_jwt_input = affinidi_tdk_credential_verification_client.ValidateJwtInput() # ValidateJwtInput | ValidateJwt

    try:
        # Validates JWT token
        api_response = api_instance.validate_jwt(validate_jwt_input)
        print("The response of VerifierApi->validate_jwt:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerifierApi->validate_jwt: %s\n" % e)
```

### Parameters

| Name                   | Type                                        | Description | Notes |
| ---------------------- | ------------------------------------------- | ----------- | ----- |
| **validate_jwt_input** | [**ValidateJwtInput**](ValidateJwtInput.md) | ValidateJwt |

### Return type

[**ValidateJwtOutput**](ValidateJwtOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
