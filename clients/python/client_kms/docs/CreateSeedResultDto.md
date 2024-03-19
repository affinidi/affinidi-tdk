# CreateSeedResultDto

DTO contains a result of the seed record creation

## Properties

| Name    | Type    | Description            | Notes      |
| ------- | ------- | ---------------------- | ---------- |
| **id**  | **str** | id of the seed record  | [optional] |
| **ari** | **str** | ARI of the seed record | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.create_seed_result_dto import CreateSeedResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of CreateSeedResultDto from a JSON string
create_seed_result_dto_instance = CreateSeedResultDto.from_json(json)
# print the JSON string representation of the object
print CreateSeedResultDto.to_json()

# convert the object into a dict
create_seed_result_dto_dict = create_seed_result_dto_instance.to_dict()
# create an instance of CreateSeedResultDto from a dict
create_seed_result_dto_form_dict = create_seed_result_dto.from_dict(create_seed_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
