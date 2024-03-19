# ActiveConnectionsResponse

Response payload after requesting a list of active connections.

## Properties

| Name            | Type                                                      | Description                   | Notes |
| --------------- | --------------------------------------------------------- | ----------------------------- | ----- |
| **connections** | [**List[ActiveConnectionsDto]**](ActiveConnectionsDto.md) | A list of active connections. |

## Example

```python
from affinidi_tdk_client_dcf.models.active_connections_response import ActiveConnectionsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ActiveConnectionsResponse from a JSON string
active_connections_response_instance = ActiveConnectionsResponse.from_json(json)
# print the JSON string representation of the object
print ActiveConnectionsResponse.to_json()

# convert the object into a dict
active_connections_response_dict = active_connections_response_instance.to_dict()
# create an instance of ActiveConnectionsResponse from a dict
active_connections_response_form_dict = active_connections_response.from_dict(active_connections_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
