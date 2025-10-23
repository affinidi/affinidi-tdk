# SignCredentialsDm1LdInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm1 format |
| **revocable**           | **bool**   |                                   | [optional] |
| **signature_scheme**    | **str**    |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm1_ld_input_dto import SignCredentialsDm1LdInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm1LdInputDto from a JSON string
sign_credentials_dm1_ld_input_dto_instance = SignCredentialsDm1LdInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm1LdInputDto.to_json()

# convert the object into a dict
sign_credentials_dm1_ld_input_dto_dict = sign_credentials_dm1_ld_input_dto_instance.to_dict()
# create an instance of SignCredentialsDm1LdInputDto from a dict
sign_credentials_dm1_ld_input_dto_from_dict = SignCredentialsDm1LdInputDto.from_dict(sign_credentials_dm1_ld_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
