# affinidi_tdk_credential_issuance_client.OfferApi

All URIs are relative to *https://apse1.api.affinidi.io/cis*

| Method                                                       | HTTP request                                | Description |
| ------------------------------------------------------------ | ------------------------------------------- | ----------- |
| [**get_credential_offer**](OfferApi.md#get_credential_offer) | **GET** /v1/{projectId}/offers/{issuanceId} |

# **get_credential_offer**

> CredentialOfferResponse get_credential_offer(project_id, issuance_id)

Endpoint used to return Credential Offer details, used with `credential_offer_uri` response

### Example

```python
import time
import os
import affinidi_tdk_credential_issuance_client
from affinidi_tdk_credential_issuance_client.models.credential_offer_response import CredentialOfferResponse
from affinidi_tdk_credential_issuance_client.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to https://apse1.api.affinidi.io/cis
# See configuration.py for a list of all supported configuration parameters.
configuration = affinidi_tdk_credential_issuance_client.Configuration(
    host = "https://apse1.api.affinidi.io/cis"
)


# Enter a context with an instance of the API client
with affinidi_tdk_credential_issuance_client.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = affinidi_tdk_credential_issuance_client.OfferApi(api_client)
    project_id = 'project_id_example' # str | Affinidi project id
    issuance_id = 'issuance_id_example' # str | issuanceId from credential_offer_uri

    try:
        api_response = api_instance.get_credential_offer(project_id, issuance_id)
        print("The response of OfferApi->get_credential_offer:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling OfferApi->get_credential_offer: %s\n" % e)
```

### Parameters

| Name            | Type    | Description                          | Notes |
| --------------- | ------- | ------------------------------------ | ----- |
| **project_id**  | **str** | Affinidi project id                  |
| **issuance_id** | **str** | issuanceId from credential_offer_uri |

### Return type

[**CredentialOfferResponse**](CredentialOfferResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details

| Status code | Description     | Response headers                                                                                                  |
| ----------- | --------------- | ----------------------------------------------------------------------------------------------------------------- |
| **200**     | Ok              | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |
| **400**     | BadRequestError | _ Access-Control-Allow-Origin - <br> _ Access-Control-Allow-Methods - <br> \* Access-Control-Allow-Headers - <br> |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
