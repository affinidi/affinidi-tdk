# DataSourceConfigByIdResponse

## Properties

| Name                   | Type                                                                                                        | Description | Notes      |
| ---------------------- | ----------------------------------------------------------------------------------------------------------- | ----------- | ---------- |
| **data_source_config** | [**AuthConfigDto**](AuthConfigDto.md)                                                                       |             |
| **validation_result**  | [**DataSourceConfigValidationResultValidationResult**](DataSourceConfigValidationResultValidationResult.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config_by_id_response import DataSourceConfigByIdResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfigByIdResponse from a JSON string
data_source_config_by_id_response_instance = DataSourceConfigByIdResponse.from_json(json)
# print the JSON string representation of the object
print DataSourceConfigByIdResponse.to_json()

# convert the object into a dict
data_source_config_by_id_response_dict = data_source_config_by_id_response_instance.to_dict()
# create an instance of DataSourceConfigByIdResponse from a dict
data_source_config_by_id_response_form_dict = data_source_config_by_id_response.from_dict(data_source_config_by_id_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
