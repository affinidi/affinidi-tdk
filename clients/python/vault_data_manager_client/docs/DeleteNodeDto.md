# DeleteNodeDto

## Properties

| Name            | Type    | Description | Notes      |
| --------------- | ------- | ----------- | ---------- |
| **new_node_id** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.delete_node_dto import DeleteNodeDto

# TODO update the JSON string below
json = "{}"
# create an instance of DeleteNodeDto from a JSON string
delete_node_dto_instance = DeleteNodeDto.from_json(json)
# print the JSON string representation of the object
print DeleteNodeDto.to_json()

# convert the object into a dict
delete_node_dto_dict = delete_node_dto_instance.to_dict()
# create an instance of DeleteNodeDto from a dict
delete_node_dto_from_dict = DeleteNodeDto.from_dict(delete_node_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
