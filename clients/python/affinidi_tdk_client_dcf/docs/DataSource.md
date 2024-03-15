# DataSource

An object that contains endpoint configurations for data retrieval

## Properties

| Name                        | Type                                                          | Description                                                                                                                            | Notes      |
| --------------------------- | ------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **data_source_id**          | **str**                                                       | The ID of the data source.                                                                                                             | [optional] |
| **data_source_config_id**   | **str**                                                       | The ID of the data source configuration.                                                                                               |
| **data_source_name**        | **str**                                                       | The name of the data source.                                                                                                           |
| **description**             | **str**                                                       | The human readable description of the data source.                                                                                     | [optional] |
| **scope**                   | **str**                                                       | Data-scoped permissions as string, requested from the third-party service API so that DCF can access that data on behalf of end users. |
| **status**                  | **str**                                                       | The status of the data source.                                                                                                         | [optional] |
| **endpoint_config**         | [**EndpointConfigDto**](EndpointConfigDto.md)                 |                                                                                                                                        |
| **transformation_template** | [**TransformationTemplateDto**](TransformationTemplateDto.md) |                                                                                                                                        | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source import DataSource

# TODO update the JSON string below
json = "{}"
# create an instance of DataSource from a JSON string
data_source_instance = DataSource.from_json(json)
# print the JSON string representation of the object
print DataSource.to_json()

# convert the object into a dict
data_source_dict = data_source_instance.to_dict()
# create an instance of DataSource from a dict
data_source_form_dict = data_source.from_dict(data_source_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
