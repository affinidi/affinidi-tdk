# ConnectorsResponse

List of all configured connectors.

## Properties

| Name           | Type                                      | Description                     | Notes |
| -------------- | ----------------------------------------- | ------------------------------- | ----- |
| **connectors** | [**List[ConnectorDTO]**](ConnectorDTO.md) | A list of available connectors. |

## Example

```python
from affinidi_tdk_client_dcf.models.connectors_response import ConnectorsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectorsResponse from a JSON string
connectors_response_instance = ConnectorsResponse.from_json(json)
# print the JSON string representation of the object
print ConnectorsResponse.to_json()

# convert the object into a dict
connectors_response_dict = connectors_response_instance.to_dict()
# create an instance of ConnectorsResponse from a dict
connectors_response_form_dict = connectors_response.from_dict(connectors_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
