# GetSeedResultDto

DTO contains seed record

## Properties

| Name           | Type    | Description            | Notes      |
| -------------- | ------- | ---------------------- | ---------- |
| **id**         | **str** |                        | [optional] |
| **project_id** | **str** |                        | [optional] |
| **ari**        | **str** | ARI of the seed record | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.get_seed_result_dto import GetSeedResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of GetSeedResultDto from a JSON string
get_seed_result_dto_instance = GetSeedResultDto.from_json(json)
# print the JSON string representation of the object
print GetSeedResultDto.to_json()

# convert the object into a dict
get_seed_result_dto_dict = get_seed_result_dto_instance.to_dict()
# create an instance of GetSeedResultDto from a dict
get_seed_result_dto_form_dict = get_seed_result_dto.from_dict(get_seed_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
