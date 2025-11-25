# RevokeCredentialsInput

## Properties

| Name                  | Type    | Description | Notes      |
| --------------------- | ------- | ----------- | ---------- |
| **revocation_reason** | **str** |             | [optional] |
| **credential_id**     | **str** |             |

## Example

```python
from affinidi_tdk_wallets_client.models.revoke_credentials_input import RevokeCredentialsInput

# TODO update the JSON string below
json = "{}"
# create an instance of RevokeCredentialsInput from a JSON string
revoke_credentials_input_instance = RevokeCredentialsInput.from_json(json)
# print the JSON string representation of the object
print RevokeCredentialsInput.to_json()

# convert the object into a dict
revoke_credentials_input_dict = revoke_credentials_input_instance.to_dict()
# create an instance of RevokeCredentialsInput from a dict
revoke_credentials_input_from_dict = RevokeCredentialsInput.from_dict(revoke_credentials_input_dict)
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
