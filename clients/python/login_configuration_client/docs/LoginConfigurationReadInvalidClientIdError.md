# LoginConfigurationReadInvalidClientIdError

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
from affinidi_tdk_login_configuration_client.models.login_configuration_read_invalid_client_id_error import LoginConfigurationReadInvalidClientIdError

# TODO update the JSON string below
json = "{}"
# create an instance of LoginConfigurationReadInvalidClientIdError from a JSON string
login_configuration_read_invalid_client_id_error_instance = LoginConfigurationReadInvalidClientIdError.from_json(json)
# print the JSON string representation of the object
print LoginConfigurationReadInvalidClientIdError.to_json()

# convert the object into a dict
login_configuration_read_invalid_client_id_error_dict = login_configuration_read_invalid_client_id_error_instance.to_dict()
# create an instance of LoginConfigurationReadInvalidClientIdError from a dict
login_configuration_read_invalid_client_id_error_from_dict = LoginConfigurationReadInvalidClientIdError.from_dict(login_configuration_read_invalid_client_id_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
