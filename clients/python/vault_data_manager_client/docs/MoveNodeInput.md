# MoveNodeInput

## Properties

| Name                                     | Type     | Description                                                                                                                                    | Notes                         |
| ---------------------------------------- | -------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------- |
| **destination_node_id**                  | **str**  | Parent to which current node should be moved                                                                                                   |
| **resolve_name_conflicts_automatically** | **bool** | automatically update the name of Node if target Node has children with the same name. If not provided, name won&#39;t be updated automatically | [optional] [default to False] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.move_node_input import MoveNodeInput

# TODO update the JSON string below
json = "{}"
# create an instance of MoveNodeInput from a JSON string
move_node_input_instance = MoveNodeInput.from_json(json)
# print the JSON string representation of the object
print MoveNodeInput.to_json()

# convert the object into a dict
move_node_input_dict = move_node_input_instance.to_dict()
# create an instance of MoveNodeInput from a dict
move_node_input_from_dict = MoveNodeInput.from_dict(move_node_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
