# affinidi_tdk_iam_client.PoliciesApi

All URIs are relative to _http://localhost_

| Method                                                | HTTP request                                  | Description |
| ----------------------------------------------------- | --------------------------------------------- | ----------- |
| [**get_policies**](PoliciesApi.md#get_policies)       | **GET** /v1/policies/principals/{principalId} |
| [**update_policies**](PoliciesApi.md#update_policies) | **PUT** /v1/policies/principals/{principalId} |

# **get_policies**

> PolicyDto get_policies(principal_id, principal_type)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.policy_dto import PolicyDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
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
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.PoliciesApi(api_client)
    principal_id = 'principal_id_example' # str |
    principal_type = 'principal_type_example' # str |

    try:
        api_response = api_instance.get_policies(principal_id, principal_type)
        print("The response of PoliciesApi->get_policies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesApi->get_policies: %s\n" % e)
```

### Parameters

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **principal_id**   | **str** |             |
| **principal_type** | **str** |             |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |
| **404**     | NotFoundError   | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_policies**

> PolicyDto update_policies(principal_id, principal_type, policy_dto)

### Example

- Api Key Authentication (ProjectTokenAuth):

```python
import time
import os
import affinidi_tdk_iam_client
from affinidi_tdk_iam_client.models.policy_dto import PolicyDto
from affinidi_tdk_iam_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_iam_client.Configuration(
    host = "http://localhost"
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
with affinidi_tdk_iam_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_iam_client.PoliciesApi(api_client)
    principal_id = 'principal_id_example' # str |
    principal_type = 'principal_type_example' # str |
    policy_dto = affinidi_tdk_iam_client.PolicyDto() # PolicyDto | UpdatePolicies

    try:
        api_response = api_instance.update_policies(principal_id, principal_type, policy_dto)
        print("The response of PoliciesApi->update_policies:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling PoliciesApi->update_policies: %s\n" % e)
```

### Parameters

| Name               | Type                          | Description    | Notes |
| ------------------ | ----------------------------- | -------------- | ----- |
| **principal_id**   | **str**                       |                |
| **principal_type** | **str**                       |                |
| **policy_dto**     | [**PolicyDto**](PolicyDto.md) | UpdatePolicies |

### Return type

[**PolicyDto**](PolicyDto.md)

### Authorization

[ProjectTokenAuth](../README.md#ProjectTokenAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | OK              | -                |
| **400**     | BadRequestError | -                |
| **500**     | UnexpectedError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
