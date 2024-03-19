# PatchConnectorRequest

Updates a connector's data source IDs or configuration.

## Properties

| Name                | Type                                              | Description                                            | Notes      |
| ------------------- | ------------------------------------------------- | ------------------------------------------------------ | ---------- |
| **data_source_ids** | **List[str]**                                     | The updated list of data source IDs for the connector. | [optional] |
| **config**          | [**ConnectorAuthConfig**](ConnectorAuthConfig.md) |                                                        | [optional] |
| **name**            | **str**                                           | The name of the connector.                             | [optional] |
| **status**          | **str**                                           | The new status of the connector.                       | [optional] |
| **icon**            | **bytearray**                                     | The icon of the connector as base64 encoded string.    | [optional] |
| **website_uri**     | **str**                                           | The URL of the website for the connector.              | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.patch_connector_request import PatchConnectorRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PatchConnectorRequest from a JSON string
patch_connector_request_instance = PatchConnectorRequest.from_json(json)
# print the JSON string representation of the object
print PatchConnectorRequest.to_json()

# convert the object into a dict
patch_connector_request_dict = patch_connector_request_instance.to_dict()
# create an instance of PatchConnectorRequest from a dict
patch_connector_request_form_dict = patch_connector_request.from_dict(patch_connector_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
