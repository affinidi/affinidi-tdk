# ConfigTemplateDto

A list to define templates fields which need to have specific names for the Connector. For example `clientSecret` needs to be named `secret` for the Deezer connector.

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```python
from affinidi_tdk_client_dcf.models.config_template_dto import ConfigTemplateDto

# TODO update the JSON string below
json = "{}"
# create an instance of ConfigTemplateDto from a JSON string
config_template_dto_instance = ConfigTemplateDto.from_json(json)
# print the JSON string representation of the object
print ConfigTemplateDto.to_json()

# convert the object into a dict
config_template_dto_dict = config_template_dto_instance.to_dict()
# create an instance of ConfigTemplateDto from a dict
config_template_dto_form_dict = config_template_dto.from_dict(config_template_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
