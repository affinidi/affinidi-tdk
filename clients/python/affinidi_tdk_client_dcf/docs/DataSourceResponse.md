# DataSourceResponse

List of all data source configurations.

## Properties

| Name             | Type                                                        | Description                           | Notes      |
| ---------------- | ----------------------------------------------------------- | ------------------------------------- | ---------- |
| **data_sources** | [**List[DataSourceResponseDto]**](DataSourceResponseDto.md) | A list of data source configurations. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_response import DataSourceResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceResponse from a JSON string
data_source_response_instance = DataSourceResponse.from_json(json)
# print the JSON string representation of the object
print DataSourceResponse.to_json()

# convert the object into a dict
data_source_response_dict = data_source_response_instance.to_dict()
# create an instance of DataSourceResponse from a dict
data_source_response_form_dict = data_source_response.from_dict(data_source_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
