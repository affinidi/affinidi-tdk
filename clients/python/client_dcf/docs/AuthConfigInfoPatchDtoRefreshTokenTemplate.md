# AuthConfigInfoPatchDtoRefreshTokenTemplate

Template for defining the requirements of renewing the authentication token with the external data source.

## Properties

| Name           | Type                                                                                                                                | Description                                                                   | Notes      |
| -------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ---------- |
| **options**    | **object**                                                                                                                          | Defines all request and auth headers which are common for each operation.     | [optional] |
| **operations** | [**List[AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner]**](AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner.md) | A list of REST operations to retrieve an exchange token from the data source. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_patch_dto_refresh_token_template import AuthConfigInfoPatchDtoRefreshTokenTemplate

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoPatchDtoRefreshTokenTemplate from a JSON string
auth_config_info_patch_dto_refresh_token_template_instance = AuthConfigInfoPatchDtoRefreshTokenTemplate.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoPatchDtoRefreshTokenTemplate.to_json()

# convert the object into a dict
auth_config_info_patch_dto_refresh_token_template_dict = auth_config_info_patch_dto_refresh_token_template_instance.to_dict()
# create an instance of AuthConfigInfoPatchDtoRefreshTokenTemplate from a dict
auth_config_info_patch_dto_refresh_token_template_form_dict = auth_config_info_patch_dto_refresh_token_template.from_dict(auth_config_info_patch_dto_refresh_token_template_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
