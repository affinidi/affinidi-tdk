# TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo

Corresponding Public Key Info provided either as a URL or a Hardcoded Object

## Properties

| Name         | Type                                        | Description | Notes |
| ------------ | ------------------------------------------- | ----------- | ----- |
| **jwks**     | [**JsonWebKeySetDto**](JsonWebKeySetDto.md) |             |
| **jwks_uri** | **str**                                     |             |

## Example

```python
from affinidi_tdk_iam_client.models.token_private_key_authentication_method_dto_public_key_info import TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo

# TODO update the JSON string below
json = "{}"
# create an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo from a JSON string
token_private_key_authentication_method_dto_public_key_info_instance = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.from_json(json)
# print the JSON string representation of the object
print TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.to_json()

# convert the object into a dict
token_private_key_authentication_method_dto_public_key_info_dict = token_private_key_authentication_method_dto_public_key_info_instance.to_dict()
# create an instance of TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo from a dict
token_private_key_authentication_method_dto_public_key_info_from_dict = TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.from_dict(token_private_key_authentication_method_dto_public_key_info_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
