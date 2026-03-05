# SignJwtV2InputDto

DTO contains payload of JWT to be signed

## Properties

| Name        | Type       | Description                                                             | Notes      |
| ----------- | ---------- | ----------------------------------------------------------------------- | ---------- |
| **payload** | **object** |                                                                         |
| **key_id**  | **str**    | wallet key ID to use for signing (defaults to wallet&#39;s default key) | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.sign_jwt_v2_input_dto import SignJwtV2InputDto

# TODO update the JSON string below
json = "{}"
# create an instance of SignJwtV2InputDto from a JSON string
sign_jwt_v2_input_dto_instance = SignJwtV2InputDto.from_json(json)
# print the JSON string representation of the object
print SignJwtV2InputDto.to_json()

# convert the object into a dict
sign_jwt_v2_input_dto_dict = sign_jwt_v2_input_dto_instance.to_dict()
# create an instance of SignJwtV2InputDto from a dict
sign_jwt_v2_input_dto_from_dict = SignJwtV2InputDto.from_dict(sign_jwt_v2_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
