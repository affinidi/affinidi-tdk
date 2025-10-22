# SignCredentialsDm2SdJwtInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm2 format |
| **revocable**           | **bool**   |                                   | [optional] |
| **disclosure_frame**    | **object** |                                   |
| **signature_scheme**    | **str**    |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_sd_jwt_input_dto import SignCredentialsDm2SdJwtInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm2SdJwtInputDto from a JSON string
sign_credentials_dm2_sd_jwt_input_dto_instance = SignCredentialsDm2SdJwtInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm2SdJwtInputDto.to_json()

# convert the object into a dict
sign_credentials_dm2_sd_jwt_input_dto_dict = sign_credentials_dm2_sd_jwt_input_dto_instance.to_dict()
# create an instance of SignCredentialsDm2SdJwtInputDto from a dict
sign_credentials_dm2_sd_jwt_input_dto_from_dict = SignCredentialsDm2SdJwtInputDto.from_dict(sign_credentials_dm2_sd_jwt_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
