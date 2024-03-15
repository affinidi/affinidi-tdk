# DataSourceConfigPatchRequest

Request payload for updating certain authentication information of a data source configuration.

## Properties

| Name                 | Type                                                    | Description | Notes      |
| -------------------- | ------------------------------------------------------- | ----------- | ---------- |
| **auth_config_info** | [**AuthConfigInfoPatchDto**](AuthConfigInfoPatchDto.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_config_patch_request import DataSourceConfigPatchRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceConfigPatchRequest from a JSON string
data_source_config_patch_request_instance = DataSourceConfigPatchRequest.from_json(json)
# print the JSON string representation of the object
print DataSourceConfigPatchRequest.to_json()

# convert the object into a dict
data_source_config_patch_request_dict = data_source_config_patch_request_instance.to_dict()
# create an instance of DataSourceConfigPatchRequest from a dict
data_source_config_patch_request_form_dict = data_source_config_patch_request.from_dict(data_source_config_patch_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
