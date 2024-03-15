# CreateKeysConfigInputDto

DTO contains configuration to create a key from the seed

## Properties

| Name                | Type    | Description | Notes |
| ------------------- | ------- | ----------- | ----- |
| **derivation_path** | **str** |             |

## Example

```python
from affinidi_tdk_client_kms.models.create_keys_config_input_dto import CreateKeysConfigInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of CreateKeysConfigInputDto from a JSON string
create_keys_config_input_dto_instance = CreateKeysConfigInputDto.from_json(json)
# print the JSON string representation of the object
print CreateKeysConfigInputDto.to_json()

# convert the object into a dict
create_keys_config_input_dto_dict = create_keys_config_input_dto_instance.to_dict()
# create an instance of CreateKeysConfigInputDto from a dict
create_keys_config_input_dto_form_dict = create_keys_config_input_dto.from_dict(create_keys_config_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
