# InvalidDidParameterError

## Properties

| Name                 | Type                                                                              | Description | Notes      |
| -------------------- | --------------------------------------------------------------------------------- | ----------- | ---------- |
| **name**             | **str**                                                                           |             |
| **message**          | **str**                                                                           |             |
| **http_status_code** | **float**                                                                         |             |
| **trace_id**         | **str**                                                                           |             |
| **details**          | [**List[ServiceErrorResponseDetailsInner]**](ServiceErrorResponseDetailsInner.md) |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.invalid_did_parameter_error import InvalidDidParameterError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidDidParameterError from a JSON string
invalid_did_parameter_error_instance = InvalidDidParameterError.from_json(json)
# print the JSON string representation of the object
print InvalidDidParameterError.to_json()

# convert the object into a dict
invalid_did_parameter_error_dict = invalid_did_parameter_error_instance.to_dict()
# create an instance of InvalidDidParameterError from a dict
invalid_did_parameter_error_from_dict = InvalidDidParameterError.from_dict(invalid_did_parameter_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
