# VerifyCredentialShareResponseOutput

Response model of /verify-share-response

## Properties

| Name                     | Type             | Description                       | Notes |
| ------------------------ | ---------------- | --------------------------------- | ----- |
| **jti**                  | **str**          | JWT ID                            |
| **errors**               | **List[str]**    | Errors of the failed verification |
| **issuer**               | **str**          | Issuer of VCs                     |
| **is_valid**             | **bool**         | Verification result               |
| **supplied_credentials** | **List[object]** | Supplied credentials              |

## Example

```python
from affinidi_tdk_client_ver.models.verify_credential_share_response_output import VerifyCredentialShareResponseOutput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyCredentialShareResponseOutput from a JSON string
verify_credential_share_response_output_instance = VerifyCredentialShareResponseOutput.from_json(json)
# print the JSON string representation of the object
print VerifyCredentialShareResponseOutput.to_json()

# convert the object into a dict
verify_credential_share_response_output_dict = verify_credential_share_response_output_instance.to_dict()
# create an instance of VerifyCredentialShareResponseOutput from a dict
verify_credential_share_response_output_form_dict = verify_credential_share_response_output.from_dict(verify_credential_share_response_output_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
