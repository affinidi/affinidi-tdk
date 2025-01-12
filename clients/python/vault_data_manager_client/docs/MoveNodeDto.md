# MoveNodeDto

## Properties

| Name            | Type    | Description | Notes      |
| --------------- | ------- | ----------- | ---------- |
| **new_node_id** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.move_node_dto import MoveNodeDto

# TODO update the JSON string below
json = "{}"
# create an instance of MoveNodeDto from a JSON string
move_node_dto_instance = MoveNodeDto.from_json(json)
# print the JSON string representation of the object
print MoveNodeDto.to_json()

# convert the object into a dict
move_node_dto_dict = move_node_dto_instance.to_dict()
# create an instance of MoveNodeDto from a dict
move_node_dto_from_dict = MoveNodeDto.from_dict(move_node_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
