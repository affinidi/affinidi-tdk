# ListSeedResultDtoRecordsInner

## Properties

| Name           | Type    | Description            | Notes      |
| -------------- | ------- | ---------------------- | ---------- |
| **id**         | **str** |                        | [optional] |
| **project_id** | **str** |                        | [optional] |
| **ari**        | **str** | ARI of the seed record | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.list_seed_result_dto_records_inner import ListSeedResultDtoRecordsInner

# TODO update the JSON string below
json = "{}"
# create an instance of ListSeedResultDtoRecordsInner from a JSON string
list_seed_result_dto_records_inner_instance = ListSeedResultDtoRecordsInner.from_json(json)
# print the JSON string representation of the object
print ListSeedResultDtoRecordsInner.to_json()

# convert the object into a dict
list_seed_result_dto_records_inner_dict = list_seed_result_dto_records_inner_instance.to_dict()
# create an instance of ListSeedResultDtoRecordsInner from a dict
list_seed_result_dto_records_inner_form_dict = list_seed_result_dto_records_inner.from_dict(list_seed_result_dto_records_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
