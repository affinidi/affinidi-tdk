# CallbackResponse

## Properties

| Name                   | Type                                        | Description                   | Notes      |
| ---------------------- | ------------------------------------------- | ----------------------------- | ---------- |
| **connection_id**      | **str**                                     | The ID of the data connector. | [optional] |
| **data_source**        | [**DataSource**](DataSource.md)             |                               | [optional] |
| **sso_url**            | **str**                                     |                               | [optional] |
| **data_source_config** | [**DataSourceConfig**](DataSourceConfig.md) |                               | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.callback_response import CallbackResponse

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackResponse from a JSON string
callback_response_instance = CallbackResponse.from_json(json)
# print the JSON string representation of the object
print CallbackResponse.to_json()

# convert the object into a dict
callback_response_dict = callback_response_instance.to_dict()
# create an instance of CallbackResponse from a dict
callback_response_form_dict = callback_response.from_dict(callback_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
