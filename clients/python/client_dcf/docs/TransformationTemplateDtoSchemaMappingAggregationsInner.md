# TransformationTemplateDtoSchemaMappingAggregationsInner

## Properties

| Name             | Type          | Description | Notes      |
| ---------------- | ------------- | ----------- | ---------- |
| **name**         | **str**       |             |
| **fields**       | **List[str]** |             | [optional] |
| **result_field** | **str**       |             | [optional] |

## Example

```python
from affinidi_tdk_client_dcf.models.transformation_template_dto_schema_mapping_aggregations_inner import TransformationTemplateDtoSchemaMappingAggregationsInner

# TODO update the JSON string below
json = "{}"
# create an instance of TransformationTemplateDtoSchemaMappingAggregationsInner from a JSON string
transformation_template_dto_schema_mapping_aggregations_inner_instance = TransformationTemplateDtoSchemaMappingAggregationsInner.from_json(json)
# print the JSON string representation of the object
print TransformationTemplateDtoSchemaMappingAggregationsInner.to_json()

# convert the object into a dict
transformation_template_dto_schema_mapping_aggregations_inner_dict = transformation_template_dto_schema_mapping_aggregations_inner_instance.to_dict()
# create an instance of TransformationTemplateDtoSchemaMappingAggregationsInner from a dict
transformation_template_dto_schema_mapping_aggregations_inner_form_dict = transformation_template_dto_schema_mapping_aggregations_inner.from_dict(transformation_template_dto_schema_mapping_aggregations_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
