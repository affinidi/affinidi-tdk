# SignInputDto

DTO contains buffer in hex format to be signed

## Properties

| Name               | Type    | Description                                | Notes      |
| ------------------ | ------- | ------------------------------------------ | ---------- |
| **buffer**         | **str** | data in hex format to be signed            |
| **signature_type** | **str** | type of returned signature, default is hex | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.sign_input_dto import SignInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignInputDto from a JSON string
sign_input_dto_instance = SignInputDto.from_json(json)
# print the JSON string representation of the object
print SignInputDto.to_json()

# convert the object into a dict
sign_input_dto_dict = sign_input_dto_instance.to_dict()
# create an instance of SignInputDto from a dict
sign_input_dto_form_dict = sign_input_dto.from_dict(sign_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
