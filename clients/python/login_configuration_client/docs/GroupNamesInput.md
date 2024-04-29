# GroupNamesInput

## Properties

| Name            | Type          | Description | Notes |
| --------------- | ------------- | ----------- | ----- |
| **group_names** | **List[str]** |             |

## Example

```python
from affinidi_tdk_login_configuration_client.models.group_names_input import GroupNamesInput

# TODO update the JSON string below
json = "{}"
# create an instance of GroupNamesInput from a JSON string
group_names_input_instance = GroupNamesInput.from_json(json)
# print the JSON string representation of the object
print GroupNamesInput.to_json()

# convert the object into a dict
group_names_input_dict = group_names_input_instance.to_dict()
# create an instance of GroupNamesInput from a dict
group_names_input_form_dict = group_names_input.from_dict(group_names_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
