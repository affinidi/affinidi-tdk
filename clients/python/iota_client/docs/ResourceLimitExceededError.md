# ResourceLimitExceededError

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
from affinidi_tdk_iota_client.models.resource_limit_exceeded_error import ResourceLimitExceededError

# TODO update the JSON string below
json = "{}"
# create an instance of ResourceLimitExceededError from a JSON string
resource_limit_exceeded_error_instance = ResourceLimitExceededError.from_json(json)
# print the JSON string representation of the object
print ResourceLimitExceededError.to_json()

# convert the object into a dict
resource_limit_exceeded_error_dict = resource_limit_exceeded_error_instance.to_dict()
# create an instance of ResourceLimitExceededError from a dict
resource_limit_exceeded_error_form_dict = resource_limit_exceeded_error.from_dict(resource_limit_exceeded_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
