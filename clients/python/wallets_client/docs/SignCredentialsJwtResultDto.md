# SignCredentialsJwtResultDto

DTO contains signed credential

## Properties

| Name           | Type    | Description                         | Notes |
| -------------- | ------- | ----------------------------------- | ----- |
| **credential** | **str** | Signed credential in DM2 jwt format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_credentials_jwt_result_dto import SignCredentialsJwtResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignCredentialsJwtResultDto from a JSON string
sign_credentials_jwt_result_dto_instance = SignCredentialsJwtResultDto.from_json(json)
# print the JSON string representation of the object
print SignCredentialsJwtResultDto.to_json()

# convert the object into a dict
sign_credentials_jwt_result_dto_dict = sign_credentials_jwt_result_dto_instance.to_dict()
# create an instance of SignCredentialsJwtResultDto from a dict
sign_credentials_jwt_result_dto_from_dict = SignCredentialsJwtResultDto.from_dict(sign_credentials_jwt_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
