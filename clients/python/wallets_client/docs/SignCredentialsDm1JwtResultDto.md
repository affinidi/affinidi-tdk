# SignCredentialsDm1JwtResultDto

DTO contains signed credential

## Properties

| Name           | Type    | Description                         | Notes |
| -------------- | ------- | ----------------------------------- | ----- |
| **credential** | **str** | Signed credential in DM2 jwt format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_dm1_jwt_result_dto import SignCredentialsDm1JwtResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsDm1JwtResultDto from a JSON string
sign_credentials_dm1_jwt_result_dto_instance = SignCredentialsDm1JwtResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsDm1JwtResultDto.to_json()

# convert the object into a dict
sign_credentials_dm1_jwt_result_dto_dict = sign_credentials_dm1_jwt_result_dto_instance.to_dict()
# create an instance of SignCredentialsDm1JwtResultDto from a dict
sign_credentials_dm1_jwt_result_dto_from_dict = SignCredentialsDm1JwtResultDto.from_dict(sign_credentials_dm1_jwt_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
