# BasicConnectorDTO

A basic connector information needed for mapping with a common schema

## Properties

| Name             | Type    | Description                                         | Notes      |
| ---------------- | ------- | --------------------------------------------------- | ---------- |
| **name**         | **str** | The name of the connector.                          |
| **website**      | **str** | The website of the connector.                       |
| **icon**         | **str** | The icon of the connector as base64 encoded string. | [optional] |
| **connector_id** | **str** | The ID of the connector.                            |

## Example

```python
from affinidi_tdk_client_dcf.models.basic_connector_dto import BasicConnectorDTO

# TODO update the JSON string below
json = "{}"
# create an instance of BasicConnectorDTO from a JSON string
basic_connector_dto_instance = BasicConnectorDTO.from_json(json)
# print the JSON string representation of the object
print BasicConnectorDTO.to_json()

# convert the object into a dict
basic_connector_dto_dict = basic_connector_dto_instance.to_dict()
# create an instance of BasicConnectorDTO from a dict
basic_connector_dto_form_dict = basic_connector_dto.from_dict(basic_connector_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
