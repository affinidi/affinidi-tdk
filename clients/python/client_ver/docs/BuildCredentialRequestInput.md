# BuildCredentialRequestInput

Request model of /build-credential-request

## Properties

| Name                        | Type                                                          | Description              | Notes      |
| --------------------------- | ------------------------------------------------------------- | ------------------------ | ---------- |
| **callback_url**            | **str**                                                       | Type of the URL          | [optional] |
| **credential_requirements** | [**List[CredentialRequirements]**](CredentialRequirements.md) | Requirements of the VC   |
| **issuer_did**              | **str**                                                       | Type of the DID          | [optional] |
| **subject_did**             | **str**                                                       | Type of the DID          | [optional] |
| **audience_did**            | **str**                                                       | Type of the DID          | [optional] |
| **expires_at**              | **str**                                                       | Type of the Date ISO     | [optional] |
| **nonce**                   | **str**                                                       | Credential request nonce | [optional] |

## Example

```python
from affinidi_tdk_client_ver.models.build_credential_request_input import BuildCredentialRequestInput

# TODO update the JSON string below
json = "{}"
# create an instance of BuildCredentialRequestInput from a JSON string
build_credential_request_input_instance = BuildCredentialRequestInput.from_json(json)
# print the JSON string representation of the object
print BuildCredentialRequestInput.to_json()

# convert the object into a dict
build_credential_request_input_dict = build_credential_request_input_instance.to_dict()
# create an instance of BuildCredentialRequestInput from a dict
build_credential_request_input_form_dict = build_credential_request_input.from_dict(build_credential_request_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
