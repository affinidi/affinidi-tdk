# UpdateNodeInput

## Properties

| Name            | Type    | Description                                     | Notes      |
| --------------- | ------- | ----------------------------------------------- | ---------- |
| **name**        | **str** | Name of the node                                | [optional] |
| **description** | **str** | Description of the node                         | [optional] |
| **metadata**    | **str** | metadata of the node in stringified json format | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.update_node_input import UpdateNodeInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateNodeInput from a JSON string
update_node_input_instance = UpdateNodeInput.from_json(json)
# print the JSON string representation of the object
print UpdateNodeInput.to_json()

# convert the object into a dict
update_node_input_dict = update_node_input_instance.to_dict()
# create an instance of UpdateNodeInput from a dict
update_node_input_from_dict = UpdateNodeInput.from_dict(update_node_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
