# ListConfigurationOK

## Properties

| Name               | Type                                                      | Description | Notes |
| ------------------ | --------------------------------------------------------- | ----------- | ----- |
| **configurations** | [**List[IotaConfigurationDto]**](IotaConfigurationDto.md) |             |

## Example

```python
from affinidi_tdk_iota_client.models.list_configuration_ok import ListConfigurationOK

# TODO update the JSON string below
json = "{}"
# create an instance of ListConfigurationOK from a JSON string
list_configuration_ok_instance = ListConfigurationOK.from_json(json)
# print the JSON string representation of the object
print ListConfigurationOK.to_json()

# convert the object into a dict
list_configuration_ok_dict = list_configuration_ok_instance.to_dict()
# create an instance of ListConfigurationOK from a dict
list_configuration_ok_form_dict = list_configuration_ok.from_dict(list_configuration_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
