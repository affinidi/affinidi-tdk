# affinidi_tdk_client_iam.CorsApi

All URIs are relative to _http://localhost_

| Method                                                                                | HTTP request                          | Description  |
| ------------------------------------------------------------------------------------- | ------------------------------------- | ------------ |
| [**cors_consumer_auth_token_endpoint**](CorsApi.md#cors_consumer_auth_token_endpoint) | **OPTIONS** /v1/consumer/oauth2/token | CORS Support |

# **cors_consumer_auth_token_endpoint**

> CorsConsumerAuthTokenEndpointOK cors_consumer_auth_token_endpoint()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_iam
from affinidi_tdk_client_iam.models.cors_consumer_auth_token_endpoint_ok import CorsConsumerAuthTokenEndpointOK
from affinidi_tdk_client_iam.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_iam.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_iam.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_iam.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_consumer_auth_token_endpoint()
        print("The response of CorsApi->cors_consumer_auth_token_endpoint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_consumer_auth_token_endpoint: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsConsumerAuthTokenEndpointOK**](CorsConsumerAuthTokenEndpointOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                     | Response headers                                                                                                  |
| ----------- | ------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsConsumerAuthTokenEndpointOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError                 | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
