# ConnectorsByIdResponse

The requested connector.

## Properties

| Name          | Type                                | Description | Notes      |
| ------------- | ----------------------------------- | ----------- | ---------- |
| **connector** | [**ConnectorDTO**](ConnectorDTO.md) |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connectors_by_id_response import ConnectorsByIdResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectorsByIdResponse from a JSON string
connectors_by_id_response_instance = ConnectorsByIdResponse.from_json(json)
# print the JSON string representation of the object
print ConnectorsByIdResponse.to_json()

# convert the object into a dict
connectors_by_id_response_dict = connectors_by_id_response_instance.to_dict()
# create an instance of ConnectorsByIdResponse from a dict
connectors_by_id_response_form_dict = connectors_by_id_response.from_dict(connectors_by_id_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
