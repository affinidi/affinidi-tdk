# DataSourcePatchRequest

Request payload for updating of a data source.

## Properties

| Name                        | Type                                                            | Description                                                                                                                            | Notes      |
| --------------------------- | --------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **data_source_name**        | **str**                                                         | The name of the data source.                                                                                                           | [optional] |
| **description**             | **str**                                                         | The human readable description of the data source.                                                                                     | [optional] |
| **scope**                   | **str**                                                         | Data-scoped permissions as string, requested from the third-party service API so that DCF can access that data on behalf of end users. | [optional] |
| **endpoint_config**         | [**EndpointConfigPatchRequest**](EndpointConfigPatchRequest.md) |                                                                                                                                        | [optional] |
| **transformation_template** | [**TransformationTemplateDto**](TransformationTemplateDto.md)   |                                                                                                                                        | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_patch_request import DataSourcePatchRequest

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourcePatchRequest from a JSON string
data_source_patch_request_instance = DataSourcePatchRequest.from_json(json)
# print the JSON string representation of the object
print DataSourcePatchRequest.to_json()

# convert the object into a dict
data_source_patch_request_dict = data_source_patch_request_instance.to_dict()
# create an instance of DataSourcePatchRequest from a dict
data_source_patch_request_form_dict = data_source_patch_request.from_dict(data_source_patch_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
