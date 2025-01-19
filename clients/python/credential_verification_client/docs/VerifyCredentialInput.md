# VerifyCredentialInput

Request model of /verify-vcs

## Properties

| Name                       | Type                                        | Description   | Notes      |
| -------------------------- | ------------------------------------------- | ------------- | ---------- |
| **verifiable_credentials** | [**List[W3cCredential]**](W3cCredential.md) | List of VCs   |
| **issuer_did_document**    | **Dict[str, object]**                       | Dynamic model | [optional] |

## Example

```python
from affinidi_tdk_credential_verification_client.models.verify_credential_input import VerifyCredentialInput

# TODO update the JSON string below
json = "{}"
# create an instance of VerifyCredentialInput from a JSON string
verify_credential_input_instance = VerifyCredentialInput.from_json(json)
# print the JSON string representation of the object
print VerifyCredentialInput.to_json()

# convert the object into a dict
verify_credential_input_dict = verify_credential_input_instance.to_dict()
# create an instance of VerifyCredentialInput from a dict
verify_credential_input_from_dict = VerifyCredentialInput.from_dict(verify_credential_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
