# JsonWebKeySetDto

## Properties

| Name     | Type                                        | Description | Notes |
| -------- | ------------------------------------------- | ----------- | ----- |
| **keys** | [**List[JsonWebKeyDto]**](JsonWebKeyDto.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.json_web_key_set_dto import JsonWebKeySetDto

# TODO update the JSON string below
json = "{}"
# create an instance of JsonWebKeySetDto from a JSON string
json_web_key_set_dto_instance = JsonWebKeySetDto.from_json(json)
# print the JSON string representation of the object
print JsonWebKeySetDto.to_json()

# convert the object into a dict
json_web_key_set_dto_dict = json_web_key_set_dto_instance.to_dict()
# create an instance of JsonWebKeySetDto from a dict
json_web_key_set_dto_form_dict = json_web_key_set_dto.from_dict(json_web_key_set_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
