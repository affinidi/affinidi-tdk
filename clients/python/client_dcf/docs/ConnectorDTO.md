# ConnectorDTO

An object containing required information to define a connector.

## Properties

| Name                | Type                                              | Description                                                | Notes      |
| ------------------- | ------------------------------------------------- | ---------------------------------------------------------- | ---------- |
| **id**              | **str**                                           | The ID of the connector.                                   |
| **name**            | **str**                                           | The name of the connector.                                 |
| **created_at**      | **datetime**                                      | The date and time at which the connector has been created. | [optional] |
| **data_source_ids** | **List[str]**                                     | A list of IDs of related data sources.                     |
| **config**          | [**ConnectorAuthConfig**](ConnectorAuthConfig.md) |                                                            |
| **status**          | **str**                                           | The state in which the connector is currently.             | [optional] |
| **icon**            | **bytearray**                                     | The icon of the connector as base64 encoded string.        |
| **website_uri**     | **str**                                           | The URL of the website for the connector.                  | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connector_dto import ConnectorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectorDTO from a JSON string
connector_dto_instance = ConnectorDTO.from_json(json)
# print the JSON string representation of the object
print ConnectorDTO.to_json()

# convert the object into a dict
connector_dto_dict = connector_dto_instance.to_dict()
# create an instance of ConnectorDTO from a dict
connector_dto_form_dict = connector_dto.from_dict(connector_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
