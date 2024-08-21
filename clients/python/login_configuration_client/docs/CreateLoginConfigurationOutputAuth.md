# CreateLoginConfigurationOutputAuth

OIDC Auth Credentials

## Properties

| Name              | Type    | Description             | Notes      |
| ----------------- | ------- | ----------------------- | ---------- |
| **client_id**     | **str** | OAuth 2.0 Client ID     |
| **client_secret** | **str** | OAuth 2.0 Client Secret | [optional] |
| **scope**         | **str** | OAuth 2.0 Client Scope  | [optional] |
| **issuer**        | **str** | Issuer URL              | [optional] |

## Example

```python
from affinidi_tdk_login_configuration_client.models.create_login_configuration_output_auth import CreateLoginConfigurationOutputAuth

# TODO update the JSON string below
json = "{}"
# create an instance of CreateLoginConfigurationOutputAuth from a JSON string
create_login_configuration_output_auth_instance = CreateLoginConfigurationOutputAuth.from_json(json)
# print the JSON string representation of the object
print CreateLoginConfigurationOutputAuth.to_json()

# convert the object into a dict
create_login_configuration_output_auth_dict = create_login_configuration_output_auth_instance.to_dict()
# create an instance of CreateLoginConfigurationOutputAuth from a dict
create_login_configuration_output_auth_from_dict = CreateLoginConfigurationOutputAuth.from_dict(create_login_configuration_output_auth_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
