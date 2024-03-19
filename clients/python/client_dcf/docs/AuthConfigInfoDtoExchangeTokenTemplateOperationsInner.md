# AuthConfigInfoDtoExchangeTokenTemplateOperationsInner

Describes the configuration for a single REST operation for authenticating with the data source.

## Properties

| Name          | Type                                                                                                                                    | Description                                                                         | Notes |
| ------------- | --------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----- |
| **template**  | **Dict[str, object]**                                                                                                                   | An object which defines the REST operation as well as the URL to issue the request. |
| **functions** | [**AuthConfigInfoDtoExchangeTokenTemplateOperationsInnerFunctions**](AuthConfigInfoDtoExchangeTokenTemplateOperationsInnerFunctions.md) |                                                                                     |

## Example

```python
from affinidi_tdk_client_dcf.models.auth_config_info_dto_exchange_token_template_operations_inner import AuthConfigInfoDtoExchangeTokenTemplateOperationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of AuthConfigInfoDtoExchangeTokenTemplateOperationsInner from a JSON string
auth_config_info_dto_exchange_token_template_operations_inner_instance = AuthConfigInfoDtoExchangeTokenTemplateOperationsInner.from_json(json)
# print the JSON string representation of the object
print AuthConfigInfoDtoExchangeTokenTemplateOperationsInner.to_json()

# convert the object into a dict
auth_config_info_dto_exchange_token_template_operations_inner_dict = auth_config_info_dto_exchange_token_template_operations_inner_instance.to_dict()
# create an instance of AuthConfigInfoDtoExchangeTokenTemplateOperationsInner from a dict
auth_config_info_dto_exchange_token_template_operations_inner_form_dict = auth_config_info_dto_exchange_token_template_operations_inner.from_dict(auth_config_info_dto_exchange_token_template_operations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
