# VerifyCredentialV2Input

Request model of /v2/verify-vcs

## Properties

| Name                       | Type                  | Description        | Notes      |
| -------------------------- | --------------------- | ------------------ | ---------- |
| **verifiable_credentials** | **List[str]**         | List of VC strings |
| **issuer_did_document**    | **Dict[str, object]** | Dynamic model      | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_credential_v2_input import VerifyCredentialV2Input

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyCredentialV2Input from a JSON string
verify_credential_v2_input_instance = VerifyCredentialV2Input.from_json(json)
# print the JSON string representation of the object
print VerifyCredentialV2Input.to_json()

# convert the object into a dict
verify_credential_v2_input_dict = verify_credential_v2_input_instance.to_dict()
# create an instance of VerifyCredentialV2Input from a dict
verify_credential_v2_input_from_dict = VerifyCredentialV2Input.from_dict(verify_credential_v2_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
