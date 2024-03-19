# AuthConfigInfoPatchDtoExchangeTokenTemplate

Template for defining the requirements of authentication token exchange with the external data source.

## Properties

| Name           | Type                                                                                                                                  | Description                                                                      | Notes      |
| -------------- | ------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | ---------- |
| **options**    | **Dict[str, object]**                                                                                                                 | Defines all request and auth headers which are common for each operation.s       | [optional] |
| **operations** | [**List[AuthConfigInfoPatchDtoExchangeTokenTemplateOperationsInner]**](AuthConfigInfoPatchDtoExchangeTokenTemplateOperationsInner.md) | A list of REST operations to exchange authentication token with the data source. | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_patch_dto_exchange_token_template import AuthConfigInfoPatchDtoExchangeTokenTemplate

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoPatchDtoExchangeTokenTemplate from a JSON string
auth_config_info_patch_dto_exchange_token_template_instance = AuthConfigInfoPatchDtoExchangeTokenTemplate.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoPatchDtoExchangeTokenTemplate.to_json()

# convert the object into a dict
auth_config_info_patch_dto_exchange_token_template_dict = auth_config_info_patch_dto_exchange_token_template_instance.to_dict()
# create an instance of AuthConfigInfoPatchDtoExchangeTokenTemplate from a dict
auth_config_info_patch_dto_exchange_token_template_form_dict = auth_config_info_patch_dto_exchange_token_template.from_dict(auth_config_info_patch_dto_exchange_token_template_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
