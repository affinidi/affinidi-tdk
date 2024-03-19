# ConnectionCreationRequest

Request payload for creating a new connection.

## Properties

| Name               | Type    | Description                   | Notes      |
| ------------------ | ------- | ----------------------------- | ---------- |
| **connector_id**   | **str** | The ID of the data connector. |
| **data_source_id** | **str** | The ID of the data source.    | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connection_creation_request import ConnectionCreationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectionCreationRequest from a JSON string
connection_creation_request_instance = ConnectionCreationRequest.from_json(json)
# print the JSON string representation of the object
print ConnectionCreationRequest.to_json()

# convert the object into a dict
connection_creation_request_dict = connection_creation_request_instance.to_dict()
# create an instance of ConnectionCreationRequest from a dict
connection_creation_request_form_dict = connection_creation_request.from_dict(connection_creation_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
