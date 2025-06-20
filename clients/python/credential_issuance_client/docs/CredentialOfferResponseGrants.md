# CredentialOfferResponseGrants

Object indicating to the Wallet the Grant Types the Credential Issuer's Authorization Server is prepared to process for this Credential Offer.

## Properties

| Name                                                     | Type                                                                                                                                                          | Description | Notes |
| -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **urn_ietf_params_oauth_grant_type_pre_authorized_code** | [**CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode**](CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.md) |             |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants import CredentialOfferResponseGrants

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialOfferResponseGrants from a JSON string
credential_offer_response_grants_instance = CredentialOfferResponseGrants.from_json(json)
# print the JSON string representation of the object
print CredentialOfferResponseGrants.to_json()

# convert the object into a dict
credential_offer_response_grants_dict = credential_offer_response_grants_instance.to_dict()
# create an instance of CredentialOfferResponseGrants from a dict
credential_offer_response_grants_from_dict = CredentialOfferResponseGrants.from_dict(credential_offer_response_grants_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
