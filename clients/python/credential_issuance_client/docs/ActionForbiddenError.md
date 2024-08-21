# ActionForbiddenError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ActionForbiddenErrorDetailsInner]**](ActionForbiddenErrorDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.action_forbidden_error import ActionForbiddenError

# TODO update the JSON string below
json = "{}"
# create an instance of ActionForbiddenError from a JSON string
action_forbidden_error_instance = ActionForbiddenError.from_json(json)
# print the JSON string representation of the object
print ActionForbiddenError.to_json()

# convert the object into a dict
action_forbidden_error_dict = action_forbidden_error_instance.to_dict()
# create an instance of ActionForbiddenError from a dict
action_forbidden_error_from_dict = ActionForbiddenError.from_dict(action_forbidden_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
