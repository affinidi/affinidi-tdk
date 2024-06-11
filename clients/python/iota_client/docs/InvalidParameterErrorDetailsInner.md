# InvalidParameterErrorDetailsInner

## Properties

| Name         | Type    | Description | Notes      |
| ------------ | ------- | ----------- | ---------- |
| **issue**    | **str** |             |
| **field**    | **str** |             | [optional] |
| **value**    | **str** |             | [optional] |
| **location** | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_iota_client.models.invalid_parameter_error_details_inner import InvalidParameterErrorDetailsInner

# TODO update the JSON string below
json = "{}"
# create an instance of InvalidParameterErrorDetailsInner from a JSON string
invalid_parameter_error_details_inner_instance = InvalidParameterErrorDetailsInner.from_json(json)
# print the JSON string representation of the object
print InvalidParameterErrorDetailsInner.to_json()

# convert the object into a dict
invalid_parameter_error_details_inner_dict = invalid_parameter_error_details_inner_instance.to_dict()
# create an instance of InvalidParameterErrorDetailsInner from a dict
invalid_parameter_error_details_inner_form_dict = invalid_parameter_error_details_inner.from_dict(invalid_parameter_error_details_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
