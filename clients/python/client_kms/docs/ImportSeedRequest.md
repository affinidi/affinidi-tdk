# ImportSeedRequest

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **mnemonic** | **str** |             | [optional] |
| **seed_hex** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_client_kms.models.import_seed_request import ImportSeedRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ImportSeedRequest from a JSON string
import_seed_request_instance = ImportSeedRequest.from_json(json)
# print the JSON string representation of the object
print ImportSeedRequest.to_json()

# convert the object into a dict
import_seed_request_dict = import_seed_request_instance.to_dict()
# create an instance of ImportSeedRequest from a dict
import_seed_request_form_dict = import_seed_request.from_dict(import_seed_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
