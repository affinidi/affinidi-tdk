# CredentialOfferExpiredError

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
from affinidi_tdk_credential_issuance_client.models.credential_offer_expired_error import CredentialOfferExpiredError

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialOfferExpiredError from a JSON string
credential_offer_expired_error_instance = CredentialOfferExpiredError.from_json(json)
# print the JSON string representation of the object
print CredentialOfferExpiredError.to_json()

# convert the object into a dict
credential_offer_expired_error_dict = credential_offer_expired_error_instance.to_dict()
# create an instance of CredentialOfferExpiredError from a dict
credential_offer_expired_error_form_dict = credential_offer_expired_error.from_dict(credential_offer_expired_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
