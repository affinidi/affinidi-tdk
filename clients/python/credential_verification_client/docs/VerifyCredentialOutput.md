# VerifyCredentialOutput

Response model of /verify-vcs

## Properties

| Name         | Type          | Description                           | Notes |
| ------------ | ------------- | ------------------------------------- | ----- |
| **errors**   | **List[str]** | Errors of the VCs failed verification |
| **is_valid** | **bool**      | Verification result                   |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_credential_output import VerifyCredentialOutput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyCredentialOutput from a JSON string
verify_credential_output_instance = VerifyCredentialOutput.from_json(json)
# print the JSON string representation of the object
print VerifyCredentialOutput.to_json()

# convert the object into a dict
verify_credential_output_dict = verify_credential_output_instance.to_dict()
# create an instance of VerifyCredentialOutput from a dict
verify_credential_output_form_dict = verify_credential_output.from_dict(verify_credential_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
