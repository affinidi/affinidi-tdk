# InvalidParametersError

## Properties

| Name                 | Type      | Description | Notes      |
| -------------------- | --------- | ----------- | ---------- |
| **name**             | **str**   |             | [optional] |
| **message**          | **str**   |             | [optional] |
| **http_status_code** | **float** |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.invalid_parameters_error import InvalidParametersError

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidParametersError from a JSON string
invalid_parameters_error_instance = InvalidParametersError.from_json(json)
# print the JSON string representation of the object
print InvalidParametersError.to_json()

# convert the object into a dict
invalid_parameters_error_dict = invalid_parameters_error_instance.to_dict()
# create an instance of InvalidParametersError from a dict
invalid_parameters_error_form_dict = invalid_parameters_error.from_dict(invalid_parameters_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
