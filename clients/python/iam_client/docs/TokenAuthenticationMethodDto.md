# TokenAuthenticationMethodDto

How the Token will be authenticate against our Authorization Server

## Properties

| Name                  | Type                                                                                                              | Description | Notes |
| --------------------- | ----------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **type**              | **str**                                                                                                           |             |
| **signing_algorithm** | **str**                                                                                                           |             |
| **public_key_info**   | [**TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo**](TokenPrivateKeyAuthenticationMethodDtoPublicKeyInfo.md) |             |

## Example

```python
from affinidi_tdk_iam_client.models.token_authentication_method_dto import TokenAuthenticationMethodDto

# TODO update the JSON string below
json = "{}"
# create an instance of TokenAuthenticationMethodDto from a JSON string
token_authentication_method_dto_instance = TokenAuthenticationMethodDto.from_json(json)
# print the JSON string representation of the object
print TokenAuthenticationMethodDto.to_json()

# convert the object into a dict
token_authentication_method_dto_dict = token_authentication_method_dto_instance.to_dict()
# create an instance of TokenAuthenticationMethodDto from a dict
token_authentication_method_dto_from_dict = TokenAuthenticationMethodDto.from_dict(token_authentication_method_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
