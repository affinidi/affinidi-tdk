# InvalidParameterError

Some of the parameters are invalid

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
from affinidi_tdk_vault_data_manager_client.models.invalid_parameter_error import InvalidParameterError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidParameterError from a JSON string
invalid_parameter_error_instance = InvalidParameterError.from_json(json)
# print the JSON string representation of the object
print InvalidParameterError.to_json()

# convert the object into a dict
invalid_parameter_error_dict = invalid_parameter_error_instance.to_dict()
# create an instance of InvalidParameterError from a dict
invalid_parameter_error_from_dict = InvalidParameterError.from_dict(invalid_parameter_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
