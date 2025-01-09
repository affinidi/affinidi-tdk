# ListNodeChildrenOK

## Properties

| Name                   | Type                            | Description | Notes      |
| ---------------------- | ------------------------------- | ----------- | ---------- |
| **nodes**              | [**List[NodeDto]**](NodeDto.md) |             | [optional] |
| **last_evaluated_key** | **str**                         |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.list_node_children_ok import ListNodeChildrenOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListNodeChildrenOK from a JSON string
list_node_children_ok_instance = ListNodeChildrenOK.from_json(json)
# print the JSON string representation of the object
print ListNodeChildrenOK.to_json()

# convert the object into a dict
list_node_children_ok_dict = list_node_children_ok_instance.to_dict()
# create an instance of ListNodeChildrenOK from a dict
list_node_children_ok_from_dict = ListNodeChildrenOK.from_dict(list_node_children_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
