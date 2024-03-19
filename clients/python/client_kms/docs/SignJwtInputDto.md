# SignJwtInputDto

DTO contains parts of JWT to be signed

## Properties

| Name        | Type       | Description | Notes |
| ----------- | ---------- | ----------- | ----- |
| **header**  | **object** |             |
| **payload** | **object** |             |

## Example

```python
from affinidi_tdk_client_kms.models.sign_jwt_input_dto import SignJwtInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtInputDto from a JSON string
sign_jwt_input_dto_instance = SignJwtInputDto.from_json(json)
# print the JSON string representation of the object
print SignJwtInputDto.to_json()

# convert the object into a dict
sign_jwt_input_dto_dict = sign_jwt_input_dto_instance.to_dict()
# create an instance of SignJwtInputDto from a dict
sign_jwt_input_dto_form_dict = sign_jwt_input_dto.from_dict(sign_jwt_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
