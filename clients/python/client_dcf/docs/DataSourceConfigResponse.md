# DataSourceConfigResponse

List of all available configurations of data sources.

## Properties

| Name                    | Type                                  | Description                                           | Notes |
| ----------------------- | ------------------------------------- | ----------------------------------------------------- | ----- |
| **data_source_configs** | [**List[AuthConfig]**](AuthConfig.md) | The list of all available data source configurations. |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config_response import DataSourceConfigResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfigResponse from a JSON string
data_source_config_response_instance = DataSourceConfigResponse.from_json(json)
# print the JSON string representation of the object
print DataSourceConfigResponse.to_json()

# convert the object into a dict
data_source_config_response_dict = data_source_config_response_instance.to_dict()
# create an instance of DataSourceConfigResponse from a dict
data_source_config_response_form_dict = data_source_config_response.from_dict(data_source_config_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
