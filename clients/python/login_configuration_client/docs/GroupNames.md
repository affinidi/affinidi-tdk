# GroupNames

## Properties

| Name            | Type          | Description | Notes      |
| --------------- | ------------- | ----------- | ---------- |
| **group_names** | **List[str]** |             |
| **page_token**  | **object**    |             | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.group_names import GroupNames

# TODO update the JSON string below
json = "{}"
# create an instance of GroupNames from a JSON string
group_names_instance = GroupNames.from_json(json)
# print the JSON string representation of the object
print GroupNames.to_json()

# convert the object into a dict
group_names_dict = group_names_instance.to_dict()
# create an instance of GroupNames from a dict
group_names_form_dict = group_names.from_dict(group_names_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
