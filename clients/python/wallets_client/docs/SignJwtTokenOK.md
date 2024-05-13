# SignJwtTokenOK

## Properties

| Name           | Type    | Description | Notes      |
| -------------- | ------- | ----------- | ---------- |
| **signed_jwt** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_token_ok import SignJwtTokenOK

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtTokenOK from a JSON string
sign_jwt_token_ok_instance = SignJwtTokenOK.from_json(json)
# print the JSON string representation of the object
print SignJwtTokenOK.to_json()

# convert the object into a dict
sign_jwt_token_ok_dict = sign_jwt_token_ok_instance.to_dict()
# create an instance of SignJwtTokenOK from a dict
sign_jwt_token_ok_form_dict = sign_jwt_token_ok.from_dict(sign_jwt_token_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
