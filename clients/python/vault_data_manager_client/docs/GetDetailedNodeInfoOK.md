# GetDetailedNodeInfoOK

## Properties

| Name                      | Type                            | Description                                                                 | Notes      |
| ------------------------- | ------------------------------- | --------------------------------------------------------------------------- | ---------- |
| **node_id**               | **str**                         | A unique identifier of current node                                         |
| **status**                | [**NodeStatus**](NodeStatus.md) |                                                                             |
| **file_count**            | **float**                       | number of files in current node                                             | [optional] |
| **profile_count**         | **float**                       | number of profiles in current node                                          | [optional] |
| **folder_count**          | **float**                       | number of folders in current node                                           | [optional] |
| **vc_count**              | **float**                       | number of vcCount in current node                                           | [optional] |
| **name**                  | **str**                         | display name of current node                                                |
| **consumer_id**           | **str**                         | unique identifier for consumer                                              |
| **parent_node_id**        | **str**                         | parent node path                                                            |
| **profile_id**            | **str**                         | A unique identifier of profile, under which current node is created         |
| **created_at**            | **str**                         | creation date/time of the node                                              |
| **modified_at**           | **str**                         | modification date/time of the node                                          |
| **created_by**            | **str**                         | Identifier of the user who created the node                                 |
| **modified_by**           | **str**                         | Identifier of the user who last updated the node                            |
| **description**           | **str**                         | Description of the node                                                     | [optional] |
| **type**                  | [**NodeType**](NodeType.md)     |                                                                             |
| **link**                  | **str**                         | id of the file, used for FILE node only                                     | [optional] |
| **var_schema**            | **str**                         | name of the schema, used for PROFILE node only                              | [optional] |
| **consumed_file_storage** | **float**                       | amount of bytes used by the stored data, used for ROOT_ELEMENT only for now | [optional] |
| **edek_info**             | [**EdekInfo**](EdekInfo.md)     |                                                                             | [optional] |
| **metadata**              | **str**                         | A JSON string format containing metadata of the node                        | [optional] |
| **get_url**               | **str**                         |                                                                             | [optional] |

## Example

```python
from affinidi_tdk_vault_data_manager_client.models.get_detailed_node_info_ok import GetDetailedNodeInfoOK

# TODO update the JSON string below
json = "{}"
# create an instance of GetDetailedNodeInfoOK from a JSON string
get_detailed_node_info_ok_instance = GetDetailedNodeInfoOK.from_json(json)
# print the JSON string representation of the object
print GetDetailedNodeInfoOK.to_json()

# convert the object into a dict
get_detailed_node_info_ok_dict = get_detailed_node_info_ok_instance.to_dict()
# create an instance of GetDetailedNodeInfoOK from a dict
get_detailed_node_info_ok_from_dict = GetDetailedNodeInfoOK.from_dict(get_detailed_node_info_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
