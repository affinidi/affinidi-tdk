# ListLoginConfigurationOutput

## Properties

| Name                   | Type                                                              | Description | Notes      |
| ---------------------- | ----------------------------------------------------------------- | ----------- | ---------- |
| **configurations**     | [**List[LoginConfigurationObject]**](LoginConfigurationObject.md) |             |
| **last_evaluated_key** | **str**                                                           |             | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.list_login_configuration_output import ListLoginConfigurationOutput

# TODO update the JSON string below
json = "{}"
# create an instance of ListLoginConfigurationOutput from a JSON string
list_login_configuration_output_instance = ListLoginConfigurationOutput.from_json(json)
# print the JSON string representation of the object
print ListLoginConfigurationOutput.to_json()

# convert the object into a dict
list_login_configuration_output_dict = list_login_configuration_output_instance.to_dict()
# create an instance of ListLoginConfigurationOutput from a dict
list_login_configuration_output_form_dict = list_login_configuration_output.from_dict(list_login_configuration_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
