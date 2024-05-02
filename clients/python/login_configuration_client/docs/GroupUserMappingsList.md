# GroupUserMappingsList

## Properties

| Name                   | Type                                                    | Description | Notes      |
| ---------------------- | ------------------------------------------------------- | ----------- | ---------- |
| **users**              | [**List[GroupUserMappingDto]**](GroupUserMappingDto.md) |             | [optional] |
| **last_evaluated_key** | **str**                                                 |             | [optional] |
| **total_user_count**   | **float**                                               |             | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.group_user_mappings_list import GroupUserMappingsList

# TODO update the JSON string below
json = "{}"
# create an instance of GroupUserMappingsList from a JSON string
group_user_mappings_list_instance = GroupUserMappingsList.from_json(json)
# print the JSON string representation of the object
print GroupUserMappingsList.to_json()

# convert the object into a dict
group_user_mappings_list_dict = group_user_mappings_list_instance.to_dict()
# create an instance of GroupUserMappingsList from a dict
group_user_mappings_list_form_dict = group_user_mappings_list.from_dict(group_user_mappings_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
