# LoginConfigurationClientMetadata

login configuration client metadata

## Properties

| Name       | Type    | Description                                             | Notes |
| ---------- | ------- | ------------------------------------------------------- | ----- |
| **name**   | **str** | application name that will be displayed in consent page |
| **origin** | **str** | origin url that will be displayed in consent page       |
| **logo**   | **str** | logo url that will be displayed in consent page         |

## Example

```python
from affinidi_tdk_client_vpa.models.login_configuration_client_metadata import LoginConfigurationClientMetadata

# TODO update the JSON string below
json = "{}"
# create an instance of LoginConfigurationClientMetadata from a JSON string
login_configuration_client_metadata_instance = LoginConfigurationClientMetadata.from_json(json)
# print the JSON string representation of the object
print LoginConfigurationClientMetadata.to_json()

# convert the object into a dict
login_configuration_client_metadata_dict = login_configuration_client_metadata_instance.to_dict()
# create an instance of LoginConfigurationClientMetadata from a dict
login_configuration_client_metadata_form_dict = login_configuration_client_metadata.from_dict(login_configuration_client_metadata_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
