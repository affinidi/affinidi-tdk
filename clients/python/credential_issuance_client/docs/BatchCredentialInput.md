# BatchCredentialInput

## Properties

| Name                    | Type                                                                                                    | Description                                     | Notes |
| ----------------------- | ------------------------------------------------------------------------------------------------------- | ----------------------------------------------- | ----- |
| **credential_requests** | [**List[BatchCredentialInputCredentialRequestsInner]**](BatchCredentialInputCredentialRequestsInner.md) | Array that contains Credential Request objects. |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.batch_credential_input import BatchCredentialInput

# TODO update the JSON string below
json = "{}"
# create an instance of BatchCredentialInput from a JSON string
batch_credential_input_instance = BatchCredentialInput.from_json(json)
# print the JSON string representation of the object
print BatchCredentialInput.to_json()

# convert the object into a dict
batch_credential_input_dict = batch_credential_input_instance.to_dict()
# create an instance of BatchCredentialInput from a dict
batch_credential_input_from_dict = BatchCredentialInput.from_dict(batch_credential_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
