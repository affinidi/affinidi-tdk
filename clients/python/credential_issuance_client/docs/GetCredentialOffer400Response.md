# GetCredentialOffer400Response

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.get_credential_offer400_response import GetCredentialOffer400Response

# TODO update the JSON string below
json = "{}"
# create an instance of GetCredentialOffer400Response from a JSON string
get_credential_offer400_response_instance = GetCredentialOffer400Response.from_json(json)
# print the JSON string representation of the object
print GetCredentialOffer400Response.to_json()

# convert the object into a dict
get_credential_offer400_response_dict = get_credential_offer400_response_instance.to_dict()
# create an instance of GetCredentialOffer400Response from a dict
get_credential_offer400_response_from_dict = GetCredentialOffer400Response.from_dict(get_credential_offer400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
