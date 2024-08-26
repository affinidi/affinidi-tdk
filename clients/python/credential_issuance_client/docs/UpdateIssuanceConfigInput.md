# UpdateIssuanceConfigInput

## Properties

| Name                          | Type                                                                | Description                                                                                                                                           | Notes      |
| ----------------------------- | ------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                      | **str**                                                             |                                                                                                                                                       | [optional] |
| **description**               | **str**                                                             |                                                                                                                                                       | [optional] |
| **issuer_wallet_id**          | **str**                                                             | Issuer Wallet id                                                                                                                                      | [optional] |
| **credential_offer_duration** | **float**                                                           | credential offer duration in second                                                                                                                   | [optional] |
| **format**                    | **str**                                                             | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuer_uri**                | **str**                                                             | Issuer URI                                                                                                                                            | [optional] |
| **credential_supported**      | [**List[CredentialSupportedObject]**](CredentialSupportedObject.md) |                                                                                                                                                       | [optional] |
| **issuer_metadata**           | **Dict[str, object]**                                               | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.update_issuance_config_input import UpdateIssuanceConfigInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateIssuanceConfigInput from a JSON string
update_issuance_config_input_instance = UpdateIssuanceConfigInput.from_json(json)
# print the JSON string representation of the object
print UpdateIssuanceConfigInput.to_json()

# convert the object into a dict
update_issuance_config_input_dict = update_issuance_config_input_instance.to_dict()
# create an instance of UpdateIssuanceConfigInput from a dict
update_issuance_config_input_from_dict = UpdateIssuanceConfigInput.from_dict(update_issuance_config_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
