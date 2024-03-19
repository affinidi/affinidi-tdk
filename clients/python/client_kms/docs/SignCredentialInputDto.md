# SignCredentialInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description | Notes |
| ----------------------- | ---------- | ----------- | ----- |
| **unsigned_credential** | **object** |             |

## Example

```python
from affinidi_tdk_client_kms.models.sign_credential_input_dto import SignCredentialInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialInputDto from a JSON string
sign_credential_input_dto_instance = SignCredentialInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialInputDto.to_json()

# convert the object into a dict
sign_credential_input_dto_dict = sign_credential_input_dto_instance.to_dict()
# create an instance of SignCredentialInputDto from a dict
sign_credential_input_dto_form_dict = sign_credential_input_dto.from_dict(sign_credential_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
