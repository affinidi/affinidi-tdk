# ConnectionExecutedTempResponse

Represents a default API response communicating result details of the request.

## Properties

| Name            | Type       | Description                  | Notes      |
| --------------- | ---------- | ---------------------------- | ---------- |
| **credentials** | **object** | The actual response message. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connection_executed_temp_response import ConnectionExecutedTempResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectionExecutedTempResponse from a JSON string
connection_executed_temp_response_instance = ConnectionExecutedTempResponse.from_json(json)
# print the JSON string representation of the object
print ConnectionExecutedTempResponse.to_json()

# convert the object into a dict
connection_executed_temp_response_dict = connection_executed_temp_response_instance.to_dict()
# create an instance of ConnectionExecutedTempResponse from a dict
connection_executed_temp_response_form_dict = connection_executed_temp_response.from_dict(connection_executed_temp_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
