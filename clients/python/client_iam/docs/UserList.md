# UserList

## Properties

| Name        | Type                            | Description | Notes |
| ----------- | ------------------------------- | ----------- | ----- |
| **records** | [**List[UserDto]**](UserDto.md) |             |

## Example

```python
from affinidi_tdk_client_iam.models.user_list import UserList

# TODO update the JSON string below
json = "{}"
# create an instance of UserList from a JSON string
user_list_instance = UserList.from_json(json)
# print the JSON string representation of the object
print UserList.to_json()

# convert the object into a dict
user_list_dict = user_list_instance.to_dict()
# create an instance of UserList from a dict
user_list_form_dict = user_list.from_dict(user_list_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)