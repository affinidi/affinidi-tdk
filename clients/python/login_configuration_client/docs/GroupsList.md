# GroupsList

## Properties

| Name       | Type                              | Description | Notes      |
| ---------- | --------------------------------- | ----------- | ---------- |
| **groups** | [**List[GroupDto]**](GroupDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.groups_list import GroupsList

# TODO update the JSON string below
json = "{}"
# create an instance of GroupsList from a JSON string
groups_list_instance = GroupsList.from_json(json)
# print the JSON string representation of the object
print GroupsList.to_json()

# convert the object into a dict
groups_list_dict = groups_list_instance.to_dict()
# create an instance of GroupsList from a dict
groups_list_form_dict = groups_list.from_dict(groups_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
