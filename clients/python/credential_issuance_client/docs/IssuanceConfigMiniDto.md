# IssuanceConfigMiniDto

## Properties

| Name                          | Type                  | Description                                                                                                                                                             | Notes      |
| ----------------------------- | --------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **id**                        | **str**               |                                                                                                                                                                         |
| **issuer_did**                | **str**               | Issuer DID                                                                                                                                                              | [optional] |
| **issuer_wallet_id**          | **str**               | Issuer Wallet id                                                                                                                                                        | [optional] |
| **credential_offer_duration** | **float**             | credential offer duration in second                                                                                                                                     | [optional] |
| **c_nonce_duration**          | **float**             | c_nonce duration in second                                                                                                                                              | [optional] |
| **format**                    | **str**               | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuer_uri**                | **str**               | Issuer URI                                                                                                                                                              | [optional] |
| **issuer_metadata**           | **Dict[str, object]** | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] |
| **version**                   | **float**             |                                                                                                                                                                         | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.issuance_config_mini_dto import IssuanceConfigMiniDto

# TODO update the JSON string below
json = "{}"
# create an instance of IssuanceConfigMiniDto from a JSON string
issuance_config_mini_dto_instance = IssuanceConfigMiniDto.from_json(json)
# print the JSON string representation of the object
print IssuanceConfigMiniDto.to_json()

# convert the object into a dict
issuance_config_mini_dto_dict = issuance_config_mini_dto_instance.to_dict()
# create an instance of IssuanceConfigMiniDto from a dict
issuance_config_mini_dto_form_dict = issuance_config_mini_dto.from_dict(issuance_config_mini_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
