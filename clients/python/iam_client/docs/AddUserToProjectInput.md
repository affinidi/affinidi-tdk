# AddUserToProjectInput

## Properties

| Name               | Type    | Description | Notes |
| ------------------ | ------- | ----------- | ----- |
| **principal_id**   | **str** |             |
| **principal_type** | **str** |             |

## Example

```python
from affinidi_tdk_iam_client.models.add_user_to_project_input import AddUserToProjectInput

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserToProjectInput from a JSON string
add_user_to_project_input_instance = AddUserToProjectInput.from_json(json)
# print the JSON string representation of the object
print AddUserToProjectInput.to_json()

# convert the object into a dict
add_user_to_project_input_dict = add_user_to_project_input_instance.to_dict()
# create an instance of AddUserToProjectInput from a dict
add_user_to_project_input_form_dict = add_user_to_project_input.from_dict(add_user_to_project_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
