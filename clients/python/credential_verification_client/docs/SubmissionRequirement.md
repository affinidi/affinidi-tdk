# SubmissionRequirement

## Properties

| Name            | Type                                                        | Description | Notes      |
| --------------- | ----------------------------------------------------------- | ----------- | ---------- |
| **name**        | **str**                                                     |             | [optional] |
| **purpose**     | **str**                                                     |             | [optional] |
| **rule**        | **str**                                                     |             |
| **count**       | **int**                                                     |             | [optional] |
| **min**         | **int**                                                     |             | [optional] |
| **max**         | **int**                                                     |             | [optional] |
| **var_from**    | **str**                                                     |             | [optional] |
| **from_nested** | [**List[SubmissionRequirement]**](SubmissionRequirement.md) |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.submission_requirement import SubmissionRequirement

# TODO update the JSON string below
json = "{}"
# create an instance of SubmissionRequirement from a JSON string
submission_requirement_instance = SubmissionRequirement.from_json(json)
# print the JSON string representation of the object
print SubmissionRequirement.to_json()

# convert the object into a dict
submission_requirement_dict = submission_requirement_instance.to_dict()
# create an instance of SubmissionRequirement from a dict
submission_requirement_form_dict = submission_requirement.from_dict(submission_requirement_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
