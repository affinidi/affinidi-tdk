# SignJwtResultDto

DTO contains signed jwt

## Properties

| Name    | Type    | Description | Notes |
| ------- | ------- | ----------- | ----- |
| **jwt** | **str** |             |

## Example

```python
from affinidi_tdk_client_kms.models.sign_jwt_result_dto import SignJwtResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtResultDto from a JSON string
sign_jwt_result_dto_instance = SignJwtResultDto.from_json(json)
# print the JSON string representation of the object
print SignJwtResultDto.to_json()

# convert the object into a dict
sign_jwt_result_dto_dict = sign_jwt_result_dto_instance.to_dict()
# create an instance of SignJwtResultDto from a dict
sign_jwt_result_dto_form_dict = sign_jwt_result_dto.from_dict(sign_jwt_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
