# affinidi_tdk_iota_client.IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                          | HTTP request                                                 | Description         |
| ----------------------------------------------------------------------------------------------- | ------------------------------------------------------------ | ------------------- |
| [**aws_exchange_credentials**](IotaApi.md#aws_exchange_credentials)                             | **POST** /v1/aws-exchange-credentials                        |
| [**aws_exchange_credentials_project_token**](IotaApi.md#aws_exchange_credentials_project_token) | **POST** /v1/aws-exchange-credentials/project-token          |
| [**delete_pex_queries**](IotaApi.md#delete_pex_queries)                                         | **POST** /v1/configurations/{configurationId}/delete-queries | deletes pex queries |
| [**save_pex_queries**](IotaApi.md#save_pex_queries)                                             | **POST** /v1/configurations/{configurationId}/save-queries   |

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

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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

# **aws_exchange_credentials_project_token**

> AwsExchangeCredentialsOK aws_exchange_credentials_project_token(aws_exchange_credentials_project_token)

It exchanges project token into cognito

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.aws_exchange_credentials_ok import AwsExchangeCredentialsOK
from affinidi_tdk_iota_client.models.aws_exchange_credentials_project_token import AwsExchangeCredentialsProjectToken
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    aws_exchange_credentials_project_token = affinidi_tdk_iota_client.AwsExchangeCredentialsProjectToken() # AwsExchangeCredentialsProjectToken | AwsExchangeCredentialsProjectToken

    try:
        api_response = api_instance.aws_exchange_credentials_project_token(aws_exchange_credentials_project_token)
        print("The response of IotaApi->aws_exchange_credentials_project_token:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->aws_exchange_credentials_project_token: %s\n" % e)
```

### Parameters

| Name                                       | Type                                                                            | Description                        | Notes |
| ------------------------------------------ | ------------------------------------------------------------------------------- | ---------------------------------- | ----- |
| **aws_exchange_credentials_project_token** | [**AwsExchangeCredentialsProjectToken**](AwsExchangeCredentialsProjectToken.md) | AwsExchangeCredentialsProjectToken |

### Return type

[**AwsExchangeCredentialsOK**](AwsExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

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

# **delete_pex_queries**

> delete_pex_queries(configuration_id)

deletes pex queries

deletes pex queries

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id

    try:
        # deletes pex queries
        api_instance.delete_pex_queries(configuration_id)
    except Exception as e:
        print("Exception when calling IotaApi->delete_pex_queries: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description          | Notes |
| -------------------- | ------- | -------------------- | ----- |
| **configuration_id** | **str** | iotaConfiguration Id |

### Return type

void (empty response body)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     |                 | -                |
| **400**     | BadRequestError | -                |
| **403**     | ForbiddenError  | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **save_pex_queries**

> object save_pex_queries(configuration_id, save_pex_queries_update_input)

saves all pex queries

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.save_pex_queries_update_input import SavePexQueriesUpdateInput
from affinidi_tdk_iota_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/ais
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iota_client.Configuration(
    host = "https://apse1.api.affinidi.io/ais"
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    configuration_id = 'configuration_id_example' # str | iotaConfiguration Id
    save_pex_queries_update_input = affinidi_tdk_iota_client.SavePexQueriesUpdateInput() # SavePexQueriesUpdateInput | SavePexQueriesInput

    try:
        api_response = api_instance.save_pex_queries(configuration_id, save_pex_queries_update_input)
        print("The response of IotaApi->save_pex_queries:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->save_pex_queries: %s\n" % e)
```

### Parameters

| Name                              | Type                                                          | Description          | Notes |
| --------------------------------- | ------------------------------------------------------------- | -------------------- | ----- |
| **configuration_id**              | **str**                                                       | iotaConfiguration Id |
| **save_pex_queries_update_input** | [**SavePexQueriesUpdateInput**](SavePexQueriesUpdateInput.md) | SavePexQueriesInput  |

### Return type

**object**

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description              | Response headers |
| ----------- | ------------------------ | ---------------- |
| **200**     | SavePexQueriesResponseOK | -                |
| **400**     | BadRequestError          | -                |
| **403**     | ForbiddenError           | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
