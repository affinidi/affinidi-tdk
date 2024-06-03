# affinidi_tdk_credential_issuance_client.WellKnownApi

All URIs are relative to _http://localhost_

| Method                                                                                                   | HTTP request                                                 | Description |
| -------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ----------- |
| [**get_well_known_open_id_credential_issuer**](WellKnownApi.md#get_well_known_open_id_credential_issuer) | **GET** /v1/{projectId}/.well-known/openid-credential-issuer |

# **get_well_known_open_id_credential_issuer**

> WellKnownOpenIdCredentialIssuerResponse get_well_known_open_id_credential_issuer()

### Example

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.well_known_open_id_credential_issuer_response import WellKnownOpenIdCredentialIssuerResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.WellKnownApi(api_client)

    try:
        api_response = api_instance.get_well_known_open_id_credential_issuer()
        print("The response of WellKnownApi->get_well_known_open_id_credential_issuer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_well_known_open_id_credential_issuer: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WellKnownOpenIdCredentialIssuerResponse**](WellKnownOpenIdCredentialIssuerResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                                 | Response headers                                                                                                  |
| ----------- | ------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Credential issuer Metadata and capabilities | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
