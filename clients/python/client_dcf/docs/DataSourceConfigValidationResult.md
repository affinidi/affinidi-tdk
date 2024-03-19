# DataSourceConfigValidationResult

## Properties

| Name                  | Type                                                                                                        | Description | Notes      |
| --------------------- | ----------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **validation_result** | [**DataSourceConfigValidationResultValidationResult**](DataSourceConfigValidationResultValidationResult.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config_validation_result import DataSourceConfigValidationResult

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfigValidationResult from a JSON string
data_source_config_validation_result_instance = DataSourceConfigValidationResult.from_json(json)
# print the JSON string representation of the object
print DataSourceConfigValidationResult.to_json()

# convert the object into a dict
data_source_config_validation_result_dict = data_source_config_validation_result_instance.to_dict()
# create an instance of DataSourceConfigValidationResult from a dict
data_source_config_validation_result_form_dict = data_source_config_validation_result.from_dict(data_source_config_validation_result_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
