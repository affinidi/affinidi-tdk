# affinidi_tdk_iota_client.IotaApi

All URIs are relative to _http://localhost_

| Method                                                              | HTTP request                          | Description |
| ------------------------------------------------------------------- | ------------------------------------- | ----------- |
| [**aws_exchange_credentials**](IotaApi.md#aws_exchange_credentials) | **POST** /v1/aws-exchange-credentials |

# **aws_exchange_credentials**

> AwsExchangeCredentialsOK aws_exchange_credentials(aws_exchange_credentials)

It exchanges limited token into cognito

### Example

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.aws_exchange_credentials import AwsExchangeCredentials
from affinidi_tdk_iota_client.models.aws_exchange_credentials_ok import AwsExchangeCredentialsOK
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    aws_exchange_credentials = affinidi_tdk_iota_client.AwsExchangeCredentials() # AwsExchangeCredentials | AwsExchangeCredentials

    try:
        api_response = api_instance.aws_exchange_credentials(aws_exchange_credentials)
        print("The response of IotaApi->aws_exchange_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->aws_exchange_credentials: %s\n" % e)
```

### Parameters

| Name                         | Type                                                    | Description            | Notes |
| ---------------------------- | ------------------------------------------------------- | ---------------------- | ----- |
| **aws_exchange_credentials** | [**AwsExchangeCredentials**](AwsExchangeCredentials.md) | AwsExchangeCredentials |

### Return type

[**AwsExchangeCredentialsOK**](AwsExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers                                                                                                  |
| ----------- | ------------------------ | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | AwsExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
