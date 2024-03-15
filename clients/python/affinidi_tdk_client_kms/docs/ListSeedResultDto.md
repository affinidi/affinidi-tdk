# ListSeedResultDto

DTO contains list of seed records

## Properties

| Name        | Type                                                                        | Description | Notes      |
| ----------- | --------------------------------------------------------------------------- | ----------- | ---------- |
| **records** | [**List[ListSeedResultDtoRecordsInner]**](ListSeedResultDtoRecordsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.list_seed_result_dto import ListSeedResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of ListSeedResultDto from a JSON string
list_seed_result_dto_instance = ListSeedResultDto.from_json(json)
# print the JSON string representation of the object
print ListSeedResultDto.to_json()

# convert the object into a dict
list_seed_result_dto_dict = list_seed_result_dto_instance.to_dict()
# create an instance of ListSeedResultDto from a dict
list_seed_result_dto_form_dict = list_seed_result_dto.from_dict(list_seed_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
