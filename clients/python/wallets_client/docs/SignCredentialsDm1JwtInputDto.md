# SignCredentialsDm1JwtInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm1 format |
| **revocable**           | **bool**   |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm1_jwt_input_dto import SignCredentialsDm1JwtInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm1JwtInputDto from a JSON string
sign_credentials_dm1_jwt_input_dto_instance = SignCredentialsDm1JwtInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm1JwtInputDto.to_json()

# convert the object into a dict
sign_credentials_dm1_jwt_input_dto_dict = sign_credentials_dm1_jwt_input_dto_instance.to_dict()
# create an instance of SignCredentialsDm1JwtInputDto from a dict
sign_credentials_dm1_jwt_input_dto_from_dict = SignCredentialsDm1JwtInputDto.from_dict(sign_credentials_dm1_jwt_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
