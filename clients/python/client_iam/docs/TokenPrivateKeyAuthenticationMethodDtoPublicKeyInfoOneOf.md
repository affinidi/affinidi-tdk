# TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf

## Properties

| Name     | Type                                        | Description | Notes |
| -------- | ------------------------------------------- | ----------- | ----- |
| **jwks** | [**JsonWebKeySetDto**](JsonWebKeySetDto.md) |             |

## Example

```python
from affinidi_tdk_client_iam.models.token_private_key_authentication_method_dto_public_key_info_one_of import TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf

# TODO update the JSON string below
json = "{}"
# create an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf from a JSON string
token_private_key_authentication_method_dto_public_key_info_one_of_instance = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.from_json(json)
# print the JSON string representation of the object
print TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf.to_json()

# convert the object into a dict
token_private_key_authentication_method_dto_public_key_info_one_of_dict = token_private_key_authentication_method_dto_public_key_info_one_of_instance.to_dict()
# create an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfoOneOf from a dict
token_private_key_authentication_method_dto_public_key_info_one_of_form_dict = token_private_key_authentication_method_dto_public_key_info_one_of.from_dict(token_private_key_authentication_method_dto_public_key_info_one_of_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
