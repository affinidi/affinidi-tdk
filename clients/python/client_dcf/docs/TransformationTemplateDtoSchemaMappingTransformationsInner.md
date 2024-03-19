# TransformationTemplateDtoSchemaMappingTransformationsInner

## Properties

| Name             | Type          | Description | Notes      |
| ---------------- | ------------- | ----------- | ---------- |
| **name**         | **str**       |             |
| **fields**       | **List[str]** |             | [optional] |
| **result_field** | **str**       |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.transformation_template_dto_schema_mapping_transformations_inner import TransformationTemplateDtoSchemaMappingTransformationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of TransformationTemplateDtoSchemaMappingTransformationsInner from a JSON string
transformation_template_dto_schema_mapping_transformations_inner_instance = TransformationTemplateDtoSchemaMappingTransformationsInner.from_json(json)
# print the JSON string representation of the object
print TransformationTemplateDtoSchemaMappingTransformationsInner.to_json()

# convert the object into a dict
transformation_template_dto_schema_mapping_transformations_inner_dict = transformation_template_dto_schema_mapping_transformations_inner_instance.to_dict()
# create an instance of TransformationTemplateDtoSchemaMappingTransformationsInner from a dict
transformation_template_dto_schema_mapping_transformations_inner_form_dict = transformation_template_dto_schema_mapping_transformations_inner.from_dict(transformation_template_dto_schema_mapping_transformations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
