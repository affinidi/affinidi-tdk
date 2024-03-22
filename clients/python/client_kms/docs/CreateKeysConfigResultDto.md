# CreateKeysConfigResultDto

DTO contains result of key config creation

## Properties

| Name               | Type    | Description                                | Notes      |
| ------------------ | ------- | ------------------------------------------ | ---------- |
| **id**             | **str** | id of the key record                       | [optional] |
| **ari**            | **str** | ARI of the key record                      | [optional] |
| **seed_id**        | **str** | id of the parent seed record               | [optional] |
| **seed_ari**       | **str** | ARI of the parent seed record              | [optional] |
| **public_key_hex** | **str** | public key of the key config in HEX format | [optional] |
| **did_method**     | **str** | did method of the key record               | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.create_keys_config_result_dto import CreateKeysConfigResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of CreateKeysConfigResultDto from a JSON string
create_keys_config_result_dto_instance = CreateKeysConfigResultDto.from_json(json)
# print the JSON string representation of the object
print CreateKeysConfigResultDto.to_json()

# convert the object into a dict
create_keys_config_result_dto_dict = create_keys_config_result_dto_instance.to_dict()
# create an instance of CreateKeysConfigResultDto from a dict
create_keys_config_result_dto_form_dict = create_keys_config_result_dto.from_dict(create_keys_config_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
