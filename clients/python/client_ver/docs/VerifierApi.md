# affinidi_tdk_client_ver.VerifierApi

All URIs are relative to _http://localhost_

| Method                                                                                  | HTTP request                                   | Description                     |
| --------------------------------------------------------------------------------------- | ---------------------------------------------- | ------------------------------- |
| [**build_credential_request**](VerifierApi.md#build_credential_request)                 | **POST** /v1/verifier/build-credential-request | Builds credential share request |
| [**validate_jwt**](VerifierApi.md#validate_jwt)                                         | **POST** /v1/verifier/validate-jwt             | Validates JWT token             |
| [**verify_credential_share_response**](VerifierApi.md#verify_credential_share_response) | **POST** /v1/verifier/verify-share-response    | Verifying share response token  |
| [**verify_credentials**](VerifierApi.md#verify_credentials)                             | **POST** /v1/verifier/verify-vcs               | Verifying VC                    |
| [**verify_presentation**](VerifierApi.md#verify_presentation)                           | **POST** /v1/verifier/verify-vp                | Verifying VP                    |

# **build_credential_request**

> BuildCredentialRequestOutput build_credential_request(build_credential_request_input)

Builds credential share request

Build credential share request JWT object from input data.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_ver
from affinidi_tdk_client_ver.models.build_credential_request_input import BuildCredentialRequestInput
from affinidi_tdk_client_ver.models.build_credential_request_output import BuildCredentialRequestOutput
from affinidi_tdk_client_ver.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_ver.Configuration(
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
with affinidi_tdk_client_ver.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_ver.VerifierApi(api_client)
    build_credential_request_input = affinidi_tdk_client_ver.BuildCredentialRequestInput() # BuildCredentialRequestInput | BuildCredentialRequest

    try:
        # Builds credential share request
        api_response = api_instance.build_credential_request(build_credential_request_input)
        print("The response of VerifierApi->build_credential_request:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerifierApi->build_credential_request: %s\n" % e)
```

### Parameters

| Name                               | Type                                                              | Description            | Notes |
| ---------------------------------- | ----------------------------------------------------------------- | ---------------------- | ----- |
| **build_credential_request_input** | [**BuildCredentialRequestInput**](BuildCredentialRequestInput.md) | BuildCredentialRequest |

### Return type

[**BuildCredentialRequestOutput**](BuildCredentialRequestOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |
| **400**     | BadRequest  | -                |
| **403**     | Forbidden   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validate_jwt**

> ValidateJwtOutput validate_jwt(validate_jwt_input)

Validates JWT token

Validates JWT object. returns isValid: boolean payload: payload from JWT

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_ver
from affinidi_tdk_client_ver.models.validate_jwt_input import ValidateJwtInput
from affinidi_tdk_client_ver.models.validate_jwt_output import ValidateJwtOutput
from affinidi_tdk_client_ver.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_ver.Configuration(
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
with affinidi_tdk_client_ver.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_ver.VerifierApi(api_client)
    validate_jwt_input = affinidi_tdk_client_ver.ValidateJwtInput() # ValidateJwtInput | ValidateJwt

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

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | OK          | -                |
| **400**     | BadRequest  | -                |
| **403**     | Forbidden   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_credential_share_response**

> VerifyCredentialShareResponseOutput verify_credential_share_response(verify_credential_share_response_input)

Verifying share response token

Verifying JWT token (signature and expiration), validate each credential inside it (signature), validate response against request if requestToken was passed. `errors` contains list of error messages for invalid credentials.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_ver
from affinidi_tdk_client_ver.models.verify_credential_share_response_input import VerifyCredentialShareResponseInput
from affinidi_tdk_client_ver.models.verify_credential_share_response_output import VerifyCredentialShareResponseOutput
from affinidi_tdk_client_ver.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_ver.Configuration(
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
with affinidi_tdk_client_ver.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_ver.VerifierApi(api_client)
    verify_credential_share_response_input = affinidi_tdk_client_ver.VerifyCredentialShareResponseInput() # VerifyCredentialShareResponseInput | VerifyCredentialShareResponse

    try:
        # Verifying share response token
        api_response = api_instance.verify_credential_share_response(verify_credential_share_response_input)
        print("The response of VerifierApi->verify_credential_share_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerifierApi->verify_credential_share_response: %s\n" % e)
```

### Parameters

| Name                                       | Type                                                                            | Description                   | Notes |
| ------------------------------------------ | ------------------------------------------------------------------------------- | ----------------------------- | ----- |
| **verify_credential_share_response_input** | [**VerifyCredentialShareResponseInput**](VerifyCredentialShareResponseInput.md) | VerifyCredentialShareResponse |

### Return type

[**VerifyCredentialShareResponseOutput**](VerifyCredentialShareResponseOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |
| **400**     | BadRequest  | -                |
| **403**     | Forbidden   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_credentials**

> VerifyCredentialOutput verify_credentials(verify_credential_input)

Verifying VC

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_ver
from affinidi_tdk_client_ver.models.verify_credential_input import VerifyCredentialInput
from affinidi_tdk_client_ver.models.verify_credential_output import VerifyCredentialOutput
from affinidi_tdk_client_ver.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_ver.Configuration(
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
with affinidi_tdk_client_ver.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_ver.VerifierApi(api_client)
    verify_credential_input = affinidi_tdk_client_ver.VerifyCredentialInput() # VerifyCredentialInput | VerifyCredentials

    try:
        # Verifying VC
        api_response = api_instance.verify_credentials(verify_credential_input)
        print("The response of VerifierApi->verify_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerifierApi->verify_credentials: %s\n" % e)
```

### Parameters

| Name                        | Type                                                  | Description       | Notes |
| --------------------------- | ----------------------------------------------------- | ----------------- | ----- |
| **verify_credential_input** | [**VerifyCredentialInput**](VerifyCredentialInput.md) | VerifyCredentials |

### Return type

[**VerifyCredentialOutput**](VerifyCredentialOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |
| **400**     | BadRequest  | -                |
| **403**     | Forbidden   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verify_presentation**

> VerifyPresentationOutput verify_presentation(verify_presentation_input)

Verifying VP

Verifying Verifiable Presentation (signatures) `isValid` - true if presentation verified `error` verificaction error.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_client_ver
from affinidi_tdk_client_ver.models.verify_presentation_input import VerifyPresentationInput
from affinidi_tdk_client_ver.models.verify_presentation_output import VerifyPresentationOutput
from affinidi_tdk_client_ver.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_ver.Configuration(
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
with affinidi_tdk_client_ver.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_ver.VerifierApi(api_client)
    verify_presentation_input = affinidi_tdk_client_ver.VerifyPresentationInput() # VerifyPresentationInput | VerifyPresentation

    try:
        # Verifying VP
        api_response = api_instance.verify_presentation(verify_presentation_input)
        print("The response of VerifierApi->verify_presentation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling VerifierApi->verify_presentation: %s\n" % e)
```

### Parameters

| Name                          | Type                                                      | Description        | Notes |
| ----------------------------- | --------------------------------------------------------- | ------------------ | ----- |
| **verify_presentation_input** | [**VerifyPresentationInput**](VerifyPresentationInput.md) | VerifyPresentation |

### Return type

[**VerifyPresentationOutput**](VerifyPresentationOutput.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers |
| ----------- | ----------- | ---------------- |
| **200**     | Ok          | -                |
| **400**     | BadRequest  | -                |
| **403**     | Forbidden   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
