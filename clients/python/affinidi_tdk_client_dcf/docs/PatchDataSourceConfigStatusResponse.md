# PatchDataSourceConfigStatusResponse

The response for activating or deactivating

## Properties

| Name                   | Type                                        | Description | Notes      |
| ---------------------- | ------------------------------------------- | ----------- | ---------- |
| **sso_url**            | **str**                                     |             | [optional] |
| **data_source_config** | [**DataSourceConfig**](DataSourceConfig.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.patch_data_source_config_status_response import PatchDataSourceConfigStatusResponse

# TODO update the JSON string below
json = "{}"
# create an instance of PatchDataSourceConfigStatusResponse from a JSON string
patch_data_source_config_status_response_instance = PatchDataSourceConfigStatusResponse.from_json(json)
# print the JSON string representation of the object
print PatchDataSourceConfigStatusResponse.to_json()

# convert the object into a dict
patch_data_source_config_status_response_dict = patch_data_source_config_status_response_instance.to_dict()
# create an instance of PatchDataSourceConfigStatusResponse from a dict
patch_data_source_config_status_response_form_dict = patch_data_source_config_status_response.from_dict(patch_data_source_config_status_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
