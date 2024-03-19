# DataSourceCreationResponse

Response payload after successful creation of a data source configuration.

## Properties

| Name               | Type    | Description                | Notes      |
| ------------------ | ------- | -------------------------- | ---------- |
| **data_source_id** | **str** | The ID of the data source. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.data_source_creation_response import DataSourceCreationResponse

# TODO update the JSON string below
json = "{}"
# create an instance of DataSourceCreationResponse from a JSON string
data_source_creation_response_instance = DataSourceCreationResponse.from_json(json)
# print the JSON string representation of the object
print DataSourceCreationResponse.to_json()

# convert the object into a dict
data_source_creation_response_dict = data_source_creation_response_instance.to_dict()
# create an instance of DataSourceCreationResponse from a dict
data_source_creation_response_form_dict = data_source_creation_response.from_dict(data_source_creation_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
