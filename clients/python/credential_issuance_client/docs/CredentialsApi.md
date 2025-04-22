# affinidi_tdk_credential_issuance_client.CredentialsApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                                                         | HTTP request                                                                                | Description                                           |
| ---------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [**batch_credential**](CredentialsApi.md#batch_credential)                                     | **POST** /v1/{projectId}/batch_credential                                                   | Allows wallets to claim multiple credentials at once. |
| [**generate_credentials**](CredentialsApi.md#generate_credentials)                             | **POST** /v1/{projectId}/credential                                                         |
| [**get_claimed_credentials**](CredentialsApi.md#get_claimed_credentials)                       | **GET** /v1/{projectId}/configurations/{configurationId}/credentials                        | Get claimed credential in the specified range         |
| [**get_issuance_id_claimed_credential**](CredentialsApi.md#get_issuance_id_claimed_credential) | **GET** /v1/{projectId}/configurations/{configurationId}/issuances/{issuanceId}/credentials | Get claimed VC linked to the issuanceId               |

# **batch_credential**

> BatchCredentialResponse batch_credential(project_id, batch_credential_input)

Allows wallets to claim multiple credentials at once.

Allows wallets to claim multiple credentials at once. For authentication, it uses a token from the authorization server

### Example

- Bearer (JWT) Authentication (bearerAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.batch_credential_input import BatchCredentialInput
from affinidi_tdk_credential_issuance_client.models.batch_credential_response import BatchCredentialResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    batch_credential_input = affinidi_tdk_credential_issuance_client.BatchCredentialInput() # BatchCredentialInput | Request body for batch credential

    try:
        # Allows wallets to claim multiple credentials at once.
        api_response = api_instance.batch_credential(project_id, batch_credential_input)
        print("The response of CredentialsApi->batch_credential:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->batch_credential: %s\n" % e)
```

### Parameters

| Name                       | Type                                                | Description                       | Notes |
| -------------------------- | --------------------------------------------------- | --------------------------------- | ----- |
| **project_id**             | **str**                                             | Affinidi project id               |
| **batch_credential_input** | [**BatchCredentialInput**](BatchCredentialInput.md) | Request body for batch credential |

### Return type

[**BatchCredentialResponse**](BatchCredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description | Response headers                                                                                                  |
| ----------- | ----------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok          | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **generate_credentials**

> CredentialResponse generate_credentials(project_id, create_credential_input)

Issue credential for end user upon presentation a valid access token. Since we don't immediate issue credential It's expected to return `transaction_id` and use this `transaction_id` to get the deferred credentials

### Example

- Bearer (JWT) Authentication (bearerAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.create_credential_input import CreateCredentialInput
from affinidi_tdk_credential_issuance_client.models.credential_response import CredentialResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure Bearer authorization (JWT): bearerAuth
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    access_token = os.environ["BEARER_TOKEN"]
)

# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    create_credential_input = affinidi_tdk_credential_issuance_client.CreateCredentialInput() # CreateCredentialInput | Request body to issue credentials

    try:
        api_response = api_instance.generate_credentials(project_id, create_credential_input)
        print("The response of CredentialsApi->generate_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->generate_credentials: %s\n" % e)
```

### Parameters

| Name                        | Type                                                  | Description                       | Notes |
| --------------------------- | ----------------------------------------------------- | --------------------------------- | ----- |
| **project_id**              | **str**                                               | Affinidi project id               |
| **create_credential_input** | [**CreateCredentialInput**](CreateCredentialInput.md) | Request body to issue credentials |

### Return type

[**CredentialResponse**](CredentialResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description       | Response headers                                                                                                  |
| ----------- | ----------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok                | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **401**     | UnauthorizedError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_claimed_credentials**

> ClaimedCredentialListResponse get_claimed_credentials(project_id, configuration_id, range_start_time, range_end_time=range_end_time, exclusive_start_key=exclusive_start_key, limit=limit)

Get claimed credential in the specified range

Get claimed credential in the specified range

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.claimed_credential_list_response import ClaimedCredentialListResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | project id
    configuration_id = 'configuration_id_example' # str | configuration id
    range_start_time = 'range_start_time_example' # str |
    range_end_time = 'range_end_time_example' # str |  (optional)
    exclusive_start_key = 'exclusive_start_key_example' # str | exclusiveStartKey for retrieving the next batch of data. (optional)
    limit = 20 # int |  (optional) (default to 20)

    try:
        # Get claimed credential in the specified range
        api_response = api_instance.get_claimed_credentials(project_id, configuration_id, range_start_time, range_end_time=range_end_time, exclusive_start_key=exclusive_start_key, limit=limit)
        print("The response of CredentialsApi->get_claimed_credentials:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->get_claimed_credentials: %s\n" % e)
```

### Parameters

| Name                    | Type    | Description                                              | Notes                      |
| ----------------------- | ------- | -------------------------------------------------------- | -------------------------- |
| **project_id**          | **str** | project id                                               |
| **configuration_id**    | **str** | configuration id                                         |
| **range_start_time**    | **str** |                                                          |
| **range_end_time**      | **str** |                                                          | [optional]                 |
| **exclusive_start_key** | **str** | exclusiveStartKey for retrieving the next batch of data. | [optional]                 |
| **limit**               | **int** |                                                          | [optional] [default to 20] |

### Return type

[**ClaimedCredentialListResponse**](ClaimedCredentialListResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_issuance_id_claimed_credential**

> ClaimedCredentialResponse get_issuance_id_claimed_credential(project_id, configuration_id, issuance_id)

Get claimed VC linked to the issuanceId

Get claimed VC linked to the issuanceId

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.claimed_credential_response import ClaimedCredentialResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
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
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.CredentialsApi(api_client)
    project_id = 'project_id_example' # str | project id
    configuration_id = 'configuration_id_example' # str | configuration id
    issuance_id = 'issuance_id_example' # str | issuance id

    try:
        # Get claimed VC linked to the issuanceId
        api_response = api_instance.get_issuance_id_claimed_credential(project_id, configuration_id, issuance_id)
        print("The response of CredentialsApi->get_issuance_id_claimed_credential:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling CredentialsApi->get_issuance_id_claimed_credential: %s\n" % e)
```

### Parameters

| Name                 | Type    | Description      | Notes |
| -------------------- | ------- | ---------------- | ----- |
| **project_id**       | **str** | project id       |
| **configuration_id** | **str** | configuration id |
| **issuance_id**      | **str** | issuance id      |

### Return type

[**ClaimedCredentialResponse**](ClaimedCredentialResponse.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **404**     | NotFoundError   | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
