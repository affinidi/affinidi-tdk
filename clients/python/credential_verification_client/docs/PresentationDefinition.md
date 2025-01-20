# PresentationDefinition

Presentation definition

## Properties

| Name                        | Type                                                        | Description        | Notes      |
| --------------------------- | ----------------------------------------------------------- | ------------------ | ---------- |
| **id**                      | **str**                                                     | Definition id      |
| **name**                    | **str**                                                     | Definition name    | [optional] |
| **purpose**                 | **str**                                                     | Definition purpose | [optional] |
| **format**                  | [**Format**](Format.md)                                     |                    | [optional] |
| **submission_requirements** | [**List[SubmissionRequirement]**](SubmissionRequirement.md) |                    | [optional] |
| **input_descriptors**       | [**List[InputDescriptor]**](InputDescriptor.md)             |                    |
| **frame**                   | **Dict[str, object]**                                       | Dynamic model      | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.presentation_definition import PresentationDefinition

# TODO update the JSON string below
json = "{}"
# create an instance of PresentationDefinition from a JSON string
presentation_definition_instance = PresentationDefinition.from_json(json)
# print the JSON string representation of the object
print PresentationDefinition.to_json()

# convert the object into a dict
presentation_definition_dict = presentation_definition_instance.to_dict()
# create an instance of PresentationDefinition from a dict
presentation_definition_from_dict = PresentationDefinition.from_dict(presentation_definition_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
