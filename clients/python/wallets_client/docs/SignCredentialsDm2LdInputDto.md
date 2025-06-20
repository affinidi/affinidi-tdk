# SignCredentialsDm2LdInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm2 format |
| **revocable**           | **bool**   |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_ld_input_dto import SignCredentialsDm2LdInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm2LdInputDto from a JSON string
sign_credentials_dm2_ld_input_dto_instance = SignCredentialsDm2LdInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm2LdInputDto.to_json()

# convert the object into a dict
sign_credentials_dm2_ld_input_dto_dict = sign_credentials_dm2_ld_input_dto_instance.to_dict()
# create an instance of SignCredentialsDm2LdInputDto from a dict
sign_credentials_dm2_ld_input_dto_from_dict = SignCredentialsDm2LdInputDto.from_dict(sign_credentials_dm2_ld_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
