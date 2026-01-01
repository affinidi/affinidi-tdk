# UnpackMessageResultDto

DTO contains decrypted message in JSON fromat

## Properties

| Name        | Type       | Description                      | Notes |
| ----------- | ---------- | -------------------------------- | ----- |
| **message** | **object** | decrypted message in JSON format |

## Example

```python
from affinidi_tdk_wallets_client.models.unpack_message_result_dto import UnpackMessageResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of UnpackMessageResultDto from a JSON string
unpack_message_result_dto_instance = UnpackMessageResultDto.from_json(json)
# print the JSON string representation of the object
print UnpackMessageResultDto.to_json()

# convert the object into a dict
unpack_message_result_dto_dict = unpack_message_result_dto_instance.to_dict()
# create an instance of UnpackMessageResultDto from a dict
unpack_message_result_dto_from_dict = UnpackMessageResultDto.from_dict(unpack_message_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
