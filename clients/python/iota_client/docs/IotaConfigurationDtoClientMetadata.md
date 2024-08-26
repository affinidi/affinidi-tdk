# IotaConfigurationDtoClientMetadata

iota configuration client metadata

## Properties

| Name       | Type    | Description                                             | Notes |
| ---------- | ------- | ------------------------------------------------------- | ----- |
| **name**   | **str** | application name that will be displayed in consent page |
| **origin** | **str** | origin url that will be displayed in consent page       |
| **logo**   | **str** | logo url that will be displayed in consent page         |

## Example

```python
from affinidi_tdk_iota_client.models.iota_configuration_dto_client_metadata import IotaConfigurationDtoClientMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of IotaConfigurationDtoClientMetadata from a JSON string
iota_configuration_dto_client_metadata_instance = IotaConfigurationDtoClientMetadata.from_json(json)
# print the JSON string representation of the object
print IotaConfigurationDtoClientMetadata.to_json()

# convert the object into a dict
iota_configuration_dto_client_metadata_dict = iota_configuration_dto_client_metadata_instance.to_dict()
# create an instance of IotaConfigurationDtoClientMetadata from a dict
iota_configuration_dto_client_metadata_from_dict = IotaConfigurationDtoClientMetadata.from_dict(iota_configuration_dto_client_metadata_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
