# CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode

Object specifying whether the Authorization Server expects presentation of a Transaction Code by the End-User along with the Token Request in a Pre-Authorized Code Flow

## Properties

| Name            | Type      | Description                                                                                                     | Notes      |
| --------------- | --------- | --------------------------------------------------------------------------------------------------------------- | ---------- |
| **length**      | **float** | Integer specifying the length of the Transaction Code                                                           | [optional] |
| **input_mode**  | **str**   | String specifying the input character set. Possible values are numeric (only digits) and text (any characters). | [optional] |
| **description** | **str**   | String containing guidance for the Holder of the Wallet on how to obtain the Transaction Code                   | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code import CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode from a JSON string
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code_instance = CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.from_json(json)
# print the JSON string representation of the object
print CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode.to_json()

# convert the object into a dict
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code_dict = credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code_instance.to_dict()
# create an instance of CredentialOfferResponseGrantsUrnIetfParamsOauthGrantTypePreAuthorizedCodeTxCode from a dict
credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code_form_dict = credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code.from_dict(credential_offer_response_grants_urn_ietf_params_oauth_grant_type_pre_authorized_code_tx_code_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
