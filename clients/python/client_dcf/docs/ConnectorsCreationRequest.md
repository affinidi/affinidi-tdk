# ConnectorsCreationRequest

Request to create a new connector.

## Properties

| Name                | Type                                              | Description                                         | Notes      |
| ------------------- | ------------------------------------------------- | --------------------------------------------------- | ---------- |
| **name**            | **str**                                           | The name of the connector.                          |
| **data_source_ids** | **List[str]**                                     | The list of data source IDs for the connector.      |
| **config**          | [**ConnectorAuthConfig**](ConnectorAuthConfig.md) |                                                     |
| **icon**            | **bytearray**                                     | The icon of the connector as base64 encoded string. |
| **website_uri**     | **str**                                           | The URL of the website for the connector.           | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connectors_creation_request import ConnectorsCreationRequest

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectorsCreationRequest from a JSON string
connectors_creation_request_instance = ConnectorsCreationRequest.from_json(json)
# print the JSON string representation of the object
print ConnectorsCreationRequest.to_json()

# convert the object into a dict
connectors_creation_request_dict = connectors_creation_request_instance.to_dict()
# create an instance of ConnectorsCreationRequest from a dict
connectors_creation_request_form_dict = connectors_creation_request.from_dict(connectors_creation_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
