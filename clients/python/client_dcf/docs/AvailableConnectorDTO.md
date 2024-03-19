# AvailableConnectorDTO

Defines the consumer facing information of a connector.

## Properties

| Name            | Type          | Description                                         | Notes      |
| --------------- | ------------- | --------------------------------------------------- | ---------- |
| **id**          | **str**       | The ID of the connector.                            |
| **name**        | **str**       | The name of the connector.                          |
| **icon**        | **bytearray** | The icon of the connector as base64 encoded string. |
| **website_uri** | **str**       | The URL of the website for the connector.           | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.available_connector_dto import AvailableConnectorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of AvailableConnectorDTO from a JSON string
available_connector_dto_instance = AvailableConnectorDTO.from_json(json)
# print the JSON string representation of the object
print AvailableConnectorDTO.to_json()

# convert the object into a dict
available_connector_dto_dict = available_connector_dto_instance.to_dict()
# create an instance of AvailableConnectorDTO from a dict
available_connector_dto_form_dict = available_connector_dto.from_dict(available_connector_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
