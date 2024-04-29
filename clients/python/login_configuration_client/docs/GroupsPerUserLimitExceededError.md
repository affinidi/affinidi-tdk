# GroupsPerUserLimitExceededError

## Properties

| Name                 | Type                                                                                | Description | Notes      |
| -------------------- | ----------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                             |             |
| **message**          | **str**                                                                             |             |
| **http_status_code** | **float**                                                                           |             |
| **trace_id**         | **str**                                                                             |             |
| **details**          | [**List[InvalidParameterErrorDetailsInner]**](InvalidParameterErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.groups_per_user_limit_exceeded_error import GroupsPerUserLimitExceededError

# TODO update the JSON string below
json = "{}"
# create an instance of GroupsPerUserLimitExceededError from a JSON string
groups_per_user_limit_exceeded_error_instance = GroupsPerUserLimitExceededError.from_json(json)
# print the JSON string representation of the object
print GroupsPerUserLimitExceededError.to_json()

# convert the object into a dict
groups_per_user_limit_exceeded_error_dict = groups_per_user_limit_exceeded_error_instance.to_dict()
# create an instance of GroupsPerUserLimitExceededError from a dict
groups_per_user_limit_exceeded_error_form_dict = groups_per_user_limit_exceeded_error.from_dict(groups_per_user_limit_exceeded_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
