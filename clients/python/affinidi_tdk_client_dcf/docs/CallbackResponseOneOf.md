# CallbackResponseOneOf

Response payload sent after calling the callback endpoint.

## Properties

| Name              | Type    | Description                   | Notes      |
| ----------------- | ------- | ----------------------------- | ---------- |
| **connection_id** | **str** | The ID of the data connector. | [optional] |
| **data_source**   | **str** | The name of the data source.  | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.callback_response_one_of import CallbackResponseOneOf

# TODO update the JSON string below
json = "{}"
# create an instance of CallbackResponseOneOf from a JSON string
callback_response_one_of_instance = CallbackResponseOneOf.from_json(json)
# print the JSON string representation of the object
print CallbackResponseOneOf.to_json()

# convert the object into a dict
callback_response_one_of_dict = callback_response_one_of_instance.to_dict()
# create an instance of CallbackResponseOneOf from a dict
callback_response_one_of_form_dict = callback_response_one_of.from_dict(callback_response_one_of_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
