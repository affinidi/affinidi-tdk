# UnpackMessageInput

DTO contains params to unpack encrypted DIDComm message

## Properties

| Name        | Type       | Description               | Notes |
| ----------- | ---------- | ------------------------- | ----- |
| **message** | **object** | Encrypted DIDComm message |

## Example

```python
from affinidi_tdk_wallets_client.models.unpack_message_input import UnpackMessageInput

# TODO update the JSON string below
json = "{}"
# create an instance of UnpackMessageInput from a JSON string
unpack_message_input_instance = UnpackMessageInput.from_json(json)
# print the JSON string representation of the object
print UnpackMessageInput.to_json()

# convert the object into a dict
unpack_message_input_dict = unpack_message_input_instance.to_dict()
# create an instance of UnpackMessageInput from a dict
unpack_message_input_from_dict = UnpackMessageInput.from_dict(unpack_message_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
