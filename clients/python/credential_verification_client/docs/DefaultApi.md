# affinidi_tdk_credential_verification_client.DefaultApi

All URIs are relative to *https://apse1.api.affinidi.io/ver*

| Method                                                       | HTTP request                     | Description  |
| ------------------------------------------------------------ | -------------------------------- | ------------ |
| [**verify_credentials**](DefaultApi.md#verify_credentials)   | **POST** /v1/verifier/verify-vcs | Verifying VC |
| [**verify_presentation**](DefaultApi.md#verify_presentation) | **POST** /v1/verifier/verify-vp  | Verifying VP |

# **verify_credentials**

> VerifyCredentialOutput verify_credentials(verify_credential_input)

Verifying VC

Verifying Verifiable Credentials (signatures) `isValid` - true if all credentials verified `errors` contains list of error messages for invalid credentials.

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_verification_client
from affinidi_tdk_credential_verification_client.models.verify_credential_input import VerifyCredentialInput
from affinidi_tdk_credential_verification_client.models.verify_credential_output import VerifyCredentialOutput
from affinidi_tdk_credential_verification_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ver
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_verification_client.Configuration(
    host = "https://apse1.api.affinidi.io/ver"
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
with affinidi_tdk_credential_verification_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_verification_client.DefaultApi(api_client)
    verify_credential_input = affinidi_tdk_credential_verification_client.VerifyCredentialInput() # VerifyCredentialInput | VerifyCredentials

    try:
        # Verifying VC
        api_response = api_instance.verify_credentials(verify_credential_input)
        print("The response of DefaultApi->verify_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->verify_credentials: %s\n" % e)
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

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

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
import affinidi_tdk_credential_verification_client
from affinidi_tdk_credential_verification_client.models.verify_presentation_input import VerifyPresentationInput
from affinidi_tdk_credential_verification_client.models.verify_presentation_output import VerifyPresentationOutput
from affinidi_tdk_credential_verification_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ver
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_verification_client.Configuration(
    host = "https://apse1.api.affinidi.io/ver"
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
with affinidi_tdk_credential_verification_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_verification_client.DefaultApi(api_client)
    verify_presentation_input = affinidi_tdk_credential_verification_client.VerifyPresentationInput() # VerifyPresentationInput | VerifyPresentation

    try:
        # Verifying VP
        api_response = api_instance.verify_presentation(verify_presentation_input)
        print("The response of DefaultApi->verify_presentation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling DefaultApi->verify_presentation: %s\n" % e)
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

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
