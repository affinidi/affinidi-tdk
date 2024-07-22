# BlockedUsersInput

## Properties

| Name            | Type          | Description | Notes      |
| --------------- | ------------- | ----------- | ---------- |
| **name**        | **str**       |             | [optional] |
| **description** | **str**       |             | [optional] |
| **user_ids**    | **List[str]** |             |

## Example

```python
from affinidi_tdk_login_configuration_client.models.blocked_users_input import BlockedUsersInput

# TODO update the JSON string below
json = "{}"
# create an instance of BlockedUsersInput from a JSON string
blocked_users_input_instance = BlockedUsersInput.from_json(json)
# print the JSON string representation of the object
print BlockedUsersInput.to_json()

# convert the object into a dict
blocked_users_input_dict = blocked_users_input_instance.to_dict()
# create an instance of BlockedUsersInput from a dict
blocked_users_input_form_dict = blocked_users_input.from_dict(blocked_users_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
