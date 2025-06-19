# VerifyPresentationOutput

Response model of /verify-vp

## Properties

| Name         | Type          | Description               | Notes |
| ------------ | ------------- | ------------------------- | ----- |
| **errors**   | **List[str]** | Error of the verification |
| **is_valid** | **bool**      | Verification result       |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_presentation_output import VerifyPresentationOutput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyPresentationOutput from a JSON string
verify_presentation_output_instance = VerifyPresentationOutput.from_json(json)
# print the JSON string representation of the object
print VerifyPresentationOutput.to_json()

# convert the object into a dict
verify_presentation_output_dict = verify_presentation_output_instance.to_dict()
# create an instance of VerifyPresentationOutput from a dict
verify_presentation_output_from_dict = VerifyPresentationOutput.from_dict(verify_presentation_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
