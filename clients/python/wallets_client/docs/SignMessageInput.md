# SignMessageInput

DTO contains params to sign plain text DIDComm message

## Properties

| Name                   | Type       | Description                         | Notes      |
| ---------------------- | ---------- | ----------------------------------- | ---------- |
| **plain_text_message** | **object** | Unsigned plain text DIDComm message |
| **signature_scheme**   | **str**    |                                     | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_message_input import SignMessageInput

# TODO update the JSON string below
json = "{}"
# create an instance of SignMessageInput from a JSON string
sign_message_input_instance = SignMessageInput.from_json(json)
# print the JSON string representation of the object
print SignMessageInput.to_json()

# convert the object into a dict
sign_message_input_dict = sign_message_input_instance.to_dict()
# create an instance of SignMessageInput from a dict
sign_message_input_from_dict = SignMessageInput.from_dict(sign_message_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
