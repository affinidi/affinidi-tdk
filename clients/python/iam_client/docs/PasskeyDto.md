# PasskeyDto

## Properties

| Name             | Type    | Description                                                         | Notes |
| ---------------- | ------- | ------------------------------------------------------------------- | ----- |
| **id**           | **str** |                                                                     |
| **display_name** | **str** |                                                                     |
| **created_at**   | **str** | creation date and time in ISO-8601 format, e.g. 2023-09-20T07:12:13 |

## Example

```python
from affinidi_tdk_iam_client.models.passkey_dto import PasskeyDto

# TODO update the JSON string below
json = "{}"
# create an instance of PasskeyDto from a JSON string
passkey_dto_instance = PasskeyDto.from_json(json)
# print the JSON string representation of the object
print PasskeyDto.to_json()

# convert the object into a dict
passkey_dto_dict = passkey_dto_instance.to_dict()
# create an instance of PasskeyDto from a dict
passkey_dto_from_dict = PasskeyDto.from_dict(passkey_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
