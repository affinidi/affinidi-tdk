# CreateLoginConfigurations400Response

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
from affinidi_tdk_login_configuration_client.models.create_login_configurations400_response import CreateLoginConfigurations400Response

# TODO update the JSON string below
json = "{}"
# create an instance of CreateLoginConfigurations400Response from a JSON string
create_login_configurations400_response_instance = CreateLoginConfigurations400Response.from_json(json)
# print the JSON string representation of the object
print CreateLoginConfigurations400Response.to_json()

# convert the object into a dict
create_login_configurations400_response_dict = create_login_configurations400_response_instance.to_dict()
# create an instance of CreateLoginConfigurations400Response from a dict
create_login_configurations400_response_from_dict = CreateLoginConfigurations400Response.from_dict(create_login_configurations400_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
