# SignCredentialsLdpResultDto

DTO contains signed credential

## Properties

| Name           | Type       | Description                              | Notes |
| -------------- | ---------- | ---------------------------------------- | ----- |
| **credential** | **object** | Signed credential can be in Dm2Ld format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_ldp_result_dto import SignCredentialsLdpResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsLdpResultDto from a JSON string
sign_credentials_ldp_result_dto_instance = SignCredentialsLdpResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsLdpResultDto.to_json()

# convert the object into a dict
sign_credentials_ldp_result_dto_dict = sign_credentials_ldp_result_dto_instance.to_dict()
# create an instance of SignCredentialsLdpResultDto from a dict
sign_credentials_ldp_result_dto_from_dict = SignCredentialsLdpResultDto.from_dict(sign_credentials_ldp_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
