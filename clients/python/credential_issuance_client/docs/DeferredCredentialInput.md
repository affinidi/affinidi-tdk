# DeferredCredentialInput

## Properties

| Name               | Type    | Description                                                                                                                                                          | Notes |
| ------------------ | ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----- |
| **transaction_id** | **str** | String identifying a Deferred Issuance transaction. This claim is contained in the response if the Credential Issuer was unable to immediately issue the Credential. |

## Example

```python
from affinidi_tdk_credential_issuance_client.models.deferred_credential_input import DeferredCredentialInput

# TODO update the JSON string below
json = "{}"
# create an instance of DeferredCredentialInput from a JSON string
deferred_credential_input_instance = DeferredCredentialInput.from_json(json)
# print the JSON string representation of the object
print DeferredCredentialInput.to_json()

# convert the object into a dict
deferred_credential_input_dict = deferred_credential_input_instance.to_dict()
# create an instance of DeferredCredentialInput from a dict
deferred_credential_input_from_dict = DeferredCredentialInput.from_dict(deferred_credential_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
