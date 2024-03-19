# CreateTransformationTemplateRequest

Request payload for creating of a transformation template for a given data source.

## Properties

| Name                        | Type                                                          | Description | Notes |
| --------------------------- | ------------------------------------------------------------- | ----------- | ----- |
| **transformation_template** | [**TransformationTemplateDto**](TransformationTemplateDto.md) |             |

## Example

```python
from affinidi_tdk_client_dcf.models.create_transformation_template_request import CreateTransformationTemplateRequest

# TODO update the JSON string below
json = "{}"
# create an instance of CreateTransformationTemplateRequest from a JSON string
create_transformation_template_request_instance = CreateTransformationTemplateRequest.from_json(json)
# print the JSON string representation of the object
print CreateTransformationTemplateRequest.to_json()

# convert the object into a dict
create_transformation_template_request_dict = create_transformation_template_request_instance.to_dict()
# create an instance of CreateTransformationTemplateRequest from a dict
create_transformation_template_request_form_dict = create_transformation_template_request.from_dict(create_transformation_template_request_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
