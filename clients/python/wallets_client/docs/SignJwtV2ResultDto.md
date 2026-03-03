# SignJwtV2ResultDto

## Properties

| Name           | Type    | Description | Notes      |
| -------------- | ------- | ----------- | ---------- |
| **signed_jwt** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_v2_result_dto import SignJwtV2ResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtV2ResultDto from a JSON string
sign_jwt_v2_result_dto_instance = SignJwtV2ResultDto.from_json(json)
# print the JSON string representation of the object
print SignJwtV2ResultDto.to_json()

# convert the object into a dict
sign_jwt_v2_result_dto_dict = sign_jwt_v2_result_dto_instance.to_dict()
# create an instance of SignJwtV2ResultDto from a dict
sign_jwt_v2_result_dto_from_dict = SignJwtV2ResultDto.from_dict(sign_jwt_v2_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
