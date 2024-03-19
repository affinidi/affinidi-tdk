# AvailableConnectorsResponse

List of all available connectors.

## Properties

| Name           | Type                                                        | Description                     | Notes |
| -------------- | ----------------------------------------------------------- | ------------------------------- | ----- |
| **connectors** | [**List[AvailableConnectorDTO]**](AvailableConnectorDTO.md) | A list of available connectors. |

## Example

```python
from affinidi_tdk_client_dcf.models.available_connectors_response import AvailableConnectorsResponse

# TODO update the JSON string below
json = "{}"
# create an instance of AvailableConnectorsResponse from a JSON string
available_connectors_response_instance = AvailableConnectorsResponse.from_json(json)
# print the JSON string representation of the object
print AvailableConnectorsResponse.to_json()

# convert the object into a dict
available_connectors_response_dict = available_connectors_response_instance.to_dict()
# create an instance of AvailableConnectorsResponse from a dict
available_connectors_response_form_dict = available_connectors_response.from_dict(available_connectors_response_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
