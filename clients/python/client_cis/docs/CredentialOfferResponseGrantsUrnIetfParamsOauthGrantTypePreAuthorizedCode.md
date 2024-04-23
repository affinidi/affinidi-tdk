# CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode

Grant type for `pre-authorized_code` flow

## Properties

| Name                    | Type                                                                                                                                                                      | Description                                        | Notes |
| ----------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------- | ----- |
| **pre_authorized_code** | **str**                                                                                                                                                                   | pre authorized code to be exchanged with jwt token |
| **tx_code**             | [**CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode**](CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.md) |                                                    |

## Example

```python
from affinidi_tdk_client_cis.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code import CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode from a JSON string
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_instance = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.from_json(json)
# print the JSON string representation of the object
print CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode.to_json()

# convert the object into a dict
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_dict = credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_instance.to_dict()
# create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCode from a dict
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_form_dict = credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code.from_dict(credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
