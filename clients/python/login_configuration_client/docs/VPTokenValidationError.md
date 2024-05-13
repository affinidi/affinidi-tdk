# VPTokenValidationError

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
from affinidi_tdk_login_configuration_client.models.vp_token_validation_error import VPTokenValidationError

# TODO update the JSON string below
json = "{}"
# create an instance of VPTokenValidationError from a JSON string
vp_token_validation_error_instance = VPTokenValidationError.from_json(json)
# print the JSON string representation of the object
print VPTokenValidationError.to_json()

# convert the object into a dict
vp_token_validation_error_dict = vp_token_validation_error_instance.to_dict()
# create an instance of VPTokenValidationError from a dict
vp_token_validation_error_form_dict = vp_token_validation_error.from_dict(vp_token_validation_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
