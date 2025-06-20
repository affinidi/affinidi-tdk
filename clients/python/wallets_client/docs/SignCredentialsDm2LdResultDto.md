# SignCredentialsDm2LdResultDto

DTO contains signed credential

## Properties

| Name           | Type       | Description                              | Notes |
| -------------- | ---------- | ---------------------------------------- | ----- |
| **credential** | **object** | Signed credential can be in Dm2Ld format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm2_ld_result_dto import SignCredentialsDm2LdResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm2LdResultDto from a JSON string
sign_credentials_dm2_ld_result_dto_instance = SignCredentialsDm2LdResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm2LdResultDto.to_json()

# convert the object into a dict
sign_credentials_dm2_ld_result_dto_dict = sign_credentials_dm2_ld_result_dto_instance.to_dict()
# create an instance of SignCredentialsDm2LdResultDto from a dict
sign_credentials_dm2_ld_result_dto_from_dict = SignCredentialsDm2LdResultDto.from_dict(sign_credentials_dm2_ld_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
