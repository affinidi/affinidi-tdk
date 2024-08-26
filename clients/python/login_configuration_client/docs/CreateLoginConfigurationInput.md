# CreateLoginConfigurationInput

## Properties

| Name                           | Type                                                                                  | Description                                                                                                                                                                                                     | Notes                        |
| ------------------------------ | ------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **name**                       | **str**                                                                               | User defined login configuration name                                                                                                                                                                           |
| **description**                | **str**                                                                               |                                                                                                                                                                                                                 | [optional]                   |
| **redirect_uris**              | **List[str]**                                                                         | OAuth 2.0 Redirect URIs                                                                                                                                                                                         |
| **post_logout_redirect_uris**  | **List[str]**                                                                         | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional]                   |
| **vp_definition**              | **str**                                                                               | VP definition in JSON stringify format                                                                                                                                                                          | [optional]                   |
| **presentation_definition**    | **object**                                                                            | Presentation Definition                                                                                                                                                                                         | [optional]                   |
| **id_token_mapping**           | [**IdTokenMapping**](IdTokenMapping.md)                                               |                                                                                                                                                                                                                 | [optional]                   |
| **client_metadata**            | [**LoginConfigurationClientMetadataInput**](LoginConfigurationClientMetadataInput.md) |                                                                                                                                                                                                                 | [optional]                   |
| **claim_format**               | **str**                                                                               | ID token claims output format. Default is array.                                                                                                                                                                | [optional]                   |
| **fail_on_mapping_conflict**   | **bool**                                                                              | Interrupts login process if duplications of data fields names will be found                                                                                                                                     | [optional] [default to True] |
| **scope**                      | **str**                                                                               | List of groups separated by space                                                                                                                                                                               | [optional]                   |
| **token_endpoint_auth_method** | [**TokenEndpointAuthMethod**](TokenEndpointAuthMethod.md)                             |                                                                                                                                                                                                                 | [optional]                   |

## Example

```python
from affinidi_tdk_login_configuration_client.models.create_login_configuration_input import CreateLoginConfigurationInput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateLoginConfigurationInput from a JSON string
create_login_configuration_input_instance = CreateLoginConfigurationInput.from_json(json)
# print the JSON string representation of the object
print CreateLoginConfigurationInput.to_json()

# convert the object into a dict
create_login_configuration_input_dict = create_login_configuration_input_instance.to_dict()
# create an instance of CreateLoginConfigurationInput from a dict
create_login_configuration_input_from_dict = CreateLoginConfigurationInput.from_dict(create_login_configuration_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
