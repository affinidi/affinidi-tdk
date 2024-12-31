# ChangeStatusForbiddenError

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
from affinidi_tdk_credential_issuance_client.models.change_status_forbidden_error import ChangeStatusForbiddenError

# TODO update the JSON string below
json = "{}"
# create an instance of ChangeStatusForbiddenError from a JSON string
change_status_forbidden_error_instance = ChangeStatusForbiddenError.from_json(json)
# print the JSON string representation of the object
print ChangeStatusForbiddenError.to_json()

# convert the object into a dict
change_status_forbidden_error_dict = change_status_forbidden_error_instance.to_dict()
# create an instance of ChangeStatusForbiddenError from a dict
change_status_forbidden_error_from_dict = ChangeStatusForbiddenError.from_dict(change_status_forbidden_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
