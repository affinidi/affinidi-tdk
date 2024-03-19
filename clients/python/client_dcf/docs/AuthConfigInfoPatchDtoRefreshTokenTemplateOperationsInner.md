# AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner

Describes the configuration for a single REST operation retrieving an exchange token from the data source.

## Properties

| Name          | Type                                                                                                                                            | Description                                                                         | Notes      |
| ------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ---------- |
| **template**  | **Dict[str, object]**                                                                                                                           | An object which defines the REST operation as well as the URL to issue the request. | [optional] |
| **functions** | [**AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInnerFunctions**](AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInnerFunctions.md) |                                                                                     | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_patch_dto_refresh_token_template_operations_inner import AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner from a JSON string
auth_config_info_patch_dto_refresh_token_template_operations_inner_instance = AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner.to_json()

# convert the object into a dict
auth_config_info_patch_dto_refresh_token_template_operations_inner_dict = auth_config_info_patch_dto_refresh_token_template_operations_inner_instance.to_dict()
# create an instance of AuthConfigInfoPatchDtoRefreshTokenTemplateOperationsInner from a dict
auth_config_info_patch_dto_refresh_token_template_operations_inner_form_dict = auth_config_info_patch_dto_refresh_token_template_operations_inner.from_dict(auth_config_info_patch_dto_refresh_token_template_operations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
