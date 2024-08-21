# GetIotaConfigurationMetaDataOK

## Properties

| Name       | Type    | Description                                             | Notes |
| ---------- | ------- | ------------------------------------------------------- | ----- |
| **name**   | **str** | application name that will be displayed in consent page |
| **origin** | **str** | origin url that will be displayed in consent page       |
| **logo**   | **str** | logo url that will be displayed in consent page         |

## Example

```python
from affinidi_tdk_iota_client.models.get_iota_configuration_meta_data_ok import GetIotaConfigurationMetaDataOK

# TODO update the JSON string below
json = "{}"
# create an instance of GetIotaConfigurationMetaDataOK from a JSON string
get_iota_configuration_meta_data_ok_instance = GetIotaConfigurationMetaDataOK.from_json(json)
# print the JSON string representation of the object
print GetIotaConfigurationMetaDataOK.to_json()

# convert the object into a dict
get_iota_configuration_meta_data_ok_dict = get_iota_configuration_meta_data_ok_instance.to_dict()
# create an instance of GetIotaConfigurationMetaDataOK from a dict
get_iota_configuration_meta_data_ok_from_dict = GetIotaConfigurationMetaDataOK.from_dict(get_iota_configuration_meta_data_ok_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
