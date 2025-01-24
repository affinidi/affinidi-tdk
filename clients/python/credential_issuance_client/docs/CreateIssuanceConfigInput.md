# CreateIssuanceConfigInput

## Properties

| Name                          | Type                                                                    | Description                                                                                                                                           | Notes      |
| ----------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                      | **str**                                                                 |                                                                                                                                                       | [optional] |
| **description**               | **str**                                                                 |                                                                                                                                                       | [optional] |
| **issuer_wallet_id**          | **str**                                                                 | Issuer Wallet id                                                                                                                                      |
| **credential_offer_duration** | **float**                                                               | credential offer duration in second                                                                                                                   | [optional] |
| **format**                    | **str**                                                                 | String identifying the format of this Credential, i.e., ldp_vc. Depending on the format value, the object contains further elements defining the type | [optional] |
| **credential_supported**      | [**List[CredentialSupportedObject]**](CredentialSupportedObject.md)     |                                                                                                                                                       |
| **issuer_metadata**           | **Dict[str, object]**                                                   | Issuer public information wallet may want to show to user during consent confirmation                                                                 | [optional] |
| **return_uris**               | **List[str]**                                                           | List of allowed URIs to be returned to after issuance                                                                                                 | [optional] |
| **webhook**                   | [**CisConfigurationWebhookSetting**](CisConfigurationWebhookSetting.md) |                                                                                                                                                       | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.create_issuance_config_input import CreateIssuanceConfigInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateIssuanceConfigInput from a JSON string
create_issuance_config_input_instance = CreateIssuanceConfigInput.from_json(json)
# print the JSON string representation of the object
print CreateIssuanceConfigInput.to_json()

# convert the object into a dict
create_issuance_config_input_dict = create_issuance_config_input_instance.to_dict()
# create an instance of CreateIssuanceConfigInput from a dict
create_issuance_config_input_from_dict = CreateIssuanceConfigInput.from_dict(create_issuance_config_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
