# TransformationTemplateDto

## Properties

| Name                  | Type                                                                                    | Description | Notes |
| --------------------- | --------------------------------------------------------------------------------------- | ----------- | ----- |
| **endpoint**          | **str**                                                                                 |             |
| **target_schema_url** | **str**                                                                                 |             |
| **schema_mapping**    | [**TransformationTemplateDtoSchemaMapping**](TransformationTemplateDtoSchemaMapping.md) |             |

## Example

```python
from affinidi_tdk_client_dcf.models.transformation_template_dto import TransformationTemplateDto

# TODO update the JSON string below
json = "{}"
# create an instance of TransformationTemplateDto from a JSON string
transformation_template_dto_instance = TransformationTemplateDto.from_json(json)
# print the JSON string representation of the object
print TransformationTemplateDto.to_json()

# convert the object into a dict
transformation_template_dto_dict = transformation_template_dto_instance.to_dict()
# create an instance of TransformationTemplateDto from a dict
transformation_template_dto_form_dict = transformation_template_dto.from_dict(transformation_template_dto_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
