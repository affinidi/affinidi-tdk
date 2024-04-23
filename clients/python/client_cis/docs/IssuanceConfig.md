# IssuanceConfig

## Properties

| Name                          | Type                                                                                                                | Description                                                                                                                                                             | Notes      |
| ----------------------------- | ------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **id**                        | **str**                                                                                                             |                                                                                                                                                                         | [optional] |
| **issuer_did**                | **str**                                                                                                             | Issuer DID                                                                                                                                                              | [optional] |
| **issuer_wallet_id**          | **str**                                                                                                             | Issuer Wallet id                                                                                                                                                        | [optional] |
| **credential_offer_duration** | **float**                                                                                                           | credential offer duration in second                                                                                                                                     | [optional] |
| **c_nonce_duration**          | **float**                                                                                                           | c_nonce duration in second                                                                                                                                              | [optional] |
| **format**                    | **str**                                                                                                             | String identifying the format of this Credential, i.e., jwt_vc_json-ld or ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **issuer_uri**                | **str**                                                                                                             | Issuer URI                                                                                                                                                              | [optional] |
| **credential_supported**      | [**List[CreateIssuanceConfigInputCredentialSupportedInner]**](CreateIssuanceConfigInputCredentialSupportedInner.md) |                                                                                                                                                                         | [optional] |
| **issuer_metadata**           | **Dict[str, object]**                                                                                               | Issuer public information wallet may want to show to user during consent confirmation                                                                                   | [optional] |
| **version**                   | **float**                                                                                                           |                                                                                                                                                                         | [optional] |

## Example

```python
from affinidi_tdk_client_cis.models.issuance_config import IssuanceConfig

# TODO update the JSON string below
json = "{}"
# create an instance of IssuanceConfig from a JSON string
issuance_config_instance = IssuanceConfig.from_json(json)
# print the JSON string representation of the object
print IssuanceConfig.to_json()

# convert the object into a dict
issuance_config_dict = issuance_config_instance.to_dict()
# create an instance of IssuanceConfig from a dict
issuance_config_form_dict = issuance_config.from_dict(issuance_config_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
