# SignMessageResultDto

DTO contains signed JSON

## Properties

| Name               | Type       | Description                   | Notes |
| ------------------ | ---------- | ----------------------------- | ----- |
| **signed_message** | **object** | Signed message in JSON format |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_message_result_dto import SignMessageResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignMessageResultDto from a JSON string
sign_message_result_dto_instance = SignMessageResultDto.from_json(json)
# print the JSON string representation of the object
print SignMessageResultDto.to_json()

# convert the object into a dict
sign_message_result_dto_dict = sign_message_result_dto_instance.to_dict()
# create an instance of SignMessageResultDto from a dict
sign_message_result_dto_from_dict = SignMessageResultDto.from_dict(sign_message_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
