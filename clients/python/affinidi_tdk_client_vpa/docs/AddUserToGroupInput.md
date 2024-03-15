# AddUserToGroupInput

input used to add a user to a group

## Properties

| Name        | Type    | Description                   | Notes |
| ----------- | ------- | ----------------------------- | ----- |
| **user_id** | **str** | Unique identifier of the user |

## Example

```python
from affinidi_tdk_client_vpa.models.add_user_to_group_input import AddUserToGroupInput

# TODO update the JSON string below
json = "{}"
# create an instance of AddUserToGroupInput from a JSON string
add_user_to_group_input_instance = AddUserToGroupInput.from_json(json)
# print the JSON string representation of the object
print AddUserToGroupInput.to_json()

# convert the object into a dict
add_user_to_group_input_dict = add_user_to_group_input_instance.to_dict()
# create an instance of AddUserToGroupInput from a dict
add_user_to_group_input_form_dict = add_user_to_group_input.from_dict(add_user_to_group_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
