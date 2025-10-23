# SignCredentialsLdpInputDto

DTO contains params to sign credential

## Properties

| Name                    | Type       | Description                       | Notes      |
| ----------------------- | ---------- | --------------------------------- | ---------- |
| **unsigned_credential** | **object** | Unsigned Credential in Dm2 format |
| **revocable**           | **bool**   |                                   | [optional] |
| **signature_scheme**    | **str**    |                                   | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_ldp_input_dto import SignCredentialsLdpInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsLdpInputDto from a JSON string
sign_credentials_ldp_input_dto_instance = SignCredentialsLdpInputDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsLdpInputDto.to_json()

# convert the object into a dict
sign_credentials_ldp_input_dto_dict = sign_credentials_ldp_input_dto_instance.to_dict()
# create an instance of SignCredentialsLdpInputDto from a dict
sign_credentials_ldp_input_dto_from_dict = SignCredentialsLdpInputDto.from_dict(sign_credentials_ldp_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
