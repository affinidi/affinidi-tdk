# DataSourceConfigByIdResponseOneOf

Specific data source configuration based on id provided

## Properties

| Name                   | Type                                  | Description | Notes |
| ---------------------- | ------------------------------------- | ----------- | ----- |
| **data_source_config** | [**AuthConfigDto**](AuthConfigDto.md) |             |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config_by_id_response_one_of import DataSourceConfigByIdResponseOneOf

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfigByIdResponseOneOf from a JSON string
data_source_config_by_id_response_one_of_instance = DataSourceConfigByIdResponseOneOf.from_json(json)
# print the JSON string representation of the object
print DataSourceConfigByIdResponseOneOf.to_json()

# convert the object into a dict
data_source_config_by_id_response_one_of_dict = data_source_config_by_id_response_one_of_instance.to_dict()
# create an instance of DataSourceConfigByIdResponseOneOf from a dict
data_source_config_by_id_response_one_of_form_dict = data_source_config_by_id_response_one_of.from_dict(data_source_config_by_id_response_one_of_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
