# VerifyPresentationInput

Request model of /verify-vp

## Properties

| Name                        | Type                                                    | Description | Notes      |
| --------------------------- | ------------------------------------------------------- | ----------- | ---------- |
| **verifiable_presentation** | [**W3cPresentation**](W3cPresentation.md)               |             | [optional] |
| **signed_presentation**     | [**W3cPresentation**](W3cPresentation.md)               |             | [optional] |
| **presentation_definition** | [**PresentationDefinition**](PresentationDefinition.md) |             | [optional] |
| **presentation_submission** | [**PresentationSubmission**](PresentationSubmission.md) |             | [optional] |
| **challenge**               | **str**                                                 |             | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_presentation_input import VerifyPresentationInput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyPresentationInput from a JSON string
verify_presentation_input_instance = VerifyPresentationInput.from_json(json)
# print the JSON string representation of the object
print VerifyPresentationInput.to_json()

# convert the object into a dict
verify_presentation_input_dict = verify_presentation_input_instance.to_dict()
# create an instance of VerifyPresentationInput from a dict
verify_presentation_input_form_dict = verify_presentation_input.from_dict(verify_presentation_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
