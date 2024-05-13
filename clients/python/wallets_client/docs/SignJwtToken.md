# SignJwtToken

DTO contains parts of JWT to be signed

## Properties

| Name        | Type       | Description | Notes |
| ----------- | ---------- | ----------- | ----- |
| **header**  | **object** |             |
| **payload** | **object** |             |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_token import SignJwtToken

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtToken from a JSON string
sign_jwt_token_instance = SignJwtToken.from_json(json)
# print the JSON string representation of the object
print SignJwtToken.to_json()

# convert the object into a dict
sign_jwt_token_dict = sign_jwt_token_instance.to_dict()
# create an instance of SignJwtToken from a dict
sign_jwt_token_form_dict = sign_jwt_token.from_dict(sign_jwt_token_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
