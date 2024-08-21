# LoginConfigurationClientMetadataInput

login configuration client metadata

## Properties

| Name       | Type    | Description                                             | Notes |
| ---------- | ------- | ------------------------------------------------------- | ----- |
| **name**   | **str** | application name that will be displayed in consent page |
| **origin** | **str** | origin url that will be displayed in consent page       |
| **logo**   | **str** | logo url that will be displayed in consent page         |

## Example

```python
from affinidi_tdk_login_configuration_client.models.login_configuration_client_metadata_input import LoginConfigurationClientMetadataInput

# TODO update the JSON string below
json = "{}"
# create an instance of LoginConfigurationClientMetadataInput from a JSON string
login_configuration_client_metadata_input_instance = LoginConfigurationClientMetadataInput.from_json(json)
# print the JSON string representation of the object
print LoginConfigurationClientMetadataInput.to_json()

# convert the object into a dict
login_configuration_client_metadata_input_dict = login_configuration_client_metadata_input_instance.to_dict()
# create an instance of LoginConfigurationClientMetadataInput from a dict
login_configuration_client_metadata_input_from_dict = LoginConfigurationClientMetadataInput.from_dict(login_configuration_client_metadata_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
