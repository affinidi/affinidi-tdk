# affinidi_tdk_client_kyc.OtpApi

All URIs are relative to _http://localhost_

| Method                                                         | HTTP request              | Description |
| -------------------------------------------------------------- | ------------------------- | ----------- |
| [**complete_otp_operation**](OtpApi.md#complete_otp_operation) | **POST** /v1/otp/complete |
| [**initiate_otp_operation**](OtpApi.md#initiate_otp_operation) | **POST** /v1/otp/initiate |

# **complete_otp_operation**

> CompleteResponse complete_otp_operation(complete_request)

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kyc
from affinidi_tdk_client_kyc.models.complete_request import CompleteRequest
from affinidi_tdk_client_kyc.models.complete_response import CompleteResponse
from affinidi_tdk_client_kyc.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kyc.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kyc.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kyc.OtpApi(api_client)
    complete_request = affinidi_tdk_client_kyc.CompleteRequest() # CompleteRequest | CompleteOtpOperation

    try:
        api_response = api_instance.complete_otp_operation(complete_request)
        print("The response of OtpApi->complete_otp_operation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtpApi->complete_otp_operation: %s\n" % e)
```

### Parameters

| Name                 | Type                                      | Description          | Notes |
| -------------------- | ----------------------------------------- | -------------------- | ----- |
| **complete_request** | [**CompleteRequest**](CompleteRequest.md) | CompleteOtpOperation |

### Return type

[**CompleteResponse**](CompleteResponse.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers                                                                                                  |
| ----------- | -------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError      | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **429**     | TooManyRequestsError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError      | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiate_otp_operation**

> InitiateResponse initiate_otp_operation(initiate_request)

### Example

- Api Key Authentication (ConsumerTokenAuth):

```python
import time
import os
import affinidi_tdk_client_kyc
from affinidi_tdk_client_kyc.models.initiate_request import InitiateRequest
from affinidi_tdk_client_kyc.models.initiate_response import InitiateResponse
from affinidi_tdk_client_kyc.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kyc.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ConsumerTokenAuth
configuration.api_key['ConsumerTokenAuth'] = os.environ["API_KEY"]

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ConsumerTokenAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with affinidi_tdk_client_kyc.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kyc.OtpApi(api_client)
    initiate_request = affinidi_tdk_client_kyc.InitiateRequest() # InitiateRequest | InitiateOtpOperation

    try:
        api_response = api_instance.initiate_otp_operation(initiate_request)
        print("The response of OtpApi->initiate_otp_operation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OtpApi->initiate_otp_operation: %s\n" % e)
```

### Parameters

| Name                 | Type                                      | Description          | Notes |
| -------------------- | ----------------------------------------- | -------------------- | ----- |
| **initiate_request** | [**InitiateRequest**](InitiateRequest.md) | InitiateOtpOperation |

### Return type

[**InitiateResponse**](InitiateResponse.md)

### Authorization

[ConsumerTokenAuth](../README.md#ConsumerTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description          | Response headers                                                                                                  |
| ----------- | -------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | OTP email sent       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **409**     | ConflictError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **429**     | TooManyRequestsError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **500**     | UnexpectedError      | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
