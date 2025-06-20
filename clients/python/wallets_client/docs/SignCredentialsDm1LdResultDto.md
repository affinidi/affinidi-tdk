# SignCredentialsDm1LdResultDto

DTO contains signed credential

## Properties

| Name           | Type       | Description                              | Notes |
| -------------- | ---------- | ---------------------------------------- | ----- |
| **credential** | **object** | Signed credential can be in Dm1Ld format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm1_ld_result_dto import SignCredentialsDm1LdResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm1LdResultDto from a JSON string
sign_credentials_dm1_ld_result_dto_instance = SignCredentialsDm1LdResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm1LdResultDto.to_json()

# convert the object into a dict
sign_credentials_dm1_ld_result_dto_dict = sign_credentials_dm1_ld_result_dto_instance.to_dict()
# create an instance of SignCredentialsDm1LdResultDto from a dict
sign_credentials_dm1_ld_result_dto_from_dict = SignCredentialsDm1LdResultDto.from_dict(sign_credentials_dm1_ld_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
