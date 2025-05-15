# VerifyPresentationInput

Request model of /verify-vp

## Properties

| Name                        | Type       | Description | Notes      |
| --------------------------- | ---------- | ----------- | ---------- |
| **verifiable_presentation** | **object** |             | [optional] |
| **signed_presentation**     | **object** |             | [optional] |
| **presentation_definition** | **object** |             | [optional] |
| **presentation_submission** | **object** |             | [optional] |
| **challenge**               | **str**    |             | [optional] |

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
verify_presentation_input_from_dict = VerifyPresentationInput.from_dict(verify_presentation_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
