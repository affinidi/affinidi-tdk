# affinidi_tdk_iota_client.IotaApi

All URIs are relative to *https://apse1.api.affinidi.io/ais*

| Method                                                                                          | HTTP request                                        | Description |
| ----------------------------------------------------------------------------------------------- | --------------------------------------------------- | ----------- |
| [**aws_exchange_credentials**](IotaApi.md#aws_exchange_credentials)                             | **POST** /v1/aws-exchange-credentials               |
| [**aws_exchange_credentials_project_token**](IotaApi.md#aws_exchange_credentials_project_token) | **POST** /v1/aws-exchange-credentials/project-token |
| [**fetch_iota_vp_response**](IotaApi.md#fetch_iota_vp_response)                                 | **POST** /v1/fetch-iota-response                    |
| [**initiate_data_sharing_request**](IotaApi.md#initiate_data_sharing_request)                   | **POST** /v1/initiate-data-sharing-request          |
| [**iota_exchange_credentials**](IotaApi.md#iota_exchange_credentials)                           | **POST** /v1/exchange-credentials                   |

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

> IotaExchangeCredentialsOK aws_exchange_credentials_project_token(aws_exchange_credentials_project_token)

It exchanges project token into cognito

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.aws_exchange_credentials_project_token import AwsExchangeCredentialsProjectToken
from affinidi_tdk_iota_client.models.iota_exchange_credentials_ok import IotaExchangeCredentialsOK
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

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fetch_iota_vp_response**

> FetchIOTAVPResponseOK fetch_iota_vp_response(fetch_iotavp_response_input)

This will get the final data response

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.fetch_iotavp_response_input import FetchIOTAVPResponseInput
from affinidi_tdk_iota_client.models.fetch_iotavp_response_ok import FetchIOTAVPResponseOK
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    fetch_iotavp_response_input = affinidi_tdk_iota_client.FetchIOTAVPResponseInput() # FetchIOTAVPResponseInput | FetchIOTAVPResponseInput

    try:
        api_response = api_instance.fetch_iota_vp_response(fetch_iotavp_response_input)
        print("The response of IotaApi->fetch_iota_vp_response:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->fetch_iota_vp_response: %s\n" % e)
```

### Parameters

| Name                            | Type                                                        | Description              | Notes |
| ------------------------------- | ----------------------------------------------------------- | ------------------------ | ----- |
| **fetch_iotavp_response_input** | [**FetchIOTAVPResponseInput**](FetchIOTAVPResponseInput.md) | FetchIOTAVPResponseInput |

### Return type

[**FetchIOTAVPResponseOK**](FetchIOTAVPResponseOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description           | Response headers                                                                                                  |
| ----------- | --------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | FetchIOTAVPResponseOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError       | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError        | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiate_data_sharing_request**

> InitiateDataSharingRequestOK initiate_data_sharing_request(initiate_data_sharing_request_input)

This will initiate data sharing request for the data sharing flow

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.initiate_data_sharing_request_input import InitiateDataSharingRequestInput
from affinidi_tdk_iota_client.models.initiate_data_sharing_request_ok import InitiateDataSharingRequestOK
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
with affinidi_tdk_iota_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iota_client.IotaApi(api_client)
    initiate_data_sharing_request_input = affinidi_tdk_iota_client.InitiateDataSharingRequestInput() # InitiateDataSharingRequestInput | InitiateDataSharingRequestInput

    try:
        api_response = api_instance.initiate_data_sharing_request(initiate_data_sharing_request_input)
        print("The response of IotaApi->initiate_data_sharing_request:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->initiate_data_sharing_request: %s\n" % e)
```

### Parameters

| Name                                    | Type                                                                      | Description                     | Notes |
| --------------------------------------- | ------------------------------------------------------------------------- | ------------------------------- | ----- |
| **initiate_data_sharing_request_input** | [**InitiateDataSharingRequestInput**](InitiateDataSharingRequestInput.md) | InitiateDataSharingRequestInput |

### Return type

[**InitiateDataSharingRequestOK**](InitiateDataSharingRequestOK.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description                  | Response headers                                                                                                  |
| ----------- | ---------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | InitiateDataSharingRequestOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError               | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **iota_exchange_credentials**

> IotaExchangeCredentialsOK iota_exchange_credentials(iota_exchange_credentials)

It exchanges limited token into cognito sts identity credentials

### Example

```python
import time
import os
import affinidi_tdk_iota_client
from affinidi_tdk_iota_client.models.iota_exchange_credentials import IotaExchangeCredentials
from affinidi_tdk_iota_client.models.iota_exchange_credentials_ok import IotaExchangeCredentialsOK
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
    iota_exchange_credentials = affinidi_tdk_iota_client.IotaExchangeCredentials() # IotaExchangeCredentials | IotaAwsExchangeCredentials

    try:
        api_response = api_instance.iota_exchange_credentials(iota_exchange_credentials)
        print("The response of IotaApi->iota_exchange_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling IotaApi->iota_exchange_credentials: %s\n" % e)
```

### Parameters

| Name                          | Type                                                      | Description                | Notes |
| ----------------------------- | --------------------------------------------------------- | -------------------------- | ----- |
| **iota_exchange_credentials** | [**IotaExchangeCredentials**](IotaExchangeCredentials.md) | IotaAwsExchangeCredentials |

### Return type

[**IotaExchangeCredentialsOK**](IotaExchangeCredentialsOK.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description               | Response headers                                                                                                  |
| ----------- | ------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | IotaExchangeCredentialsOK | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError           | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **403**     | ForbiddenError            | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
