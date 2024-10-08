# CreateLoginConfigurationOutput

## Properties

| Name                          | Type                                                                                    | Description                                                                                                                                                                                                     | Notes      |
| ----------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **ari**                       | **str**                                                                                 | Configuration ari                                                                                                                                                                                               |
| **project_id**                | **str**                                                                                 | Project id                                                                                                                                                                                                      |
| **configuration_id**          | **str**                                                                                 | Configuration id                                                                                                                                                                                                | [optional] |
| **name**                      | **str**                                                                                 | User defined login configuration name                                                                                                                                                                           |
| **auth**                      | [**CreateLoginConfigurationOutputAuth**](CreateLoginConfigurationOutputAuth.md)         |                                                                                                                                                                                                                 |
| **redirect_uris**             | **List[str]**                                                                           | OAuth 2.0 Redirect URIs                                                                                                                                                                                         |
| **client_metadata**           | [**LoginConfigurationClientMetadataOutput**](LoginConfigurationClientMetadataOutput.md) |                                                                                                                                                                                                                 |
| **creation_date**             | **str**                                                                                 | OAuth 2.0 Client Creation Date                                                                                                                                                                                  |
| **post_logout_redirect_uris** | **List[str]**                                                                           | Post Logout Redirect URIs, Used to redirect the user&#39;s browser to a specified URL after the logout process is complete. Must match the domain, port, scheme of at least one of the registered redirect URIs | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.create_login_configuration_output import CreateLoginConfigurationOutput

# TODO update the JSON string below
json = "{}"
# create an instance of CreateLoginConfigurationOutput from a JSON string
create_login_configuration_output_instance = CreateLoginConfigurationOutput.from_json(json)
# print the JSON string representation of the object
print CreateLoginConfigurationOutput.to_json()

# convert the object into a dict
create_login_configuration_output_dict = create_login_configuration_output_instance.to_dict()
# create an instance of CreateLoginConfigurationOutput from a dict
create_login_configuration_output_from_dict = CreateLoginConfigurationOutput.from_dict(create_login_configuration_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
