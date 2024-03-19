# ConnectorAuthConfig

The configuration object for the Connector containing builder's credentials and customs fields.

## Properties

| Name              | Type                                          | Description                                                                                                                                                                                       | Notes      |
| ----------------- | --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **client_id**     | **str**                                       | The client ID acquired while registering at a third-party service. Might be named differently at each individual service. Reflect these differences within the &#x60;customFields&#x60; property. |
| **custom_fields** | [**ConfigTemplateDto**](ConfigTemplateDto.md) |                                                                                                                                                                                                   | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.connector_auth_config import ConnectorAuthConfig

# TODO update the JSON string below
json = "{}"
# create an instance of ConnectorAuthConfig from a JSON string
connector_auth_config_instance = ConnectorAuthConfig.from_json(json)
# print the JSON string representation of the object
print ConnectorAuthConfig.to_json()

# convert the object into a dict
connector_auth_config_dict = connector_auth_config_instance.to_dict()
# create an instance of ConnectorAuthConfig from a dict
connector_auth_config_form_dict = connector_auth_config.from_dict(connector_auth_config_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
