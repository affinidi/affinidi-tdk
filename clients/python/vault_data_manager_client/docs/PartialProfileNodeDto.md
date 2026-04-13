# PartialProfileNodeDto

## Properties

| Name                 | Type      | Description                                                  | Notes      |
| -------------------- | --------- | ------------------------------------------------------------ | ---------- |
| **id**               | **str**   | A unique identifier of the profile node                      |
| **name**             | **str**   | display name of the profile node                             |
| **description**      | **str**   | Description of the profile node                              | [optional] |
| **account_index**    | **float** | number that is used for profile DID derivation               |
| **profile_metadata** | **str**   | A JSON string format containing metadata of the profile node | [optional] |
| **account_metadata** | **str**   | A JSON string format containing metadata of the account      | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.partial_profile_node_dto import PartialProfileNodeDto

# TODO update the JSON string below
json = "{}"
# create an instance of PartialProfileNodeDto from a JSON string
partial_profile_node_dto_instance = PartialProfileNodeDto.from_json(json)
# print the JSON string representation of the object
print PartialProfileNodeDto.to_json()

# convert the object into a dict
partial_profile_node_dto_dict = partial_profile_node_dto_instance.to_dict()
# create an instance of PartialProfileNodeDto from a dict
partial_profile_node_dto_from_dict = PartialProfileNodeDto.from_dict(partial_profile_node_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
