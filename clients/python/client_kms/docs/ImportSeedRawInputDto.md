# ImportSeedRawInputDto

DTO contains the seed entropy as hex string that is imported into the system

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **seed_hex** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.import_seed_raw_input_dto import ImportSeedRawInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of ImportSeedRawInputDto from a JSON string
import_seed_raw_input_dto_instance = ImportSeedRawInputDto.from_json(json)
# print the JSON string representation of the object
print ImportSeedRawInputDto.to_json()

# convert the object into a dict
import_seed_raw_input_dto_dict = import_seed_raw_input_dto_instance.to_dict()
# create an instance of ImportSeedRawInputDto from a dict
import_seed_raw_input_dto_form_dict = import_seed_raw_input_dto.from_dict(import_seed_raw_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
