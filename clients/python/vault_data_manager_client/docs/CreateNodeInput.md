# CreateNodeInput

## Properties

| Name               | Type                        | Description                                                                                                   | Notes      |
| ------------------ | --------------------------- | ------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**           | **str**                     | Name of the item                                                                                              |
| **type**           | [**NodeType**](NodeType.md) |                                                                                                               |
| **description**    | **str**                     | description of profile if creating a new profile                                                              | [optional] |
| **parent_node_id** | **str**                     | parent node id, if not provided then root element is used                                                     | [optional] |
| **edek_info**      | [**EdekInfo**](EdekInfo.md) |                                                                                                               | [optional] |
| **dek**            | **str**                     | A base64 encoded data encryption key, encrypted using VFS public key, required for node types [FILE, PROFILE] | [optional] |
| **metadata**       | **str**                     | metadata of the node in stringified json format                                                               | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_node_input import CreateNodeInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateNodeInput from a JSON string
create_node_input_instance = CreateNodeInput.from_json(json)
# print the JSON string representation of the object
print CreateNodeInput.to_json()

# convert the object into a dict
create_node_input_dict = create_node_input_instance.to_dict()
# create an instance of CreateNodeInput from a dict
create_node_input_from_dict = CreateNodeInput.from_dict(create_node_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
