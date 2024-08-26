# CredentialOfferResponse

## Properties

| Name                             | Type                                                                  | Description                                                                                                          | Notes |
| -------------------------------- | --------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------- | ----- |
| **credential_issuer**            | **str**                                                               | The URL of the Credential Issuer                                                                                     |
| **credential_configuration_ids** | **List[str]**                                                         | Array of unique strings that each identify one of the keys in the name/value pairs stored in the credentialSupported |
| **grants**                       | [**CredentialOfferResponseGrants**](CredentialOfferResponseGrants.md) |                                                                                                                      |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_offer_response import CredentialOfferResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialOfferResponse from a JSON string
credential_offer_response_instance = CredentialOfferResponse.from_json(json)
# print the JSON string representation of the object
print CredentialOfferResponse.to_json()

# convert the object into a dict
credential_offer_response_dict = credential_offer_response_instance.to_dict()
# create an instance of CredentialOfferResponse from a dict
credential_offer_response_from_dict = CredentialOfferResponse.from_dict(credential_offer_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
