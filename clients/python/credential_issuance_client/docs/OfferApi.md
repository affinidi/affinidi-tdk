# affinidi_tdk_credential_issuance_client.OfferApi

All URIs are relative to _http://localhost_

| Method                                                       | HTTP request                                | Description |
| ------------------------------------------------------------ | ------------------------------------------- | ----------- |
| [**get_credential_offer**](OfferApi.md#get_credential_offer) | **GET** /v1/{projectId}/offers/{issuanceId} |

# **get_credential_offer**

> CredentialOfferResponse get_credential_offer(issuance_id)

Endpoint used to return Credential Offer details, used with `credential_offer_uri` response

### Example

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.credential_offer_response import CredentialOfferResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "http://localhost"
)


# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.OfferApi(api_client)
    issuance_id = 'issuance_id_example' # str | issuanceId from credential_offer_uri

    try:
        api_response = api_instance.get_credential_offer(issuance_id)
        print("The response of OfferApi->get_credential_offer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OfferApi->get_credential_offer: %s\n" % e)
```

### Parameters

| Name            | Type    | Description                          | Notes |
| --------------- | ------- | ------------------------------------ | ----- |
| **issuance_id** | **str** | issuanceId from credential_offer_uri |

### Return type

[**CredentialOfferResponse**](CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers |
| ----------- | --------------- | ---------------- |
| **200**     | Ok              | -                |
| **400**     | BadRequestError | -                |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
