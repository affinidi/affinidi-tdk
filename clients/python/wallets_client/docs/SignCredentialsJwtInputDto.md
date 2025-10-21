# SignCredentialsJwtInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm1 format |
| **revocable**           | **bool**   |                                   | [optional] |
| **signature_scheme**    | **str**    |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_jwt_input_dto import SignCredentialsJwtInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsJwtInputDto from a JSON string
sign_credentials_jwt_input_dto_instance = SignCredentialsJwtInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsJwtInputDto.to_json()

# convert the object into a dict
sign_credentials_jwt_input_dto_dict = sign_credentials_jwt_input_dto_instance.to_dict()
# create an instance of SignCredentialsJwtInputDto from a dict
sign_credentials_jwt_input_dto_from_dict = SignCredentialsJwtInputDto.from_dict(sign_credentials_jwt_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
