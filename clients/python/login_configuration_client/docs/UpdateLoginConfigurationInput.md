# UpdateLoginConfigurationInput

## Properties

| Name                           | Type                                                                                  | Description                                                                                                                                                                                                     | Notes      |
| ------------------------------ | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**                       | **str**                                                                               | User defined login configuration name                                                                                                                                                                           | [optional] |
| **redirect_uris**              | **List[str]**                                                                         | OAuth 2.0 Redirect URIs                                                                                                                                                                                         | [optional] |
| **post_logout_redirect_uris**  | **List[str]**                                                                         | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] |
| **client_secret**              | **str**                                                                               | OAuth2 client secret                                                                                                                                                                                            | [optional] |
| **vp_definition**              | **str**                                                                               | VP definition in JSON stringify format                                                                                                                                                                          | [optional] |
| **presentation_definition**    | **object**                                                                            | Presentation Definition                                                                                                                                                                                         | [optional] |
| **id_token_mapping**           | [**List[IdTokenMappingItem]**](IdTokenMappingItem.md)                                 | Fields name/path mapping between the vp_token and the id_token                                                                                                                                                  | [optional] |
| **client_metadata**            | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                                 | [optional] |
| **token_endpoint_auth_method** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                                 | [optional] |
| **fail_on_mapping_conflict**   | **bool**                                                                              | Interrupts login process if duplications of data fields names will be found                                                                                                                                     | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.update_login_configuration_input import UpdateLoginConfigurationInput

# TODO update the JSON string below
json = "{}"
# create an instance of UpdateLoginConfigurationInput from a JSON string
update_login_configuration_input_instance = UpdateLoginConfigurationInput.from_json(json)
# print the JSON string representation of the object
print UpdateLoginConfigurationInput.to_json()

# convert the object into a dict
update_login_configuration_input_dict = update_login_configuration_input_instance.to_dict()
# create an instance of UpdateLoginConfigurationInput from a dict
update_login_configuration_input_from_dict = UpdateLoginConfigurationInput.from_dict(update_login_configuration_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
