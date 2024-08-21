# OperationForbiddenError

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
from affinidi_tdk_iota_client.models.operation_forbidden_error import OperationForbiddenError

# TODO update the JSON string below
json = "{}"
# create an instance of OperationForbiddenError from a JSON string
operation_forbidden_error_instance = OperationForbiddenError.from_json(json)
# print the JSON string representation of the object
print OperationForbiddenError.to_json()

# convert the object into a dict
operation_forbidden_error_dict = operation_forbidden_error_instance.to_dict()
# create an instance of OperationForbiddenError from a dict
operation_forbidden_error_from_dict = OperationForbiddenError.from_dict(operation_forbidden_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
