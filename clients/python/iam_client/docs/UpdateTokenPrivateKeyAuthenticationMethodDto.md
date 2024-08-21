# UpdateTokenPrivateKeyAuthenticationMethodDto

Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method

## Properties

| Name                  | Type                                                                                                              | Description | Notes      |
| --------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **type**              | **str**                                                                                                           |             | [optional] |
| **signing_algorithm** | **str**                                                                                                           |             | [optional] |
| **public_key_info**   | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             | [optional] |

## Example

```python
from affinidi_tdk_iam_client.models.update_token_private_key_authentication_method_dto import UpdateTokenPrivateKeyAuthenticationMethodDto

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateTokenPrivateKeyAuthenticationMethodDto from a JSON string
update_token_private_key_authentication_method_dto_instance = UpdateTokenPrivateKeyAuthenticationMethodDto.from_json(json)
# print the JSON string representation of the object
print UpdateTokenPrivateKeyAuthenticationMethodDto.to_json()

# convert the object into a dict
update_token_private_key_authentication_method_dto_dict = update_token_private_key_authentication_method_dto_instance.to_dict()
# create an instance of UpdateTokenPrivateKeyAuthenticationMethodDto from a dict
update_token_private_key_authentication_method_dto_from_dict = UpdateTokenPrivateKeyAuthenticationMethodDto.from_dict(update_token_private_key_authentication_method_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
