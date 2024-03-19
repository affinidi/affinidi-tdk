# SignResultDto

DTO contains signed buffer

## Properties

| Name          | Type    | Description                                  | Notes |
| ------------- | ------- | -------------------------------------------- | ----- |
| **signature** | **str** | signature in hex format or RSV jsoned format |

## Example

```python
from affinidi_tdk_client_kms.models.sign_result_dto import SignResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignResultDto from a JSON string
sign_result_dto_instance = SignResultDto.from_json(json)
# print the JSON string representation of the object
print SignResultDto.to_json()

# convert the object into a dict
sign_result_dto_dict = sign_result_dto_instance.to_dict()
# create an instance of SignResultDto from a dict
sign_result_dto_form_dict = sign_result_dto.from_dict(sign_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
