# AuthConfigInfoDtoRefreshTokenTemplateOperationsInner

Describes the configuration for a single REST operation retrieving an exchange token from the data source.

## Properties

| Name          | Type                                                                                                                                  | Description                                                                         | Notes |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----- |
| **template**  | **Dict[str, object]**                                                                                                                 | An object which defines the REST operation as well as the URL to issue the request. |
| **functions** | [**AuthConfigInfoDtoRefreshTokenTemplateOperationsInnerFunctions**](AuthConfigInfoDtoRefreshTokenTemplateOperationsInnerFunctions.md) |                                                                                     |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_dto_refresh_token_template_operations_inner import AuthConfigInfoDtoRefreshTokenTemplateOperationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoDtoRefreshTokenTemplateOperationsInner from a JSON string
auth_config_info_dto_refresh_token_template_operations_inner_instance = AuthConfigInfoDtoRefreshTokenTemplateOperationsInner.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoDtoRefreshTokenTemplateOperationsInner.to_json()

# convert the object into a dict
auth_config_info_dto_refresh_token_template_operations_inner_dict = auth_config_info_dto_refresh_token_template_operations_inner_instance.to_dict()
# create an instance of AuthConfigInfoDtoRefreshTokenTemplateOperationsInner from a dict
auth_config_info_dto_refresh_token_template_operations_inner_form_dict = auth_config_info_dto_refresh_token_template_operations_inner.from_dict(auth_config_info_dto_refresh_token_template_operations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
