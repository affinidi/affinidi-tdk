# SignJwtV2OK

## Properties

| Name           | Type    | Description | Notes      |
| -------------- | ------- | ----------- | ---------- |
| **signed_jwt** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_v2_ok import SignJwtV2OK

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtV2OK from a JSON string
sign_jwt_v2_ok_instance = SignJwtV2OK.from_json(json)
# print the JSON string representation of the object
print SignJwtV2OK.to_json()

# convert the object into a dict
sign_jwt_v2_ok_dict = sign_jwt_v2_ok_instance.to_dict()
# create an instance of SignJwtV2OK from a dict
sign_jwt_v2_ok_from_dict = SignJwtV2OK.from_dict(sign_jwt_v2_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
