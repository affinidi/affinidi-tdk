# IssuanceConfigDtoCredentialSupportedInner

## Properties

| Name                    | Type    | Description                                                                       | Notes |
| ----------------------- | ------- | --------------------------------------------------------------------------------- | ----- |
| **credential_type_id**  | **str** | It is a String that identifies a Credential that is being requested to be issued. |
| **json_schema_url**     | **str** | credential jsonLdContextUrl                                                       |
| **json_ld_context_url** | **str** | credential jsonSchemaUrl                                                          |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.issuance_config_dto_credential_supported_inner import IssuanceConfigDtoCredentialSupportedInner

# TODO update the JSON string below
json = "{}"
# create an instance of IssuanceConfigDtoCredentialSupportedInner from a JSON string
issuance_config_dto_credential_supported_inner_instance = IssuanceConfigDtoCredentialSupportedInner.from_json(json)
# print the JSON string representation of the object
print IssuanceConfigDtoCredentialSupportedInner.to_json()

# convert the object into a dict
issuance_config_dto_credential_supported_inner_dict = issuance_config_dto_credential_supported_inner_instance.to_dict()
# create an instance of IssuanceConfigDtoCredentialSupportedInner from a dict
issuance_config_dto_credential_supported_inner_form_dict = issuance_config_dto_credential_supported_inner.from_dict(issuance_config_dto_credential_supported_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
