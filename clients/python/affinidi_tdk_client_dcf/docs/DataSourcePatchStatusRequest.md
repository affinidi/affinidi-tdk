# DataSourcePatchStatusRequest

Updates a data source status.

## Properties

| Name       | Type                                              | Description                    | Notes      |
| ---------- | ------------------------------------------------- | ------------------------------ | ---------- |
| **status** | **str**                                           | The status of the data source. |
| **config** | [**ConnectorAuthConfig**](ConnectorAuthConfig.md) |                                | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_patch_status_request import DataSourcePatchStatusRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourcePatchStatusRequest from a JSON string
data_source_patch_status_request_instance = DataSourcePatchStatusRequest.from_json(json)
# print the JSON string representation of the object
print DataSourcePatchStatusRequest.to_json()

# convert the object into a dict
data_source_patch_status_request_dict = data_source_patch_status_request_instance.to_dict()
# create an instance of DataSourcePatchStatusRequest from a dict
data_source_patch_status_request_form_dict = data_source_patch_status_request.from_dict(data_source_patch_status_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
