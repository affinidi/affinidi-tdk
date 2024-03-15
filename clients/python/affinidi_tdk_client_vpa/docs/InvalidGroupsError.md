# InvalidGroupsError

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
from affinidi_tdk_client_vpa.models.invalid_groups_error import InvalidGroupsError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidGroupsError from a JSON string
invalid_groups_error_instance = InvalidGroupsError.from_json(json)
# print the JSON string representation of the object
print InvalidGroupsError.to_json()

# convert the object into a dict
invalid_groups_error_dict = invalid_groups_error_instance.to_dict()
# create an instance of InvalidGroupsError from a dict
invalid_groups_error_form_dict = invalid_groups_error.from_dict(invalid_groups_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
