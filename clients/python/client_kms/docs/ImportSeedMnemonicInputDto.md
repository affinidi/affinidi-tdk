# ImportSeedMnemonicInputDto

DTO contains the seed entropy as mnemonic that is imported into the system

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **mnemonic** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.import_seed_mnemonic_input_dto import ImportSeedMnemonicInputDto

# TODO update the JSON string below
json = "{}"
# create an instance of ImportSeedMnemonicInputDto from a JSON string
import_seed_mnemonic_input_dto_instance = ImportSeedMnemonicInputDto.from_json(json)
# print the JSON string representation of the object
print ImportSeedMnemonicInputDto.to_json()

# convert the object into a dict
import_seed_mnemonic_input_dto_dict = import_seed_mnemonic_input_dto_instance.to_dict()
# create an instance of ImportSeedMnemonicInputDto from a dict
import_seed_mnemonic_input_dto_form_dict = import_seed_mnemonic_input_dto.from_dict(import_seed_mnemonic_input_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
