# RestoreNodeFromTrashbin

## Properties

| Name                      | Type    | Description                                                                                      | Notes      |
| ------------------------- | ------- | ------------------------------------------------------------------------------------------------ | ---------- |
| **restore_to_profile_id** | **str** | The base64 encoded nodeId of the profile which is base64 encoded, to which node will be restored | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.restore_node_from_trashbin import RestoreNodeFromTrashbin

# TODO update the JSON string below
json = "{}"
# create an instance of RestoreNodeFromTrashbin from a JSON string
restore_node_from_trashbin_instance = RestoreNodeFromTrashbin.from_json(json)
# print the JSON string representation of the object
print RestoreNodeFromTrashbin.to_json()

# convert the object into a dict
restore_node_from_trashbin_dict = restore_node_from_trashbin_instance.to_dict()
# create an instance of RestoreNodeFromTrashbin from a dict
restore_node_from_trashbin_from_dict = RestoreNodeFromTrashbin.from_dict(restore_node_from_trashbin_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
