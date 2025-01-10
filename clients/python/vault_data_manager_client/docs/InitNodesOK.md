# InitNodesOK

## Properties

| Name                  | Type                                              | Description | Notes      |
| --------------------- | ------------------------------------------------- | ----------- | ---------- |
| **consumer_metadata** | [**ConsumerMetadataDto**](ConsumerMetadataDto.md) |             | [optional] |
| **default_profile**   | [**NodeDto**](NodeDto.md)                         |             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.init_nodes_ok import InitNodesOK

# TODO update the JSON string below
json = "{}"
# create an instance of InitNodesOK from a JSON string
init_nodes_ok_instance = InitNodesOK.from_json(json)
# print the JSON string representation of the object
print InitNodesOK.to_json()

# convert the object into a dict
init_nodes_ok_dict = init_nodes_ok_instance.to_dict()
# create an instance of InitNodesOK from a dict
init_nodes_ok_from_dict = InitNodesOK.from_dict(init_nodes_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
