# DataSourceConfig

An object that contains configurations for authenticating with a given data source.

## Properties

| Name                        | Type                                          | Description                                | Notes      |
| --------------------------- | --------------------------------------------- | ------------------------------------------ | ---------- |
| **data_source_config_name** | **str**                                       | The name of the data source configuration. |
| **status**                  | **str**                                       | The status of the data source config.      | [optional] |
| **auth_config_info**        | [**AuthConfigInfoDto**](AuthConfigInfoDto.md) |                                            |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config import DataSourceConfig

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfig from a JSON string
data_source_config_instance = DataSourceConfig.from_json(json)
# print the JSON string representation of the object
print DataSourceConfig.to_json()

# convert the object into a dict
data_source_config_dict = data_source_config_instance.to_dict()
# create an instance of DataSourceConfig from a dict
data_source_config_form_dict = data_source_config.from_dict(data_source_config_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
