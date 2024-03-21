# PresentationSubmission

## Properties

| Name               | Type                                  | Description | Notes |
| ------------------ | ------------------------------------- | ----------- | ----- |
| **id**             | **str**                               |             |
| **definition_id**  | **str**                               |             |
| **descriptor_map** | [**List[Descriptor]**](Descriptor.md) |             |

## Example

```python
from affinidi_tdk_client_ver.models.presentation_submission import PresentationSubmission

# TODO update the JSON string below
json = "{}"
# create an instance of PresentationSubmission from a JSON string
presentation_submission_instance = PresentationSubmission.from_json(json)
# print the JSON string representation of the object
print PresentationSubmission.to_json()

# convert the object into a dict
presentation_submission_dict = presentation_submission_instance.to_dict()
# create an instance of PresentationSubmission from a dict
presentation_submission_form_dict = presentation_submission.from_dict(presentation_submission_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
