# UpdateConfigurationByIdInputClientMetadata

It contains information about the requester or verifier.

## Properties

| Name       | Type    | Description                                                                                                                             | Notes |
| ---------- | ------- | --------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **name**   | **str** | The name displayed on the consent page indicates who is requesting data from the user. It can be the application or website&#39;s name. |
| **origin** | **str** | The URL of the requester displayed on the consent page indicates the request&#39;s origin.                                              |
| **logo**   | **str** | The logo of the requester displayed on the consent page, allowing users to easily recognise who requests the data.                      |

## Example

```python
from affinidi_tdk_iota_client.models.update_configuration_by_id_input_client_metadata import UpdateConfigurationByIdInputClientMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateConfigurationByIdInputClientMetadata from a JSON string
update_configuration_by_id_input_client_metadata_instance = UpdateConfigurationByIdInputClientMetadata.from_json(json)
# print the JSON string representation of the object
print UpdateConfigurationByIdInputClientMetadata.to_json()

# convert the object into a dict
update_configuration_by_id_input_client_metadata_dict = update_configuration_by_id_input_client_metadata_instance.to_dict()
# create an instance of UpdateConfigurationByIdInputClientMetadata from a dict
update_configuration_by_id_input_client_metadata_from_dict = UpdateConfigurationByIdInputClientMetadata.from_dict(update_configuration_by_id_input_client_metadata_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
