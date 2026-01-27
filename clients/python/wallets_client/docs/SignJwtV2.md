# SignJwtV2

DTO contains payload of JWT to be signed

## Properties

| Name        | Type       | Description | Notes |
| ----------- | ---------- | ----------- | ----- |
| **payload** | **object** |             |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_v2 import SignJwtV2

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtV2 from a JSON string
sign_jwt_v2_instance = SignJwtV2.from_json(json)
# print the JSON string representation of the object
print SignJwtV2.to_json()

# convert the object into a dict
sign_jwt_v2_dict = sign_jwt_v2_instance.to_dict()
# create an instance of SignJwtV2 from a dict
sign_jwt_v2_from_dict = SignJwtV2.from_dict(sign_jwt_v2_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
