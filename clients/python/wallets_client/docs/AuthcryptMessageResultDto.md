# AuthcryptMessageResultDto

DTO contains authcrypted message in JSON format

## Properties

| Name                    | Type       | Description                        | Notes |
| ----------------------- | ---------- | ---------------------------------- | ----- |
| **authcrypted_message** | **object** | Authcrypted message in JSON format |

## Example

```python
from affinidi_tdk_wallets_client.models.authcrypt_message_result_dto import AuthcryptMessageResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of AuthcryptMessageResultDto from a JSON string
authcrypt_message_result_dto_instance = AuthcryptMessageResultDto.from_json(json)
# print the JSON string representation of the object
print AuthcryptMessageResultDto.to_json()

# convert the object into a dict
authcrypt_message_result_dto_dict = authcrypt_message_result_dto_instance.to_dict()
# create an instance of AuthcryptMessageResultDto from a dict
authcrypt_message_result_dto_from_dict = AuthcryptMessageResultDto.from_dict(authcrypt_message_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
