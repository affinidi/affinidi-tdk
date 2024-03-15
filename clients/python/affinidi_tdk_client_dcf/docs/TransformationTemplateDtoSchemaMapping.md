# TransformationTemplateDtoSchemaMapping

## Properties

| Name                | Type                                                                                                                                  | Description | Notes |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ----- |
| **transformations** | [**List[TransformationTemplateDtoSchemaMappingTransformationsInner]**](TransformationTemplateDtoSchemaMappingTransformationsInner.md) |             |
| **aggregations**    | [**List[TransformationTemplateDtoSchemaMappingAggregationsInner]**](TransformationTemplateDtoSchemaMappingAggregationsInner.md)       |             |

## Example

```python
from affinidi_tdk_client_dcf.models.transformation_template_dto_schema_mapping import TransformationTemplateDtoSchemaMapping

# TODO update the JSON string below
json = "{}"
# create an instance of TransformationTemplateDtoSchemaMapping from a JSON string
transformation_template_dto_schema_mapping_instance = TransformationTemplateDtoSchemaMapping.from_json(json)
# print the JSON string representation of the object
print TransformationTemplateDtoSchemaMapping.to_json()

# convert the object into a dict
transformation_template_dto_schema_mapping_dict = transformation_template_dto_schema_mapping_instance.to_dict()
# create an instance of TransformationTemplateDtoSchemaMapping from a dict
transformation_template_dto_schema_mapping_form_dict = transformation_template_dto_schema_mapping.from_dict(transformation_template_dto_schema_mapping_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
