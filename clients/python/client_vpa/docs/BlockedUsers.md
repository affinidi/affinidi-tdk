# BlockedUsers

## Properties

| Name           | Type          | Description | Notes      |
| -------------- | ------------- | ----------- | ---------- |
| **user_ids**   | **List[str]** |             |
| **page_token** | **object**    |             | [optional] |

## Example

```python
from affinidi_tdk_client_vpa.models.blocked_users import BlockedUsers

# TODO update the JSON string below
json = "{}"
# create an instance of BlockedUsers from a JSON string
blocked_users_instance = BlockedUsers.from_json(json)
# print the JSON string representation of the object
print BlockedUsers.to_json()

# convert the object into a dict
blocked_users_dict = blocked_users_instance.to_dict()
# create an instance of BlockedUsers from a dict
blocked_users_form_dict = blocked_users.from_dict(blocked_users_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
