# RemoveUserFromGroupInput

input used to remove a user from a group

## Properties

| Name        | Type    | Description                   | Notes |
| ----------- | ------- | ----------------------------- | ----- |
| **user_id** | **str** | Unique identifier of the user |

## Example

```python
from affinidi_tdk_login_configuration_client.models.remove_user_from_group_input import RemoveUserFromGroupInput

# TODO update the JSON string below
json = "{}"
# create an instance of RemoveUserFromGroupInput from a JSON string
remove_user_from_group_input_instance = RemoveUserFromGroupInput.from_json(json)
# print the JSON string representation of the object
print RemoveUserFromGroupInput.to_json()

# convert the object into a dict
remove_user_from_group_input_dict = remove_user_from_group_input_instance.to_dict()
# create an instance of RemoveUserFromGroupInput from a dict
remove_user_from_group_input_from_dict = RemoveUserFromGroupInput.from_dict(remove_user_from_group_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
