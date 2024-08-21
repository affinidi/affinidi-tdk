# Format

## Properties

| Name       | Type                          | Description | Notes      |
| ---------- | ----------------------------- | ----------- | ---------- |
| **jwt**    | [**JwtObject**](JwtObject.md) |             | [optional] |
| **jwt_vc** | [**JwtObject**](JwtObject.md) |             | [optional] |
| **jwt_vp** | [**JwtObject**](JwtObject.md) |             | [optional] |
| **ldp**    | [**LdpObject**](LdpObject.md) |             | [optional] |
| **ldp_vc** | [**LdpObject**](LdpObject.md) |             | [optional] |
| **ldp_vp** | [**LdpObject**](LdpObject.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.format import Format

# TODO update the JSON string below
json = "{}"
# create an instance of Format from a JSON string
format_instance = Format.from_json(json)
# print the JSON string representation of the object
print Format.to_json()

# convert the object into a dict
format_dict = format_instance.to_dict()
# create an instance of Format from a dict
format_from_dict = Format.from_dict(format_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
