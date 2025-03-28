# BatchCredentialInputCredentialRequestsInner

## Properties

| Name                      | Type                                      | Description                                                                       | Notes      |
| ------------------------- | ----------------------------------------- | --------------------------------------------------------------------------------- | ---------- |
| **credential_identifier** | **str**                                   | It is a String that identifies a Credential that is being requested to be issued. | [optional] |
| **proof**                 | [**CredentialProof**](CredentialProof.md) |                                                                                   |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.batch_credential_input_credential_requests_inner import BatchCredentialInputCredentialRequestsInner

# TODO update the JSON string below
json = "{}"
# create an instance of BatchCredentialInputCredentialRequestsInner from a JSON string
batch_credential_input_credential_requests_inner_instance = BatchCredentialInputCredentialRequestsInner.from_json(json)
# print the JSON string representation of the object
print BatchCredentialInputCredentialRequestsInner.to_json()

# convert the object into a dict
batch_credential_input_credential_requests_inner_dict = batch_credential_input_credential_requests_inner_instance.to_dict()
# create an instance of BatchCredentialInputCredentialRequestsInner from a dict
batch_credential_input_credential_requests_inner_from_dict = BatchCredentialInputCredentialRequestsInner.from_dict(batch_credential_input_credential_requests_inner_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
