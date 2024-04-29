# TokenPrivateKeyAuthenticationMethodDto

Private Key JWT Authentication of Client with `private_key_jwt` oAuth Method

## Properties

| Name                  | Type                                                                                                              | Description | Notes |
| --------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **type**              | **str**                                                                                                           |             |
| **signing_algorithm** | **str**                                                                                                           |             |
| **public_key_info**   | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.token_private_key_authentication_method_dto import TokenPrivateKeyAuthenticationMethodDto

# TODO update the JSON string below
json = "{}"
# create an instance of TokenPrivateKeyAuthenticationMethodDto from a JSON string
token_private_key_authentication_method_dto_instance = TokenPrivateKeyAuthenticationMethodDto.from_json(json)
# print the JSON string representation of the object
print TokenPrivateKeyAuthenticationMethodDto.to_json()

# convert the object into a dict
token_private_key_authentication_method_dto_dict = token_private_key_authentication_method_dto_instance.to_dict()
# create an instance of TokenPrivateKeyAuthenticationMethodDto from a dict
token_private_key_authentication_method_dto_form_dict = token_private_key_authentication_method_dto.from_dict(token_private_key_authentication_method_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
