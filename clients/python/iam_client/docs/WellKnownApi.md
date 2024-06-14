# affinidi_tdk_iam_client.WellKnownApi

All URIs are relative to *https://apse1.api.affinidi.io/iam*

| Method                                                         | HTTP request                   | Description |
| -------------------------------------------------------------- | ------------------------------ | ----------- |
| [**get_well_known_did**](WellKnownApi.md#get_well_known_did)   | **GET** /.well-known/did.json  |
| [**get_well_known_jwks**](WellKnownApi.md#get_well_known_jwks) | **GET** /.well-known/jwks.json |

# **get_well_known_did**

> GetWellKnownDidOK get_well_known_did()

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.get_well_known_did_ok import GetWellKnownDidOK
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.WellKnownApi(api_client)

    try:
        api_response = api_instance.get_well_known_did()
        print("The response of WellKnownApi->get_well_known_did:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_well_known_did: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWellKnownDidOK**](GetWellKnownDidOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers |
| ----------- | ----------------- | ---------------- |
| **200**     | GetWellKnownDidOK | -                |
| **500**     | UnexpectedError   | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_well_known_jwks**

> JsonWebKeySetDto get_well_known_jwks()

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.json_web_key_set_dto import JsonWebKeySetDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/iam
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "https://apse1.api.affinidi.io/iam"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.WellKnownApi(api_client)

    try:
        api_response = api_instance.get_well_known_jwks()
        print("The response of WellKnownApi->get_well_known_jwks:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling WellKnownApi->get_well_known_jwks: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**JsonWebKeySetDto**](JsonWebKeySetDto.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                              | Response headers |
| ----------- | ---------------------------------------- | ---------------- |
| **200**     | List of JWK used by the services as JWKS | -                |
| **500**     | UnexpectedError                          | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
