# ExportSeedResultDto

DTO contains a result of the seed exporting

## Properties

| Name         | Type    | Description          | Notes      |
| ------------ | ------- | -------------------- | ---------- |
| **mnemonic** | **str** | mnemonic of the seed | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.export_seed_result_dto import ExportSeedResultDto

# TODO update the JSON string below
json = "{}"
# create an instance of ExportSeedResultDto from a JSON string
export_seed_result_dto_instance = ExportSeedResultDto.from_json(json)
# print the JSON string representation of the object
print ExportSeedResultDto.to_json()

# convert the object into a dict
export_seed_result_dto_dict = export_seed_result_dto_instance.to_dict()
# create an instance of ExportSeedResultDto from a dict
export_seed_result_dto_form_dict = export_seed_result_dto.from_dict(export_seed_result_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
