# SignCredentialResultDto

DTO contains signed credential

## Properties

| Name                  | Type       | Description | Notes |
| --------------------- | ---------- | ----------- | ----- |
| **signed_credential** | **object** |             |

## Example

```python
from affinidi_tdk_organizational_wallet_client.models.sign_credential_result_dto import SignCredentialResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialResultDto from a JSON string
sign_credential_result_dto_instance = SignCredentialResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialResultDto.to_json()

# convert the object into a dict
sign_credential_result_dto_dict = sign_credential_result_dto_instance.to_dict()
# create an instance of SignCredentialResultDto from a dict
sign_credential_result_dto_form_dict = sign_credential_result_dto.from_dict(sign_credential_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
