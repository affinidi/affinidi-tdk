# CreateNodeOK

## Properties

| Name        | Type                  | Description | Notes      |
| ----------- | --------------------- | ----------- | ---------- |
| **node_id** | **str**               |             |
| **url**     | **str**               |             | [optional] |
| **link**    | **str**               |             | [optional] |
| **fields**  | **Dict[str, object]** |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.create_node_ok import CreateNodeOK

# TODO update the JSON string below
json = "{}"
# create an instance of CreateNodeOK from a JSON string
create_node_ok_instance = CreateNodeOK.from_json(json)
# print the JSON string representation of the object
print CreateNodeOK.to_json()

# convert the object into a dict
create_node_ok_dict = create_node_ok_instance.to_dict()
# create an instance of CreateNodeOK from a dict
create_node_ok_from_dict = CreateNodeOK.from_dict(create_node_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
