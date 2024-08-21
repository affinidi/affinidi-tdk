# LoginConfigurationClientMetadataOutput

login configuration client metadata

## Properties

| Name                | Type     | Description                                                                | Notes      |
| ------------------- | -------- | -------------------------------------------------------------------------- | ---------- |
| **name**            | **str**  | application name that will be displayed in consent page                    |
| **origin**          | **str**  | origin url that will be displayed in consent page                          |
| **logo**            | **str**  | logo url that will be displayed in consent page                            |
| **domain_verified** | **bool** | indicates if the developer&#39;s ownership of the domain has been verified | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.login_configuration_client_metadata_output import LoginConfigurationClientMetadataOutput

# TODO update the JSON string below
json = "{}"
# create an instance of LoginConfigurationClientMetadataOutput from a JSON string
login_configuration_client_metadata_output_instance = LoginConfigurationClientMetadataOutput.from_json(json)
# print the JSON string representation of the object
print LoginConfigurationClientMetadataOutput.to_json()

# convert the object into a dict
login_configuration_client_metadata_output_dict = login_configuration_client_metadata_output_instance.to_dict()
# create an instance of LoginConfigurationClientMetadataOutput from a dict
login_configuration_client_metadata_output_from_dict = LoginConfigurationClientMetadataOutput.from_dict(login_configuration_client_metadata_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
