# affinidi_tdk_iam_client.ConsumerAuthApi

All URIs are relative to _http://localhost_

| Method                                                                              | HTTP request                       | Description                           |
| ----------------------------------------------------------------------------------- | ---------------------------------- | ------------------------------------- |
| [**consumer_auth_token_endpoint**](ConsumerAuthApi.md#consumer_auth_token_endpoint) | **POST** /v1/consumer/oauth2/token | The Consumer OAuth 2.0 Token Endpoint |

# **consumer_auth_token_endpoint**

> ConsumerAuthTokenEndpointOutput consumer_auth_token_endpoint(consumer_auth_token_endpoint_input)

The Consumer OAuth 2.0 Token Endpoint

Use open source libraries to perform OAuth 2.0 and OpenID Connect available for any programming language. You can find a list of libraries here https://oauth.net/code/ The Ory SDK is not yet able to this endpoint properly.

### Example

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.consumer_auth_token_endpoint_input import ConsumerAuthTokenEndpointInput
from affinidi_tdk_iam_client.models.consumer_auth_token_endpoint_output import ConsumerAuthTokenEndpointOutput
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.ConsumerAuthApi(api_client)
    consumer_auth_token_endpoint_input = affinidi_tdk_iam_client.ConsumerAuthTokenEndpointInput() # ConsumerAuthTokenEndpointInput | ConsumerAuthTokenEndpoint

    try:
        # The Consumer OAuth 2.0 Token Endpoint
        api_response = api_instance.consumer_auth_token_endpoint(consumer_auth_token_endpoint_input)
        print("The response of ConsumerAuthApi->consumer_auth_token_endpoint:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling ConsumerAuthApi->consumer_auth_token_endpoint: %s\n" % e)
```

### Parameters

| Name                                   | Type                                                                    | Description               | Notes |
| -------------------------------------- | ----------------------------------------------------------------------- | ------------------------- | ----- |
| **consumer_auth_token_endpoint_input** | [**ConsumerAuthTokenEndpointInput**](ConsumerAuthTokenEndpointInput.md) | ConsumerAuthTokenEndpoint |

### Return type

[**ConsumerAuthTokenEndpointOutput**](ConsumerAuthTokenEndpointOutput.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Consumer Token OK Response | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError             | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
