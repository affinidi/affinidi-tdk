# affinidi_tdk_client_kyc.CorsApi

All URIs are relative to _http://localhost_

| Method                                                                    | HTTP request                 | Description  |
| ------------------------------------------------------------------------- | ---------------------------- | ------------ |
| [**cors_complete_otp_operation**](CorsApi.md#cors_complete_otp_operation) | **OPTIONS** /v1/otp/complete | CORS Support |
| [**cors_initiate_otp_operation**](CorsApi.md#cors_initiate_otp_operation) | **OPTIONS** /v1/otp/initiate | CORS Support |

# **cors_complete_otp_operation**

> CorsCompleteOtpOperationOK cors_complete_otp_operation()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_kyc
from affinidi_tdk_client_kyc.models.cors_complete_otp_operation_ok import CorsCompleteOtpOperationOK
from affinidi_tdk_client_kyc.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kyc.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_kyc.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kyc.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_complete_otp_operation()
        print("The response of CorsApi->cors_complete_otp_operation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_complete_otp_operation: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsCompleteOtpOperationOK**](CorsCompleteOtpOperationOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsCompleteOtpOperationOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_initiate_otp_operation**

> CorsInitiateOtpOperationOK cors_initiate_otp_operation()

CORS Support

Enables CORS by returning correct headers

### Example

```python
import time
import os
import affinidi_tdk_client_kyc
from affinidi_tdk_client_kyc.models.cors_initiate_otp_operation_ok import CorsInitiateOtpOperationOK
from affinidi_tdk_client_kyc.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_client_kyc.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_client_kyc.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_client_kyc.CorsApi(api_client)

    try:
        # CORS Support
        api_response = api_instance.cors_initiate_otp_operation()
        print("The response of CorsApi->cors_initiate_otp_operation:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CorsApi->cors_initiate_otp_operation: %s\n" % e)
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**CorsInitiateOtpOperationOK**](CorsInitiateOtpOperationOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description                | Response headers                                                                                                  |
| ----------- | -------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | CorsInitiateOtpOperationOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
