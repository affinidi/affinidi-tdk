# CreateProjectNetworkError

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
from affinidi_tdk_login_configuration_client.models.create_project_network_error import CreateProjectNetworkError

# TODO update the JSON string below
json = "{}"
# create an instance of CreateProjectNetworkError from a JSON string
create_project_network_error_instance = CreateProjectNetworkError.from_json(json)
# print the JSON string representation of the object
print CreateProjectNetworkError.to_json()

# convert the object into a dict
create_project_network_error_dict = create_project_network_error_instance.to_dict()
# create an instance of CreateProjectNetworkError from a dict
create_project_network_error_form_dict = create_project_network_error.from_dict(create_project_network_error_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
