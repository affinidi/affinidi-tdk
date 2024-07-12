# CredentialResponseImmediate

## Properties

| Name                   | Type                                                                                            | Description                                                                               | Notes |
| ---------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----- |
| **credential**         | [**CredentialResponseImmediateCredential**](CredentialResponseImmediateCredential.md)           |                                                                                           |
| **c_nonce**            | **str**                                                                                         | String containing a nonce to be used when creating a proof of possession of the key proof |
| **c_nonce_expires_in** | [**CredentialResponseImmediateCNonceExpiresIn**](CredentialResponseImmediateCNonceExpiresIn.md) |                                                                                           |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_response_immediate import CredentialResponseImmediate

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialResponseImmediate from a JSON string
credential_response_immediate_instance = CredentialResponseImmediate.from_json(json)
# print the JSON string representation of the object
print CredentialResponseImmediate.to_json()

# convert the object into a dict
credential_response_immediate_dict = credential_response_immediate_instance.to_dict()
# create an instance of CredentialResponseImmediate from a dict
credential_response_immediate_form_dict = credential_response_immediate.from_dict(credential_response_immediate_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
