# VerifyCredentialShareResponseInput

Request model of /verify-share-response

## Properties

| Name                                | Type     | Description                               | Notes      |
| ----------------------------------- | -------- | ----------------------------------------- | ---------- |
| **credential_share_request_token**  | **str**  | Token of the credential share request     | [optional] |
| **credential_share_response_token** | **str**  | Token of the credential share response    |
| **is_holder_must_be_subject**       | **bool** | Defines if holder did should be a subject | [optional] |

## Example

```python
from affinidi_tdk_client_ver.models.verify_credential_share_response_input import VerifyCredentialShareResponseInput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyCredentialShareResponseInput from a JSON string
verify_credential_share_response_input_instance = VerifyCredentialShareResponseInput.from_json(json)
# print the JSON string representation of the object
print VerifyCredentialShareResponseInput.to_json()

# convert the object into a dict
verify_credential_share_response_input_dict = verify_credential_share_response_input_instance.to_dict()
# create an instance of VerifyCredentialShareResponseInput from a dict
verify_credential_share_response_input_form_dict = verify_credential_share_response_input.from_dict(verify_credential_share_response_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
