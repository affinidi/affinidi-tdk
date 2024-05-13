# RevokeCredentialInput

## Properties

| Name                  | Type    | Description | Notes      |
| --------------------- | ------- | ----------- | ---------- |
| **revocation_reason** | **str** |             | [optional] |
| **credential_id**     | **str** |             | [optional] |

## Example

```python
from affinidi_tdk_wallets_client.models.revoke_credential_input import RevokeCredentialInput

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeCredentialInput from a JSON string
revoke_credential_input_instance = RevokeCredentialInput.from_json(json)
# print the JSON string representation of the object
print RevokeCredentialInput.to_json()

# convert the object into a dict
revoke_credential_input_dict = revoke_credential_input_instance.to_dict()
# create an instance of RevokeCredentialInput from a dict
revoke_credential_input_form_dict = revoke_credential_input.from_dict(revoke_credential_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
