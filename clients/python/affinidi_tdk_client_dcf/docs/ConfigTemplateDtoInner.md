# ConfigTemplateDtoInner

## Properties

| Name            | Type    | Description                                                                                          | Notes      |
| --------------- | ------- | ---------------------------------------------------------------------------------------------------- | ---------- |
| **key**         | **str** | The placeholder name from any template within the postDataSourceConfig payload.                      |
| **value**       | **str** | The replacement field name as required by the data connector for the postDataSourceConfig templates. |
| **description** | **str** | A descriptive comment giving context for the need of this custom field.                              | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.config_template_dto_inner import ConfigTemplateDtoInner

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigTemplateDtoInner from a JSON string
config_template_dto_inner_instance = ConfigTemplateDtoInner.from_json(json)
# print the JSON string representation of the object
print ConfigTemplateDtoInner.to_json()

# convert the object into a dict
config_template_dto_inner_dict = config_template_dto_inner_instance.to_dict()
# create an instance of ConfigTemplateDtoInner from a dict
config_template_dto_inner_form_dict = config_template_dto_inner.from_dict(config_template_dto_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
