# AuthcryptMessageInput

DTO contains params to authcrypt plain text DIDComm message

## Properties

| Name                   | Type       | Description                         | Notes      |
| ---------------------- | ---------- | ----------------------------------- | ---------- |
| **plain_text_message** | **object** | Unsigned plain text DIDComm message |
| **signature_scheme**   | **str**    |                                     | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.authcrypt_message_input import AuthcryptMessageInput

# TODO update the JSON string below
json = "{}"
# create an instance of AuthcryptMessageInput from a JSON string
authcrypt_message_input_instance = AuthcryptMessageInput.from_json(json)
# print the JSON string representation of the object
print AuthcryptMessageInput.to_json()

# convert the object into a dict
authcrypt_message_input_dict = authcrypt_message_input_instance.to_dict()
# create an instance of AuthcryptMessageInput from a dict
authcrypt_message_input_from_dict = AuthcryptMessageInput.from_dict(authcrypt_message_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
