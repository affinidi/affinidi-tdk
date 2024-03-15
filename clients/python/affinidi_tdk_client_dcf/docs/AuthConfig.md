# AuthConfig

An object containing the name and id of a given data source.

## Properties

| Name                        | Type    | Description                                | Notes |
| --------------------------- | ------- | ------------------------------------------ | ----- |
| **id**                      | **str** | The ID of the data source.                 |
| **data_source_config_name** | **str** | The name of the data source configuration. |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config import AuthConfig

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfig from a JSON string
auth_config_instance = AuthConfig.from_json(json)
# print the JSON string representation of the object
print AuthConfig.to_json()

# convert the object into a dict
auth_config_dict = auth_config_instance.to_dict()
# create an instance of AuthConfig from a dict
auth_config_form_dict = auth_config.from_dict(auth_config_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
