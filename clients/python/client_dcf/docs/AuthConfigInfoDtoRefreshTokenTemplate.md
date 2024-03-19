# AuthConfigInfoDtoRefreshTokenTemplate

Template for defining the requirements of renewing the authentication token with the external data source.

## Properties

| Name           | Type                                                                                                                      | Description                                                                   | Notes |
| -------------- | ------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----- |
| **options**    | **object**                                                                                                                | Defines all request and auth headers which are common for each operation.     |
| **operations** | [**List[AuthConfigInfoDtoRefreshTokenTemplateOperationsInner]**](AuthConfigInfoDtoRefreshTokenTemplateOperationsInner.md) | A list of REST operations to retrieve an exchange token from the data source. |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_dto_refresh_token_template import AuthConfigInfoDtoRefreshTokenTemplate

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoDtoRefreshTokenTemplate from a JSON string
auth_config_info_dto_refresh_token_template_instance = AuthConfigInfoDtoRefreshTokenTemplate.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoDtoRefreshTokenTemplate.to_json()

# convert the object into a dict
auth_config_info_dto_refresh_token_template_dict = auth_config_info_dto_refresh_token_template_instance.to_dict()
# create an instance of AuthConfigInfoDtoRefreshTokenTemplate from a dict
auth_config_info_dto_refresh_token_template_form_dict = auth_config_info_dto_refresh_token_template.from_dict(auth_config_info_dto_refresh_token_template_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
