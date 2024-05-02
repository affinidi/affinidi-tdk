# CredentialProof

Object containing the proof of possession of the cryptographic key material the issued Credential would be bound to.

## Properties

| Name           | Type    | Description                         | Notes |
| -------------- | ------- | ----------------------------------- | ----- |
| **proof_type** | **str** | String denoting the key proof type. |
| **jwt**        | **str** |                                     |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.credential_proof import CredentialProof

# TODO update the JSON string below
json = "{}"
# create an instance of CredentialProof from a JSON string
credential_proof_instance = CredentialProof.from_json(json)
# print the JSON string representation of the object
print CredentialProof.to_json()

# convert the object into a dict
credential_proof_dict = credential_proof_instance.to_dict()
# create an instance of CredentialProof from a dict
credential_proof_form_dict = credential_proof.from_dict(credential_proof_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
